<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Account_Model extends MY_Model {
    
    function __construct() {
        parent::__construct();
    }
    
     public function get_account_list($school_id = null){
        
        $this->db->select('C.*,S.school_name, L.level_name');
        $this->db->from('accounts AS C');
        $this->db->join('schools AS S', 'S.id = C.school_id', 'left'); 
        $this->db->join('levels AS L', 'L.id = C.level_id', 'left'); 
        
        if($this->session->userdata('role_id') != SUPER_ADMIN){
            $this->db->where('C.school_id', $this->session->userdata('school_id'));
        }
        
        if($this->session->userdata('role_id') == SUPER_ADMIN && $school_id){
            $this->db->where('C.school_id', $school_id);
        }
         
        
        return $this->db->get()->result();
        
    }
    

    
    function duplicate_check($school_id, $name, $id = null ){           
           
        if($id){
            $this->db->where_not_in('id', $id);
        }
        $this->db->where('name', $name);
        $this->db->where('school_id', $school_id);
        return $this->db->get('accounts')->num_rows();            
    }

    public function get($id = null)
    {
        $this->db->select('accounts.*');
        $this->db->from('accounts'); 
        $this->db->where('accounts.id', $id);
        $query = $this->db->get();
        // echo '<pre>'; print_r($this->db->last_query());exit;
        return $query->row_array();
    }


    public function Spayment()
    {
        $data = $this->db->select("VNo as voucher")
            ->from('acc_transaction') 
            ->like('VNo', 'BM-', 'after')
            ->order_by('ID','desc')
            ->get()
            ->result_array();
        // echo '<pre>'; print_r($this->db->last_query()); exit;
        return $data;
    }
    
    public function Creceive()
    {
      return  $data = $this->db->select("VNo as voucher")
            ->from('acc_transaction') 
            ->like('VNo', 'BR-', 'after')
            ->order_by('ID','desc')
            ->get()
            ->result_array();
           
    }

    public function CPayment()
    {
      return  $data = $this->db->select("VNo as voucher")
            ->from('acc_transaction') 
            ->like('VNo', 'CP-', 'after')
            ->order_by('ID','desc')
            ->get()
            ->result_array();
           
    }

    public function Creceipt()
    {
      return  $data = $this->db->select("VNo as voucher")
            ->from('acc_transaction') 
            ->like('VNo', 'CR-', 'after')
            ->order_by('ID','desc')
            ->get()
            ->result_array();
           
    }
    
    public function bank_payment_insert(){

        $from_bank = $this->get($_POST['from_bank_id']);
        $to_bank = $this->get($_POST['to_bank_id']);
        $cc = array(
            'VNo'            =>  $_POST['txtVNo'], 
            'VDate'          =>  $_POST['dtpDate'],
            'school_id'      =>  $_POST['school_id'],
            'account_id'     =>  $_POST['from_bank_id'],
            'account_no'     =>  $_POST['fromtxtCode'],
            'Narration'      =>  $_POST['txtRemarks'],
            'paytype'        =>  $_POST['paytype'],
            'Debit'          =>  0,
            'Credit'         =>  $_POST['txtAmount'],
            'CreateBy'       =>  1,
            'CreateDate'     =>  date('Y-m-d H:i:s'),
        );  
        
        $bankc = array(
            'VNo'            =>  $_POST['txtVNo'], 
            'VDate'          =>  $_POST['dtpDate'],
            'school_id'      =>  $_POST['school_id'],
            'account_id'     =>  $_POST['to_bank_id'],
            'account_no'     =>  $_POST['txtCode'],
            'Narration'      =>  $_POST['txtRemarks'],
            'paytype'        =>  $_POST['paytype'],
            'Debit'          =>  $_POST['txtAmount'],
            'Credit'         =>  0,
            'CreateBy'       =>  1,
            'CreateDate'     =>  date('Y-m-d H:i:s'),
        );              
        if($this->input->post('paytype',TRUE) == 2){
            $this->db->insert('acc_transaction',$bankc); 
        }
        if($this->input->post('paytype',TRUE) == 2){
            $this->db->insert('acc_transaction',$cc);
        }

        $data['balance'] = $from_bank['balance'] - $_POST['txtAmount'];
        $data1['balance'] = $to_bank['balance'] + $_POST['txtAmount'];
        // echo '<pre>'; print_r($data); exit;
        
        $this->db->where('id', $from_bank['id']); 
        $this->db->update('accounts', $data);
        
        $this->db->where('id', $to_bank['id']);
        $this->db->update('accounts', $data1);
        

        return true;
    }

    public function bank_recieve_insert(){

        if($_POST['from_bank_id']){
            $from_bank = $this->get($_POST['from_bank_id']);

            $cc = array(
                'VNo'            =>  $_POST['txtVNo'], 
                'VDate'          =>  $_POST['dtpDate'],
                'school_id'      =>  $_POST['school_id'],
                'account_id'     =>  $_POST['from_bank_id'],
                'account_no'     =>  $_POST['fromtxtCode'],
                'Narration'      =>  $_POST['txtRemarks'],
                'paytype'        =>  $_POST['paytype'],
                'Debit'          =>  0,
                'Credit'         =>  $_POST['txtAmount'],
                'CreateBy'       =>  1,
                'CreateDate'     =>  date('Y-m-d H:i:s'),
            );   
            $this->db->insert('acc_transaction',$cc); 
            

            $data['balance'] = $from_bank['balance'] - $_POST['txtAmount'];
            $this->db->where('id', $from_bank['id']);
            $this->db->update('accounts', $data);
        
        }

        if($_POST['to_bank_id']){
            $to_bank = $this->get($_POST['to_bank_id']);
            // echo '<pre>'; print_r($to_bank); exit;

            $bankc = array(
                'VNo'            =>  $_POST['txtVNo'], 
                'VDate'          =>  $_POST['dtpDate'],
                'school_id'      =>  $_POST['school_id'],
                'account_id'     =>  $_POST['to_bank_id'],
                'account_no'     =>  $_POST['txtCode'],
                'Narration'      =>  $_POST['txtRemarks'],
                'paytype'        =>  $_POST['paytype'],
                'Debit'          =>  $_POST['txtAmount'],
                'Credit'         =>  0,
                'CreateBy'       =>  1,
                'CreateDate'     =>  date('Y-m-d H:i:s'),
            );              
            // echo '<pre>'; print_r($data); exit;
             
            $this->db->insert('acc_transaction',$bankc);
           
            $data1['balance'] = $to_bank['balance'] + $_POST['txtAmount'];
            // echo '<pre>'; print_r($data); exit;
            $this->db->where('id', $to_bank['id']);
            $this->db->update('accounts', $data1);
        }

        return true;
    }


    public function get_all_transaction($school_id = NULL){
        $this->db->select('acc_transaction.*, acc.name');
        $this->db->from('acc_transaction');
        $this->db->join('accounts as acc','acc.id = acc_transaction.account_id','left');
        if($school_id){
            $this->db->where('acc_transaction.school_id',$school_id);
        }
        $this->db->order_by('ID','desc');
        $result = $this->db->get()->result_array();
        // echo '<pre>'; print_r($this->db->last_query());exit;
        return $result;
    }
}
