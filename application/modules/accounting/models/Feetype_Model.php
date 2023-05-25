<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Feetype_Model extends MY_Model {
    
    function __construct() {
        parent::__construct();
    }
     
    public function get_fee_type($school_id = null){
        
        $this->db->select('IH.*, S.school_name, FA.class_id, FA.section_id, C.name as program, sec.name as session');
        $this->db->from('income_heads AS IH'); 
        $this->db->join('schools AS S', 'S.id = IH.school_id', 'left');
        $this->db->join('fees_amount AS FA', 'FA.income_head_id = IH.id', 'left'); 
        $this->db->join('classes AS C', 'C.id = FA.class_id', 'left');
        $this->db->join('sections AS sec', 'sec.id = FA.section_id', 'left');
        $this->db->where('IH.head_type !=', 'income'); 
        //$this->db->or_where('IH.head_type', 'hostel'); 
        //$this->db->or_where('IH.head_type', 'transport'); 
       
        if($this->session->userdata('role_id') != SUPER_ADMIN){
            $this->db->where('IH.school_id', $this->session->userdata('school_id'));
        } 
        if($this->session->userdata('role_id') == SUPER_ADMIN && $school_id){
            $this->db->where('IH.school_id', $school_id);
        }
        $this->db->where('S.status', 1);
        $this->db->order_by('IH.id', 'DESC');
        
        $query =  $this->db->get();
        // echo '<pre>'; print_r($this->db->last_query()); exit;  
        return $query->result();  
    }
    
    public function get_single_feetype($feetype_id){
        
        $this->db->select('IH.*, S.school_name, FA.id as fee_amount_id, FA.class_id, FA.section_id, FA.fee_amount, C.name as program, sec.name as session');
        $this->db->from('income_heads AS IH'); 
        $this->db->join('schools AS S', 'S.id = IH.school_id', 'left'); 
        $this->db->join('fees_amount AS FA', 'FA.income_head_id = IH.id', 'left'); 
        $this->db->join('classes AS C', 'C.id = FA.class_id', 'left');
        $this->db->join('sections AS sec', 'sec.id = FA.section_id', 'left');       
        $this->db->where('IH.id', $feetype_id);
        $query =  $this->db->get();
        // echo '<pre>'; print_r($this->db->last_query()); exit;  
        return $query->row();
    }
    
            
    function duplicate_check($school_id, $title,$id = null , $class_id, $section_id){           
           
        $this->db->join('fees_amount AS FA', 'FA.income_head_id = income_heads.id', 'left'); 
        $this->db->join('classes AS C', 'C.id = FA.class_id', 'left');
        $this->db->join('sections AS sec', 'sec.id = FA.section_id', 'left');
        if($id){
            $this->db->where_not_in('id', $id);
        }
        $this->db->where('school_id', $school_id); 
        $this->db->where('class_id', $class_id);
        $this->db->where('section_id', $titsection_idle);
        $this->db->where('title', $title);
        $this->db->where('income_heads.head_type !=', 'income'); 
        return $this->db->get('income_heads')->num_rows();            
    }

}
