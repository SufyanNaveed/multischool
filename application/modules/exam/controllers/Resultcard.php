<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/* * *****************Marksheet.php**********************************
 * @product name    : Global Multi School Management System Express
 * @type            : Class
 * @class name      : Marksheet
 * @description     : Manage exam resultcard sheet.  
 * @author          : Codetroopers Team 	
 * @url             : https://themeforest.net/user/codetroopers      
 * @support         : yousuf361@gmail.com	
 * @copyright       : Codetroopers Team	 	
 * ********************************************************** */

class Resultcard extends MY_Controller {

    public $data = array();

    function __construct() {
        parent::__construct();
        $this->load->model('Resultcard_Model', 'resultcard', true);
    }

    
    /*****************Function index**********************************
    * @type            : Function
    * @function name   : index
    * @description     : Load "result card" user interface                 
    *                    with data filter option
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function index() {

        check_permission(VIEW);

        if ($_POST) {

            if($this->session->userdata('role_id') == STUDENT){
                
                $student = get_user_by_role($this->session->userdata('role_id'), $this->session->userdata('id'));
                
                $school_id = $student->school_id;
                $class_id = $student->class_id;
                $section_id = $student->section_id;
                $student_id = $student->id;
                
            }else{
                
                $school_id = $this->input->post('school_id');
                $class_id = $this->input->post('class_id');
                $section_id = $this->input->post('section_id');
                $student_id = $this->input->post('student_id');
                
                $std = $this->resultcard->get_single('students', array('id'=>$student_id));
                $student = get_user_by_role(STUDENT, $std->user_id);
            }
            
            $school = $this->resultcard->get_school_by_id($school_id);
            $academic_year_id = $this->input->post('academic_year_id');
            $this->data['exams'] = $this->resultcard->get_list('exams', array('school_id'=>$school_id, 'status' => 1, 'academic_year_id' => $academic_year_id), '', '', '', 'id', 'ASC');
           
            $this->data['school'] = $school;
            $this->data['school_id'] = $school_id;
            $this->data['academic_year_id'] = $academic_year_id;
            $this->data['student'] = $student;
            $this->data['class_id'] = $class_id;
            $this->data['section_id'] = $section_id;
            $this->data['student_id'] = $student_id;
            $this->data['final_result'] = $this->resultcard->get_final_result($school_id, $academic_year_id, $class_id, $section_id, $student_id);
            
            $class = $this->resultcard->get_single('classes', array('id'=>$class_id));
            create_log('Has been filter result card for class: '. $class->name. ', '. $this->data['student']->name );
        }
        
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){ 
            
            $condition['school_id'] = $this->session->userdata('school_id');            
            $this->data['classes'] = $this->resultcard->get_list('classes', $condition, '','', '', 'id', 'ASC');
            $this->data['academic_years'] = $this->resultcard->get_list('academic_years', $condition, '', '', '', 'id', 'ASC');
        }

        $this->layout->title($this->lang->line('manage_result_card') . ' | ' . SMS);
        $this->layout->view('result_card/index', $this->data);
    }
    
    public function all() {

        check_permission(VIEW);

        if ($_POST) {

                
            $school_id = $this->input->post('school_id');
            $class_id = $this->input->post('class_id');
            $section_id = $this->input->post('section_id');
                        
            $school = $this->resultcard->get_school_by_id($school_id);
            $academic_year_id = $this->input->post('academic_year_id');
            
            $students = $this->resultcard->get_student_list($school_id, $class_id, $section_id, $academic_year_id);
            $this->data['exams']    = $this->resultcard->get_list('exams', array('school_id'=>$school_id, 'status' => 1, 'academic_year_id' => $academic_year_id), '', '', '', 'id', 'ASC');
           
            $this->data['school'] = $school;
            $this->data['school_id'] = $school_id;
            $this->data['academic_year_id'] = $academic_year_id;
            $this->data['students'] = $students;
            $this->data['class_id'] = $class_id;
            $this->data['section_id'] = $section_id;
            
            $class = $this->resultcard->get_single('classes', array('id'=>$class_id));
            create_log('Has been filter result card for class: '. $class->name );
        }
        
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){ 
            
            $condition['school_id'] = $this->session->userdata('school_id');            
            $this->data['classes'] = $this->resultcard->get_list('classes', $condition, '','', '', 'id', 'ASC');
            $this->data['academic_years'] = $this->resultcard->get_list('academic_years', $condition, '', '', '', 'id', 'ASC');
        }

        $this->layout->title($this->lang->line('manage_all_result_card') . ' | ' . SMS);
        $this->layout->view('result_card/all', $this->data);
        
    }

}
