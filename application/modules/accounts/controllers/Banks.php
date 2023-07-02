<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/* * *****************Classes.php**********************************
 * @product name    : Global Multi School Management System Express
 * @type            : Class
 * @class name      : Banks
 * @description     : Manage academic class.  
 * @author          : Codetroopers Team 	
 * @url             : https://themeforest.net/user/codetroopers      
 * @support         : yousuf361@gmail.com	
 * @copyright       : Codetroopers Team	 	
 * ********************************************************** */

class Banks extends MY_Controller {

    public $data = array();
    
    
    function __construct() {
        parent::__construct();
        $this->load->model('Bank_Model', 'banks', true);
       
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
        $this->data['banks'] = $this->banks->get_banks_list($school_id);  
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['banks'] = $this->banks->get_list('banks', $condition, '','', '', 'id', 'ASC');
        }   
        
        $this->data['filter_school_id'] = $school_id;
        $this->data['schools'] = $this->schools;
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('manage_banks'). ' | ' . SMS);
        $this->layout->view('accounts/banks/index', $this->data);            
       
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
                $insert_id = $this->banks->insert('banks', $data);
                if ($insert_id) {                    
                    create_log('Has been created a banks :'.$data['name']);
                    
                    success($this->lang->line('insert_success'));
                    redirect('accounts/banks/index/'.$data['school_id']);
                } else {
                    error($this->lang->line('insert_failed'));
                    redirect('accounts/banks/add');
                }
            } else {
                error($this->lang->line('insert_failed'));
                $this->data['post'] = $_POST;
            }
        }

        $this->data['banks'] = $this->banks->get_banks_list();      
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
        }        
        $this->data['schools'] = $this->schools;
        
        $this->data['add'] = TRUE;
        $this->layout->title($this->lang->line('add'). ' | ' . SMS );
        $this->layout->view('accounts/banks/index', $this->data);
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
           redirect('accounts/banks/index');  
        }
        
        if ($_POST) {
            $this->_prepare_class_validation();
            if ($this->form_validation->run() === TRUE) {
                $data = $this->_get_posted_class_data();
                $updated = $this->banks->update('banks', $data, array('id' => $this->input->post('id')));
                
                if ($updated) {
                    
                    create_log('Has been updated a class :'.$data['name']);
                    
                    success($this->lang->line('update_success'));
                    redirect('accounts/banks/index/'.$data['school_id']);                   
                } else {
                    error($this->lang->line('update_failed'));
                    redirect('accounts/banks/edit/' . $this->input->post('id'));
                }
            } else {
                 error($this->lang->line('update_failed'));
                $this->data['single_bank'] = $this->banks->get_single('banks', array('id' => $this->input->post('id')));
            }
        }
        
        if ($id) {
            $this->data['single_bank'] = $this->banks->get_single('banks', array('id' => $id));

            if (!$this->data['single_bank']) {
                 redirect('accounts/banks/index');
            }
        }

        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['banks'] = $this->banks->get_list('banks', $condition, '','', '', 'id', 'ASC');
        } 
        $this->data['banks'] = $this->banks->get_banks_list();      
        
        $this->data['school_id'] = $this->data['single_bank']->school_id;
        $this->data['filter_school_id'] = $this->data['single_bank']->school_id;
        $this->data['schools'] = $this->schools;
        
        $this->data['edit'] = TRUE;       
        $this->layout->title($this->lang->line('edit').' | ' . SMS );
        $this->layout->view('banks/index', $this->data);
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
        $this->form_validation->set_rules('bank_name', $this->lang->line('bank_name'), 'trim|required|callback_name');
    }
    
    /*****************Function name**********************************
     * @type            : Function
     * @function name   : name
     * @description     : unique check for "Class name"
     *                       
     * @param           : null 
     * @return          : boolean true/flase 
     * ********************************************************** */
    public function name()
   {             
      if($this->input->post('id') == '')
      {   
          $name = $this->banks->duplicate_check($this->input->post('school_id'), $this->input->post('bank_name')); 
          if($name){
                $this->form_validation->set_message('bank_name', $this->lang->line('already_exist'));         
                return FALSE;
          } else {
              return TRUE;
          }          
      }else if($this->input->post('id') != ''){   
         $name = $this->banks->duplicate_check($this->input->post('school_id'), $this->input->post('bank_name'), $this->input->post('id')); 
          if($name){
                $this->form_validation->set_message('bank_name', $this->lang->line('already_exist'));         
                return FALSE;
          } else {
              return TRUE;
          }
      }   
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

        $items = array();
        $items[] = 'school_id';
        $items[] = 'bank_name'; 
        $data = elements($items, $_POST);        
        
        if ($this->input->post('id')) {
            $data['modified_at'] = date('Y-m-d H:i:s');
            $data['modified_by'] = logged_in_user_id();
        } else {
            $data['status'] = 1;
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
             redirect('accounts/banks/index');    
        }
        
        $banks = $this->banks->get_single('banks', array('id' => $id));
        
        if ($this->banks->delete('banks', array('id' => $id))) {

            create_log('Has been deleted a banks : '. $banks->name);            
            success($this->lang->line('delete_success'));
            
        } else {
            error($this->lang->line('delete_failed'));
        }
        redirect('accounts/banks/index/'.$banks->school_id);
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
