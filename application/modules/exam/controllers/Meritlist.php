<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/* * *****************Meritlist.php**********************************
 * @product name    : Global Multi School Management System Express
 * @type            : Class
 * @class name      : Meritlist
 * @description     : Manage exam merit list.  
 * @author          : Codetroopers Team 	
 * @url             : https://themeforest.net/user/codetroopers      
 * @support         : yousuf361@gmail.com	
 * @copyright       : Codetroopers Team	 	
 * ********************************************************** */

class Meritlist extends MY_Controller {

    public $data = array();

    function __construct() {
        parent::__construct();
        $this->load->model('Meritlist_Model', 'merit', true);        
    }

    
        
    /*****************Function index**********************************
    * @type            : Function
    * @function name   : index
    * @description     : Load "Exam final result sheet" user interface                 
    *                    with class/section wise filtering option    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function index() {

        check_permission(VIEW);

        if ($_POST) {
           
            $school_id = $this->input->post('school_id');
            $academic_year_id = $this->input->post('academic_year_id');
            $class_id = $this->input->post('class_id');
            $section_id = $this->input->post('section_id');
           
            $this->data['school_id'] = $school_id;
            $this->data['academic_year_id'] = $academic_year_id;
            $this->data['class_id'] = $class_id;         
            $this->data['section_id'] = $section_id; 
            
            $school = $this->merit->get_school_by_id($school_id);
            if(!$school->academic_year_id){
                error($this->lang->line('set_academic_year_for_school'));
                redirect('exam/meritlist');
            }
            

            $this->data['class'] = $this->db->get_where('classes', array('id'=>$class_id))->row()->name;
            if($section_id){
                $this->data['section'] = $this->db->get_where('sections', array('id'=>$section_id))->row()->name;
            }
            
            $this->data['academic_year'] = $this->db->get_where('academic_years', array('id'=>$academic_year_id))->row()->session_year;
            $this->data['examresult'] = $this->merit->get_merit_list($school_id, $academic_year_id, $class_id, $section_id);
            $this->data['school'] = $this->merit->get_school_by_id($school_id);
        }
        
        
        $condition = array();
        $condition['status'] = 1;  
        
        if($this->session->userdata('role_id') != SUPER_ADMIN){
            
            $school = $this->merit->get_school_by_id($this->session->userdata('school_id'));
            $condition['school_id'] = $this->session->userdata('school_id');
            $this->data['academic_years'] = $this->merit->get_list('academic_years',$condition, '', '', '', 'id', 'ASC');
            
            $this->data['classes'] = $this->merit->get_list('classes', $condition, '','', '', 'id', 'ASC');
            $condition['academic_year_id'] = $school->academic_year_id;
            $this->data['exams'] = $this->merit->get_list('exams', $condition, '', '', '', 'id', 'ASC');
        }
        
        
        
        $this->layout->title($this->lang->line('manage_merit_list') . ' | ' . SMS);
        $this->layout->view('merit_list/index', $this->data);
        
    }
}