<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Payment_Model extends MY_Model {
    
    function __construct() {
        parent::__construct();
    }

    
    public function get_invoice_amount($invoice_id){
        $this->db->select('I.*, SUM(IID.installment_amount) as invoice_amount, SUM(T.amount) AS paid_amount');
        $this->db->from('invoices AS I');        
        $this->db->join('invoice_installment_detail AS IID', 'IID.invoice_id = I.id', 'left');
        $this->db->join('transactions AS T', 'T.invoice_id = I.id', 'left');
        $this->db->where('I.id', $invoice_id);         
        return $this->db->get()->row(); 
    }
}
