<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/* * *****************Classes.php**********************************
 * @product name    : Global Multi School Management System Express
 * @type            : Class
 * @class name      : account
 * @description     : Manage academic class.  
 * @author          : Codetroopers Team 	
 * @url             : https://themeforest.net/user/codetroopers      
 * @support         : yousuf361@gmail.com	
 * @copyright       : Codetroopers Team	 	
 * ********************************************************** */

class Account extends MY_Controller {

    public $data = array();
    
    
    function __construct() {
        parent::__construct();
        $this->load->model('Account_Model', 'account', true);
        $this->load->model('Levels_Model', 'levels', true);
       
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
        $this->data['account'] = $this->account->get_account_list($school_id);  
        $this->data['levels'] = $this->levels->get_levels_list($school_id);  
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['account'] = $this->account->get_list('account', $condition, '','', '', 'id', 'ASC');
        }   
        
        $this->data['filter_school_id'] = $school_id;
        $this->data['schools'] = $this->schools;
        
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('manage_account'). ' | ' . SMS);
        $this->layout->view('account/index', $this->data);            
       
    }

    public function balanceSheet($school_id = null) {
        $this->output->delete_cache();
        check_permission(VIEW);
        $this->data['account'] = $this->account->get_account_list($school_id);  
        $this->data['levels'] = $this->levels->get_levels_list($school_id);  
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['account'] = $this->account->get_list('account', $condition, '','', '', 'id', 'ASC');
        }   
        
        $this->data['filter_school_id'] = $school_id;
        $this->data['schools'] = $this->schools;
        
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('manage_account'). ' | ' . SMS);
        $this->layout->view('account/balanceSheet', $this->data);            
       
    }

    public function bankPayment($school_id = null) {
        $this->output->delete_cache();
        check_permission(VIEW);
        $this->data['accounts'] = $this->account->get_account_list($school_id);  
        $this->data['levels'] = $this->levels->get_levels_list($school_id);  
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['account'] = $this->account->get_list('account', $condition, '','', '', 'id', 'ASC');
        }   
        
        $this->data['filter_school_id'] = $school_id;
        $this->data['schools'] = $this->schools;
        $this->data['voucher_no']  = $this->account->Spayment();
       // echo '<pre>'; print_r($this->data['accounts']); exit;
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('manage_account'). ' | ' . SMS);
        $this->layout->view('account/bankPayment', $this->data);            
       
    }
    

    public function create_bank_payment(){
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error-message" style="color: red;">', '</div>');
        // echo '<pre>'; print_r($_POST); exit;
        $this->form_validation->set_rules('txtCode', 'txtCode'  ,'max_length[100]');
        $this->form_validation->set_rules('paytype', 'paytype'  ,'required|max_length[2]');
        $this->form_validation->set_rules('txtCode', 'code'  ,'required|max_length[30]');
        $this->form_validation->set_rules('txtAmount', 'amount'  ,'required|max_length[30]');
        if ($this->form_validation->run()) { 
            if ($this->account->bank_payment_insert()) { 
                $array = array('status' => 'success', 'error' => '', 'message' => $this->lang->line('success_message'));
            }else{
                $array = array('status' => 'error', 'error' => '', 'message' => $this->lang->line('error_message'));
            }
        }else{
            $array = array('status' => 'exception', 'error' => '', 'message' => validation_errors());
        }
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('manage_account'). ' | ' . SMS);
        redirect('accounts/account/bankPayment');
    }

    public function bankRecieve($school_id = null) {
        $this->output->delete_cache();
        check_permission(VIEW);
        $this->data['accounts'] = $this->account->get_account_list($school_id);  
        $this->data['levels'] = $this->levels->get_levels_list($school_id);  
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['account'] = $this->account->get_list('account', $condition, '','', '', 'id', 'ASC');
        }   
        
        $this->data['filter_school_id'] = $school_id;
        $this->data['schools'] = $this->schools;
        $this->data['voucher_no']  = $this->account->Creceive();
        
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('manage_account'). ' | ' . SMS);
        $this->layout->view('account/bankRecieve', $this->data);            
       
    }

    public function create_bank_recieve(){
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error-message" style="color: red;">', '</div>');
        $this->form_validation->set_rules('txtCode', 'txtCode'  ,'max_length[100]');
        $this->form_validation->set_rules('paytype', 'paytype'  ,'required|max_length[2]');
        $this->form_validation->set_rules('txtCode', 'code'  ,'required|max_length[30]');
        $this->form_validation->set_rules('txtAmount', 'amount'  ,'required|max_length[30]');
        if ($this->form_validation->run()) { 
            if ($this->account->bank_recieve_insert()) { 
                $array = array('status' => 'success', 'error' => '', 'message' => $this->lang->line('success_message'));
            }else{
                $array = array('status' => 'error', 'error' => '', 'message' => $this->lang->line('error_message'));
            }
        }else{
            $array = array('status' => 'exception', 'error' => '', 'message' => validation_errors());
        }
        redirect('accounts/account/'.$_POST['txtpage']);
    }
    
    public function cashPayment($school_id = null) {
        $this->output->delete_cache();
        check_permission(VIEW);
        $this->data['accounts'] = $this->account->get_account_list($school_id);  
        $this->data['levels'] = $this->levels->get_levels_list($school_id);  
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['account'] = $this->account->get_list('account', $condition, '','', '', 'id', 'ASC');
        }   
        
        $this->data['filter_school_id'] = $school_id;
        $this->data['schools'] = $this->schools;
        $this->data['voucher_no']  = $this->account->CPayment();
        
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('manage_account'). ' | ' . SMS);
        $this->layout->view('account/cashPayment', $this->data);            
       
    }

    public function cashRecipt($school_id = null) {
        $this->output->delete_cache();
        check_permission(VIEW);
        $this->data['accounts'] = $this->account->get_account_list($school_id);  
        $this->data['levels'] = $this->levels->get_levels_list($school_id);  
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['account'] = $this->account->get_list('account', $condition, '','', '', 'id', 'ASC');
        }   
        
        $this->data['filter_school_id'] = $school_id;
        $this->data['schools'] = $this->schools;
        $this->data['voucher_no']  = $this->account->Creceipt();
        
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('manage_account'). ' | ' . SMS);
        $this->layout->view('account/cashRecipt', $this->data);            
       
    }
    
    public function journalVoucher($school_id = null) {
        $this->output->delete_cache();
        check_permission(VIEW);
        //echo $this->session->userdata('school_id'); exit;
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['account'] = $this->account->get_list('account', $condition, '','', '', 'id', 'ASC');
        }   
        
        $this->data['filter_school_id'] = $school_id;
        $this->data['schools'] = $this->schools;
        $this->data['voucher_no']  = $this->account->Creceipt();
        $school_id = $this->data['schools'][0]->id;
        $this->data['transactionslist'] = $this->account->get_all_transaction($school_id);  
        $this->data['levels'] = $this->levels->get_levels_list($school_id);  
        
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('manage_account'). ' | ' . SMS);
        $this->layout->view('account/journalVoucher', $this->data);            
       
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
                // echo '<pre>'; print_r($data);exit;

                $insert_id = $this->account->insert('accounts', $data);
                // echo '<pre>'; print_r($insert_id);exit;

                if ($insert_id) {                    
                    create_log('Has been created a account :'.$data['name']);
                    
                    success($this->lang->line('insert_success'));
                    redirect('accounts/account/index/'.$data['school_id']);
                } else {
                    error($this->lang->line('insert_failed'));
                    redirect('accounts/account/add');
                }
            } else {
                error($this->lang->line('insert_failed'));
                $this->data['post'] = $_POST;
            }
        }

        $this->data['account'] = $this->account->get_account_list();      
        $this->data['levels'] = $this->levels->get_levels_list($school_id);  
        
        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['teachers'] = $this->account->get_list('accounts', $condition, '','', '', 'id', 'ASC');
        }        
        $this->data['schools'] = $this->schools;
        
        $this->data['add'] = TRUE;
        $this->layout->title($this->lang->line('add'). ' | ' . SMS );
        $this->layout->view('accounts/account/index', $this->data);
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
           redirect('accounts/account/index');  
        }
        
        if ($_POST) {
            $this->_prepare_class_validation();
            if ($this->form_validation->run() === TRUE) {
                $data = $this->_get_posted_class_data();
                $updated = $this->account->update('accounts', $data, array('id' => $this->input->post('id')));

                if ($updated) {
                    
                    create_log('Has been updated a class :'.$data['name']);
                    
                    success($this->lang->line('update_success'));
                    redirect('accounts/account/index/'.$data['school_id']);                   
                } else {
                    error($this->lang->line('update_failed'));
                    redirect('accounts/account/edit/' . $this->input->post('id'));
                }
            } else {
                 error($this->lang->line('update_failed'));
                $this->data['account'] = $this->account->get_single('accounts', array('id' => $this->input->post('id')));
            }
        }
        
        if ($id) {
            $this->data['account'] = $this->account->get_single('accounts', array('id' => $id));

            if (!$this->data['account']) {
                 redirect('accounts/account/index');
            }
        }

        $condition = array();
        $condition['status'] = 1;        
        if($this->session->userdata('role_id') != SUPER_ADMIN){            
            $condition['school_id'] = $this->session->userdata('school_id');        
            $this->data['account'] = $this->account->get_list('accounts', $condition, '','', '', 'id', 'ASC');
        } 
        
        $this->data['levels'] = $this->levels->get_levels_list($school_id);  
        $this->data['school_id'] = $this->data['account']->school_id;
        $this->data['filter_school_id'] = $this->data['account']->school_id;
        $this->data['schools'] = $this->schools;
        
        // echo '<pre>'; print_r($this->data['account']); exit;
        $this->data['edit'] = TRUE;       
        $this->layout->title($this->lang->line('edit').' | ' . SMS );
        $this->layout->view('account/index', $this->data);
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
        // $this->form_validation->set_rules('level_id', $this->lang->line('level_id'), 'trim|required');   
        // $this->form_validation->set_rules('name', $this->lang->line('name'), 'trim|required|callback_name');
        // $this->form_validation->set_rules('account_no', $this->lang->line('account_no'), 'trim|required|callback_name');
        // $this->form_validation->set_rules('account_type', $this->lang->line('account_type'), 'trim|required|callback_name');
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
          $name = $this->account->duplicate_check($this->input->post('school_id'), $this->input->post('name')); 
          if($name){
                $this->form_validation->set_message('name', $this->lang->line('already_exist'));         
                return FALSE;
          } else {
              return TRUE;
          }          
      }else if($this->input->post('id') != ''){   
         $name = $this->account->duplicate_check($this->input->post('school_id'), $this->input->post('name'), $this->input->post('id')); 
          if($name){
                $this->form_validation->set_message('name', $this->lang->line('already_exist'));         
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

        $accounts = array();
        $accounts[] = 'school_id';
        $accounts[] = 'level_id';
        $accounts[] = 'bank_id';
        $accounts[] = 'name';
        $accounts[] = 'account_no';
        $accounts[] = 'account_type';
        $accounts[] = 'note';
        $data = elements($accounts, $_POST);        
        
        if ($this->input->post('id')) {
            $data['modified_at'] = date('Y-m-d H:i:s');
            $data['modified_by'] = logged_in_user_id();
        } else { 
            $data['balance'] = 0;
            $data['adate'] = date('Y-m-d');
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
             redirect('accounts/account/index');    
        }
        
        $account = $this->account->get_single('account', array('id' => $id));
        
        if ($this->account->delete('account', array('id' => $id))) {

            create_log('Has been deleted a account : '. $account->name);            
            success($this->lang->line('delete_success'));
            
        } else {
            error($this->lang->line('delete_failed'));
        }
        redirect('accounts/account/index/'.$account->school_id);
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
