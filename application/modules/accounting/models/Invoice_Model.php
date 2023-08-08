<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Invoice_Model extends MY_Model {
    
    function __construct() {
        parent::__construct();
    }

    public function get_fee_type($school_id, $class_id, $section_id){     
          
        $sql = "SELECT IH.*
                FROM income_heads AS IH
                LEFT JOIN fees_amount AS FA ON FA.income_head_id = IH.id 
                WHERE (IH.head_type = 'fee' OR IH.head_type = 'hostel'  OR IH.head_type = 'transport' ) 
                AND IH.school_id = $school_id 
                AND FA.class_id = $class_id 
                AND FA.section_id = $section_id"; 
        return $this->db->query($sql)->result();  
      
    }
    
     public function get_hostel_fee($student_id){
        
        $this->db->select('R.cost');
        $this->db->from('students AS S'); 
        $this->db->join('hostel_members AS HM', 'HM.user_id = S.user_id', 'left');
        $this->db->join('rooms AS R', 'R.id = HM.room_id', 'left');
        $this->db->where('S.id', $student_id); 
        $this->db->where('S.is_hostel_member', 1);
        return $this->db->get()->row(); 
    }
    
    public function get_transport_fee($student_id){
        
        $this->db->select('RS.stop_fare');
        $this->db->from('students AS S'); 
        $this->db->join('transport_members AS TM', 'TM.user_id = S.user_id', 'left');
        $this->db->join('route_stops AS RS', 'RS.id = TM.route_stop_id', 'left');
        $this->db->where('S.id', $student_id); 
        $this->db->where('S.is_transport_member', 1);
        return $this->db->get()->row(); 
    }

    public function get_student_discount($student_id){
        
        $this->db->select('D.*');
        $this->db->from('students AS S'); 
        $this->db->join('discounts AS D', 'D.id = S.discount_id', 'left');
        $this->db->where('S.id', $student_id);         
        return $this->db->get()->row();
    }

    public function get_discount_by_id($discount_id){
        
        $this->db->select('D.*');
        $this->db->from('discounts AS D'); 
        $this->db->where('D.id', $discount_id);         
        return $this->db->get()->row();
    }
    
    public function get_invoice_list_bk($school_id = null, $due = null, $academic_year_id = null){
        
        $this->db->select('I.*, SC.school_name, IH.title AS head, S.name AS student_name, AY.session_year, C.name AS class_name, sec.name as session');
        $this->db->from('invoices AS I');        
        $this->db->join('classes AS C', 'C.id = I.class_id', 'left');
        $this->db->join('sections AS sec', 'sec.id = I.section_id', 'left');       
        $this->db->join('students AS S', 'S.id = I.student_id', 'left');
       // $this->db->join('income_heads AS IH', 'IH.id = I.income_head_id', 'left');
        $this->db->join('academic_years AS AY', 'AY.id = I.academic_year_id', 'left');
        $this->db->join('schools AS SC', 'SC.id = I.school_id', 'left');
        
        //$this->db->where('I.invoice_type !=', 'income');  
        
        if($due){
            $this->db->where('I.paid_status !=', 'paid');  
        }  
        
        if($this->session->userdata('role_id') == GUARDIAN){
            $this->db->where('S.guardian_id', $this->session->userdata('profile_id'));  
        }   
        
        if($this->session->userdata('role_id') == STUDENT){
            $this->db->where('I.student_id', $this->session->userdata('profile_id'));
        }  
        
        if($this->session->userdata('role_id') != SUPER_ADMIN){
            $this->db->where('I.school_id', $this->session->userdata('school_id'));
        } 
        
        if($academic_year_id){
            $this->db->where('I.academic_year_id', $academic_year_id); 
        }
        
        if($this->session->userdata('role_id') == SUPER_ADMIN && $school_id){
            $this->db->where('I.school_id', $school_id);
        }
     
        $this->db->order_by('I.id', 'DESC');  
        return $this->db->get()->result();        
    }
    
    public function get_invoice_list($school_id = null, $due = null, $academic_year_id = null){
        
        $this->db->select('I.*, SC.school_name,  S.name AS student_name, AY.session_year, C.name AS class_name, sec.name as session, 
            
            (SELECT SUM(installment_amount) as installment_amount FROM invoice_installment_detail IID WHERE IID.invoice_id = I.id ) AS installment_amount,
            (SELECT Distinct(no_of_installments) as no_of_installments FROM invoice_installment_detail IID WHERE IID.invoice_id = I.id) AS no_of_installments,
            (SELECT Distinct(installment_no) as installment_no FROM invoice_installment_detail IID WHERE IID.invoice_id = I.id Order By created_at desc LIMIT 1) AS installment_no'
        );
        $this->db->from('invoices AS I');        
        $this->db->join('classes AS C', 'C.id = I.class_id', 'left');
        $this->db->join('sections AS sec', 'sec.id = I.section_id', 'left');       
        $this->db->join('students AS S', 'S.id = I.student_id', 'left');
        $this->db->join('academic_years AS AY', 'AY.id = I.academic_year_id', 'left');
        $this->db->join('schools AS SC', 'SC.id = I.school_id', 'left');
        $this->db->where('I.invoice_type !=', 'income');
        if($due){
            $this->db->where('I.paid_status !=', 'paid');  
        }  
        
        if($this->session->userdata('role_id') == GUARDIAN){
            $this->db->where('S.guardian_id', $this->session->userdata('profile_id'));  
        }   
        
        if($this->session->userdata('role_id') == STUDENT){
            $this->db->where('I.student_id', $this->session->userdata('profile_id'));
        }  
        
        if($this->session->userdata('role_id') != SUPER_ADMIN){
            $this->db->where('I.school_id', $this->session->userdata('school_id'));
        } 
        
        if($academic_year_id){
            $this->db->where('I.academic_year_id', $academic_year_id); 
        }
        
        if($this->session->userdata('role_id') == SUPER_ADMIN && $school_id){
            $this->db->where('I.school_id', $school_id);
        }
        $this->db->where('I.status', 1);     
        $this->db->order_by('I.id', 'DESC');  
        // $this->db->get(); 
        // echo '<pre>'; print_r($this->db->last_query()); exit;

       return $this->db->get()->result();        
    }
    
    
    public function get_single_invoice($id){
        
        $this->db->select('I.*, I.discount AS inv_discount, I.id AS inv_id , S.*, AY.session_year, C.name AS class_name, E.roll_no, sec.name as session, sm.name as semester_name');
        $this->db->from('invoices AS I');        
        $this->db->join('classes AS C', 'C.id = I.class_id', 'left');
        $this->db->join('sections AS sec', 'sec.id = I.section_id', 'left');
        $this->db->join('students AS S', 'S.id = I.student_id', 'left');
        $this->db->join('semester AS sm', 'sm.id = S.group', 'left');
        $this->db->join('enrollments AS E', 'S.id = E.student_id', 'left');
        $this->db->join('academic_years AS AY', 'AY.id = I.academic_year_id', 'left');
        $this->db->where('I.id', $id);       
       
        return $this->db->get()->row();        
    }
    
    public function get_invoice_item($invoice_id){                
        $this->db->select('ID.*, IH.title');
        $this->db->from('invoice_detail AS ID');        
        $this->db->join('income_heads AS IH', 'IH.id = ID.income_head_id', 'left'); 
        $this->db->where('ID.invoice_id', $invoice_id);
        return $this->db->get()->result();
    }
    
    public function get_invoice_item_installment($invoice_id){                
        $this->db->select('IID.*,IH.title, IID.installment_amount as net_amount');
        $this->db->from('invoice_installment_detail AS IID');
        $this->db->join('income_heads AS IH', 'IH.id = IID.income_head_id ', 'left');
        $this->db->where('IID.invoice_id', $invoice_id);
        return $this->db->get()->result();
    }
    
    public function get_student_list( $school_id, $academic_year_id, $class_id, $section_id, $student_id = null, $status_type = null){
        
        $this->db->select('E.roll_no,  S.id, S.user_id, S.name, S.is_hostel_member, S.is_transport_member');
        $this->db->from('enrollments AS E');        
        $this->db->join('students AS S', 'S.id = E.student_id', 'left');
        $this->db->where('E.academic_year_id', $academic_year_id);       
        $this->db->where('E.class_id', $class_id);  
        $this->db->where('E.section_id', $section_id);  
        $this->db->where('E.school_id', $school_id); 
        
        if($status_type){
            $this->db->where('S.status_type', $status_type);  
        }
        if($student_id > 0){
            $this->db->where('E.student_id', $student_id); 
        }
        
        
        $query =  $this->db->get();    
        return $query->result();   

    }
    
    public function get_student_hostel_cost($user_id){
         $this->db->select('R.cost');
        $this->db->from('hostel_members AS HM');        
        $this->db->join('rooms AS R', 'R.id = HM.room_id', 'left');
        $this->db->where('HM.user_id', $user_id);                  
        return $this->db->get()->row();
    }
    
    public function get_student_transport_fare($user_id){
        
        
        $this->db->select('R.fare');
        $this->db->from('transport_members AS TM');        
        $this->db->join('routes AS R', 'R.id = TM.route_id', 'left');
        $this->db->where('TM.user_id', $user_id);                  
        return $this->db->get()->row();
    }

    public function get_Installments_already_created($student_id) { 

        $this->db->select('IID.*,d.title,d.discount_type,d.amount,st.discount_id');
        $this->db->from('invoice_installment_detail AS IID');
        $this->db->join('students AS st', 'st.id = IID.student_id', 'left');
        $this->db->join('discounts AS d', 'd.id = st.discount_id', 'left'); 
        $this->db->where('IID.student_id', $student_id);
        $this->db->order_by('id', 'DESC');
        $res = $this->db->get()->row_array();
        // echo '<pre>'; print_r($res); exit;
        return $res;
    }

    public function get_discount_already_created($student_id) { 

        $this->db->select('d.title,d.discount_type,d.amount,IID.discount_id');
        $this->db->from('students AS IID'); 
        $this->db->join('discounts AS d', 'd.id = IID.discount_id', 'left'); 
        $this->db->where('IID.id', $student_id);
        $res = $this->db->get()->row_array();
        // echo '<pre>'; print_r($this->db->last_query()); exit;
        return $res;
    }

    public function get_previous_invoices($student_id) { 

        $this->db->select('*,
            (SELECT SUM(installment_amount)
            FROM invoice_installment_detail
            WHERE IN.id = invoice_installment_detail.invoice_id) as invoice_amount
        ');
        $this->db->from('invoices AS IN');  
        $this->db->where('IN.student_id', $student_id);
        $this->db->where('IN.paid_status !=', 'paid');
        $this->db->order_by('id', 'DESC');
        $res = $this->db->get()->row_array();
        // echo '<pre>'; print_r($this->db->last_query()); exit;
        return $res;
    }
    

    

    
}
