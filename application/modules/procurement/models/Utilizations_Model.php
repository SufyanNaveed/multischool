<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Utilizations_Model extends MY_Model {
    
    function __construct() {
        parent::__construct();
    }
    
     public function get_utilizations_list($school_id = null){
        
        $this->db->select('u.*,S.school_name,c.name as category_name, i.name as item_name');
        $this->db->from('utilizations AS u');
        $this->db->join('schools AS S', 'S.id = u.school_id', 'left');
        $this->db->join('category AS c', 'c.id = u.category_id', 'left');
        $this->db->join('item AS i', 'i.id = u.item_id', 'left');        
        if($this->session->userdata('role_id') != SUPER_ADMIN){
            $this->db->where('u.school_id', $this->session->userdata('school_id'));
        }        
        if($this->session->userdata('role_id') == SUPER_ADMIN && $school_id){
            $this->db->where('u.school_id', $school_id);
        }        
        $this->db->where('u.status', 1);        
        return $this->db->get()->result();
        
    }
    

    
    // function duplicate_check($school_id, $name, $id = null ){           
           
    //     if($id){
    //         $this->db->where_not_in('id', $id);
    //     }
    //     $this->db->where('name', $name);
    //     $this->db->where('school_id', $school_id);
    //     return $this->db->get('utilizations')->num_rows();            
    // }
}
