<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/* * *****************Classes.php**********************************
 * @product name    : Global Multi School Management System Express
 * @type            : Class
 * @class name      : utilizations
 * @description     : Manage academic class.  
 * @author          : Codetroopers Team 	
 * @url             : https://themeforest.net/user/codetroopers      
 * @support         : yousuf361@gmail.com	
 * @copyright       : Codetroopers Team	 	
 * ********************************************************** */

class Utilizations extends MY_Controller {

    public $data = array();
    
    
    function __construct() {
        parent::__construct();
        $this->load->model('Utilizations_Model', 'utilizations', true);
       
    }

    
    /*****************Function index**********************************
     * @type            : Function
     * @function name   : index
     * @description     : load "class listing" in user interface
     *                       
     * @param           : null 
     * @return          : null 
     * ********************************************************** */
    public function index($school_id = null) {
        $this->output->delete_cache();
        check_permission(VIEW);
        $this->data['utilizations'] = $this->utilizations->get_utilizations_list($school_id);  
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['utilizations'] = $this->utilizations->get_list('utilizations', $condition, '','', '', 'id', 'ASC');
        }   
        
        $this->data['filter_school_id'] = $school_id;
        $this->data['schools'] = $this->schools;
        
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('manage_utilizations'). ' | ' . SMS);
        $this->layout->view('utilizations/index', $this->data);            
       
    }

     /*****************Function add**********************************
     * @type            : Function
     * @function name   : add
     * @description     : load "add new class" user interface and 
                          process to save "new class" into database
     *                       
     * @param           : null 
     * @return          : null 
     * ********************************************************** */
    public function add() {
        
        check_permission(ADD);
        if ($_POST) {
            $this->_prepare_class_validation();
            if ($this->form_validation->run() === TRUE) {
                $data = $this->_get_posted_class_data();
                $insert_id = $this->utilizations->insert('utilizations', $data);
                if ($insert_id) {                    
                    create_log('Has been created a utilizations :'.$data['name']);
                    
                    success($this->lang->line('insert_success'));
                    redirect('procurement/utilizations/index/'.$data['school_id']);
                } else {
                    error($this->lang->line('insert_failed'));
                    redirect('procurement/utilizations/add');
                }
            } else {
                error($this->lang->line('insert_failed'));
                $this->data['post'] = $_POST;
            }
        }

        $this->data['utilizations'] = $this->utilizations->get_utilizations_list();      
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['teachers'] = $this->utilizations->get_list('utilizations', $condition, '','', '', 'id', 'ASC');
        }        
        $this->data['schools'] = $this->schools;
        
        $this->data['add'] = TRUE;
        $this->layout->title($this->lang->line('add'). ' | ' . SMS );
        $this->layout->view('utilizations/index', $this->data);
    }

     /*****************Function edit**********************************
     * @type            : Function
     * @function name   : edit
     * @description     : load "update class" user interface and
                          process to update "class" into database 
     *                       
     * @param           : $id integetr value 
     * @return          : null 
     * ********************************************************** */
    public function edit($id = null) {       
       
        check_permission(EDIT);
        
        if(!is_numeric($id)){
            error($this->lang->line('unexpected_error'));
           redirect('procurement/utilizations/index');  
        }
        
        if ($_POST) {
            $this->_prepare_class_validation();
            if ($this->form_validation->run() === TRUE) {
                $data = $this->_get_posted_class_data();
                $updated = $this->utilizations->update('utilizations', $data, array('id' => $this->input->post('id')));

                if ($updated) {
                    
                    create_log('Has been updated a class :'.$data['name']);
                    
                    success($this->lang->line('update_success'));
                    redirect('procurement/utilizations/index/'.$data['school_id']);                   
                } else {
                    error($this->lang->line('update_failed'));
                    redirect('procurement/utilizations/edit/' . $this->input->post('id'));
                }
            } else {
                 error($this->lang->line('update_failed'));
                $this->data['utilizations'] = $this->utilizations->get_single('utilizations', array('id' => $this->input->post('id')));
            }
        }
        
        if ($id) {
            $this->data['utilizations'] = $this->utilizations->get_single('utilizations', array('id' => $id));

            if (!$this->data['utilizations']) {
                 redirect('procurement/utilizations/index');
            }
        }

        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['utilizations'] = $this->utilizations->get_list('utilizations', $condition, '','', '', 'id', 'ASC');
        } 
        
        $this->data['school_id'] = $this->data['utilizations']->school_id;
        $this->data['filter_school_id'] = $this->data['utilizations']->school_id;
        $this->data['schools'] = $this->schools;
        
        $this->data['edit'] = TRUE;       
        $this->layout->title($this->lang->line('edit').' | ' . SMS );
        $this->layout->view('utilizations/index', $this->data);
    }

    /*****************Function _prepare_class_validation**********************************
     * @type            : Function
     * @function name   : _prepare_class_validation
     * @description     : Process "class" user input data validation
     *                       
     * @param           : null 
     * @return          : null 
     * ********************************************************** */
    private function _prepare_class_validation() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error-message" style="color: red;">', '</div>');
        
        $this->form_validation->set_rules('school_id', $this->lang->line('school_name'), 'trim|required');   
        $this->form_validation->set_rules('category_id', $this->lang->line('category_id'), 'trim|required');   
        $this->form_validation->set_rules('item_id', $this->lang->line('item_id'), 'trim|required');     
        $this->form_validation->set_rules('qty', $this->lang->line('qty'), 'trim|required');      
        $this->form_validation->set_rules('issue_date', $this->lang->line('issue_date'), 'trim|required');      
        $this->form_validation->set_rules('issue_to', $this->lang->line('issue_to'), 'trim|required');      
    }
    

     /*****************Function _get_posted_class_data**********************************
     * @type            : Function
     * @function name   : _get_posted_class_data
     * @description     : Prepare "Class" user input data to save into database 
     *                       
     * @param           : null 
     * @return          : $data array() value 
     * ********************************************************** */
    private function _get_posted_class_data() {

        $utilizations = array();
        $utilizations[] = 'school_id';
        $utilizations[] = 'category_id';
        $utilizations[] = 'item_id'; 
        $utilizations[] = 'qty'; 
        $utilizations[] = 'issue_date'; 
        $utilizations[] = 'return_date'; 
        $utilizations[] = 'issue_to'; 
        $utilizations[] = 'note';
        $data = elements($utilizations, $_POST);        
        
        if ($this->input->post('id')) {
            $data['issue_by'] = logged_in_user_id();
            $data['modified_at'] = date('Y-m-d H:i:s');
            $data['modified_by'] = logged_in_user_id();
            $data['issue_date'] = date("Y-m-d", strtotime($data['issue_date']));
            $data['return_date'] ? $data['return_date'] = date("Y-m-d", strtotime($data['return_date'])) : '';
            
        } else {
            $data['status'] = 1;
            $data['issue_date'] = date("Y-m-d", strtotime($data['issue_date']));
            $data['return_date'] ? $data['return_date'] = date("Y-m-d", strtotime($data['return_date'])) : '';
            $data['issue_by'] = logged_in_user_id();
            $data['created_at'] = date('Y-m-d H:i:s');
            $data['created_by'] = logged_in_user_id();
        }       
        return $data;
    }

    
     /*****************Function delete**********************************
     * @type            : Function
     * @function name   : delete
     * @description     : delete "class" data from database
     *                       
     * @param           : $id integer value
     * @return          : null 
     * ********************************************************** */
    public function delete($id = null) {
        
        check_permission(DELETE);
        
        if(!is_numeric($id)){
             error($this->lang->line('unexpected_error'));
             redirect('procurement/utilizations/index');    
        }
        
        $utilizations = $this->utilizations->get_single('utilizations', array('id' => $id));
        
        if ($this->utilizations->delete('utilizations', array('id' => $id))) {

            create_log('Has been deleted a utilizations : '. $utilizations->name);            
            success($this->lang->line('delete_success'));
            
        } else {
            error($this->lang->line('delete_failed'));
        }
        redirect('procurement/utilizations/index/'.$utilizations->school_id);
    }
    
    /*****************Function __create_default_section**********************************
     * @type            : Function
     * @function name   : __create_default_section
     * @description     : create default section while create a new class
     *                       
     * @param           : $insert_id integer value
     * @return          : null 
     * ********************************************************** */

}
