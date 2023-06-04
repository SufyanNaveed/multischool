<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Levels_Model extends MY_Model {
    
    function __construct() {
        parent::__construct();
    }
    
     public function get_levels_list($school_id = null){
        
        $this->db->select('C.*,S.school_name, parent_level.level_name as parent_name');
        $this->db->from('levels AS C');
        $this->db->join('schools AS S', 'S.id = C.school_id', 'left');
        $this->db->join('levels as parent_level','parent_level.id = C.parent_id','left');
        if($this->session->userdata('role_id') != SUPER_ADMIN){
            $this->db->where('C.school_id', $this->session->userdata('school_id'));
        }
        
        if($this->session->userdata('role_id') == SUPER_ADMIN && $school_id){
            $this->db->where('C.school_id', $school_id);
        }
        
        $this->db->where('C.status', 1);
        
        return $this->db->get()->result();
        
    }
    

    
    function duplicate_check($school_id, $name, $id = null ){           
           
        if($id){
            $this->db->where_not_in('id', $id);
        }
        $this->db->where('level_name', $name);
        $this->db->where('school_id', $school_id);
        return $this->db->get('levels')->num_rows();            
    }
}
