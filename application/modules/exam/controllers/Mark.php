<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/* * *****************Mark.php**********************************
 * @product name    : Global Multi School Management System Express
 * @type            : Class
 * @class name      : Mark
 * @description     : Manage exam mark for student whose are attend in the exam.  
 * @author          : Codetroopers Team 	
 * @url             : https://themeforest.net/user/codetroopers      
 * @support         : yousuf361@gmail.com	
 * @copyright       : Codetroopers Team	 	
 * ********************************************************** */

class Mark extends MY_Controller {

    public $data = array();

    function __construct() {
        parent::__construct();
        $this->load->model('Mark_Model', 'mark', true);        
    }

    
    /*****************Function index**********************************
    * @type            : Function
    * @function name   : index
    * @description     : Load "Exam Mark List" user interface                 
    *                    with filter option  
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function index() {

        check_permission(VIEW);

        if ($_POST) {

            $school_id = $this->input->post('school_id');
            $exam_id = $this->input->post('exam_id');
            $class_id = $this->input->post('class_id');
            $section_id = $this->input->post('section_id');
            $subject_id = $this->input->post('subject_id');

            $school = $this->mark->get_school_by_id($school_id);
            if(!$school->academic_year_id){
                error($this->lang->line('set_academic_year_for_school'));
                redirect('exam/mark');
            }
            
            $this->data['students'] = $this->mark->get_student_list($school_id, $exam_id, $class_id, $section_id, $subject_id, $school->academic_year_id);

            $condition = array(
                'school_id' => $school_id,
                'exam_id' => $exam_id,
                'class_id' => $class_id,
                'academic_year_id' => $school->academic_year_id,
                'subject_id' => $subject_id
            );
            
            if($section_id){
                $condition['section_id'] = $section_id;
            }

            $data = $condition;
            
            if (!empty($this->data['students'])) {

                foreach ($this->data['students'] as $obj) {

                    $condition['student_id'] = $obj->student_id;
                    $mark = $this->mark->get_single('marks', $condition);

                    if (empty($mark)) {
                        
                        $data['section_id'] = $obj->section_id;
                        $data['student_id'] = $obj->student_id;
                        $data['status'] = 1;
                        $data['created_at'] = date('Y-m-d H:i:s');
                        $data['created_by'] = logged_in_user_id();
                        $this->mark->insert('marks', $data);
                    }
                }
            }

            $this->data['grades'] = $this->mark->get_list('grades', array('status' => 1, 'school_id'=>$school_id), '', '', '', 'id', 'ASC');
            
            $this->data['school_id'] = $school_id;
            $this->data['exam_id'] = $exam_id;
            $this->data['class_id'] = $class_id;
            $this->data['section_id'] = $section_id;
            $this->data['subject_id'] = $subject_id;
            $this->data['academic_year_id'] = $school->academic_year_id;
                        
            $class = $this->mark->get_single('classes', array('id'=>$class_id));
            create_log('Has been process exam mark for class: '. $class->name);
            
        }
        
        
        $condition = array();
        $condition['status'] = 1;  
        
        if($this->session->userdata('role_id') != SUPER_ADMIN){
            $school = $this->mark->get_school_by_id($this->session->userdata('school_id'));
            $condition['school_id'] = $this->session->userdata('school_id');
            $this->data['classes'] = $this->mark->get_list('classes', $condition, '','', '', 'id', 'ASC');
            $condition['academic_year_id'] = $school->academic_year_id;
            $this->data['exams'] = $this->mark->get_list('exams', $condition, '', '', '', 'id', 'ASC');
        }  

        $this->layout->title($this->lang->line('manage_mark') . ' | ' . SMS);
        $this->layout->view('mark/index', $this->data);
    }

    
    /*****************Function add**********************************
    * @type            : Function
    * @function name   : add
    * @description     : Process to store "Exam Mark" into database                
    *                     
    * @param           : null
    * @return          : null 
     * ********************************************************** */
    public function add() {

        check_permission(ADD);

        if ($_POST) {

            $school_id = $this->input->post('school_id');
            $exam_id = $this->input->post('exam_id');
            $class_id = $this->input->post('class_id');
            $section_id = $this->input->post('section_id');
            $subject_id = $this->input->post('subject_id');

            $school = $this->mark->get_school_by_id($school_id);
            if(!$school->academic_year_id){
                error($this->lang->line('set_academic_year_for_school'));
                redirect('exam/mark');
            }
            
            $condition = array(
                'school_id' => $school_id,
                'exam_id' => $exam_id,
                'class_id' => $class_id,
                'academic_year_id' => $school->academic_year_id,
                'subject_id' => $subject_id
            );
            
            if($section_id){
                $condition['section_id'] = $section_id;
            }            

            $data = $condition;

            if (!empty($_POST['students'])) {

                foreach ($_POST['students'] as $key => $value) {

                    $condition['student_id'] = $value;
                    $data['written_mark'] = $_POST['written_mark'][$value];
                    $data['written_obtain'] = $_POST['written_obtain'][$value];
                    
                    $data['tutorial_mark'] = $_POST['tutorial_mark'][$value];
                    $data['tutorial_obtain'] = $_POST['tutorial_obtain'][$value];
                    
                    $data['practical_mark'] = $_POST['practical_mark'][$value];
                    $data['practical_obtain'] = $_POST['practical_obtain'][$value];
                    
                    $data['viva_mark'] = $_POST['viva_mark'][$value];
                    $data['viva_obtain'] = $_POST['viva_obtain'][$value];
                    
                    $data['exam_total_mark'] = $_POST['exam_total_mark'][$value];
                    $data['obtain_total_mark'] = $_POST['obtain_total_mark'][$value];
                    
                    $data['grade_id'] = $_POST['grade_id'][$value];                    
                    $data['remark'] = $_POST['remark'][$value];
                    
                    $data['status'] = 1;
                    $data['created_at'] = date('Y-m-d H:i:s');
                    $data['created_by'] = logged_in_user_id();
                    $this->mark->update('marks', $data, $condition);
                }
            }
            
            $class = $this->mark->get_single('classes', array('id'=>$class_id));
            create_log('Has been process exam mark and save for class: '. $class->name);
            
            success($this->lang->line('insert_success'));
            redirect('exam/mark');
        }

        $this->layout->title($this->lang->line('add')  . ' | ' . SMS);
        $this->layout->view('mark/index', $this->data);
    }

}
