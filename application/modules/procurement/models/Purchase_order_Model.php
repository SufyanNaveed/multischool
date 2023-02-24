<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Purchase_order_Model extends MY_Model {
    
    function __construct() {
        parent::__construct();
    }
    
     public function get_purchase_order_list($school_id = null){
        
        $this->db->select('p.*,S.school_name,c.name as category_name, i.name as item_name, sup.name as supplier_name');
        $this->db->from('purchase_order AS p');
        $this->db->join('schools AS S', 'S.id = p.school_id', 'left');
        $this->db->join('category AS c', 'c.id = p.category_id', 'left');
        $this->db->join('item AS i', 'i.id = p.item_id', 'left');
        $this->db->join('suppliers AS sup', 'sup.id = p.supplier_id', 'left');
        
        if($this->session->userdata('role_id') != SUPER_ADMIN){
            $this->db->where('p.school_id', $this->session->userdata('school_id'));
        }
        
        if($this->session->userdata('role_id') == SUPER_ADMIN && $school_id){
            $this->db->where('p.school_id', $school_id);
        }
        
        $this->db->where('p.status', 1);
        
        return $this->db->get()->result();
        
    }
    

    
    function duplicate_check($school_id, $name, $id = null ){           
           
        if($id){
            $this->db->where_not_in('id', $id);
        }
        $this->db->where('name', $name);
        $this->db->where('school_id', $school_id);
        return $this->db->get('purchase_order')->num_rows();            
    }
}
