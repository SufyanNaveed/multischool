<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-calculator"></i><small> <?php echo $this->lang->line('manage_invoice'); ?></small></h3>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>                    
                </ul>
                <div class="clearfix"></div>
            </div>
           
            <div class="x_content quick-link no-print">
                <?php $this->load->view('quick-link'); ?>  
            </div>
            
            
            <div class="x_content">
                <div class="" data-example-id="togglable-tabs">
                    
                    <ul  class="nav nav-tabs bordered">
                        <li class="<?php if(isset($list)){ echo 'active'; }?>"><a href="#tab_invoice_list"   role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-list-ol"></i> <?php echo $this->lang->line('list'); ?></a> </li>
                        
                        <li  class="<?php if(isset($single)){ echo 'active'; }?>"><a href="<?php echo site_url('accounting/invoice/add'); ?>"  aria-expanded="false"><i class="fa fa-plus-square-o"></i> <?php echo $this->lang->line('create_invoice'); ?></a> </li>                          
                        <li  class="<?php if(isset($bulk)){ echo 'active'; }?>"><a href="<?php echo site_url('accounting/invoice/bulk'); ?>"  aria-expanded="false"><i class="fa fa-plus-square-o"></i> <?php echo $this->lang->line('create_bulk_invoice'); ?></a> </li>                          
                        <?php if(isset($edit)){ ?>
                            <li  class="active"><a href="#tab_edit_invoice"  role="tab"  data-toggle="tab" aria-expanded="false"><i class="fa fa-pencil-square-o"></i> <?php echo $this->lang->line('edit'); ?></a> </li>                          
                        <?php } ?>   
                            
                         <li class="li-class-list">
                        <?php if($this->session->userdata('role_id') == SUPER_ADMIN){  ?>                                 
                             <select  class="form-control col-md-7 col-xs-12" onchange="get_invoice_by_school(this.value);">
                                     <option value="<?php echo site_url('accounting/invoice/index'); ?>">--<?php echo $this->lang->line('select_school'); ?>--</option> 
                                 <?php foreach($schools as $obj ){ ?>
                                     <option value="<?php echo site_url('accounting/invoice/index/'.$obj->id); ?>" <?php if(isset($filter_school_id) && $filter_school_id == $obj->id){ echo 'selected="selected"';} ?> > <?php echo $obj->school_name; ?></option>
                                 <?php } ?>   
                             </select>
                         <?php } ?>  
                        </li>      
                            
                    </ul>
                    <br/>                    
                    
                    <div class="tab-content">
                        <div  class="tab-pane fade in <?php if(isset($list)){ echo 'active'; }?>" id="tab_invoice_list" >
                            <div class="x_content">
                            <button style="margin-bottom: 10px" class="btn btn-danger delete_all" data-url="<?php echo base_url('accounting/invoice/delete_all_invoices')?>">Delete All Selected</button>
                            <!-- <button style="margin-bottom: 10px" class="btn btn-info print_all" data-url="<?php echo base_url('accounting/invoice/print_all_invoices')?>">Print All Selected</button> -->
                            <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                    <th width="50px"><input type="checkbox" id="master"></th>
                                        <th><?php echo $this->lang->line('sl_no'); ?></th>
                                        <?php if($this->session->userdata('role_id') == SUPER_ADMIN){ ?>
                                            <th><?php echo $this->lang->line('school'); ?></th>
                                        <?php } ?>
                                        <th><?php echo $this->lang->line('invoice_number'); ?></th>
                                        <th><?php echo $this->lang->line('student'); ?></th>
                                        <th><?php echo $this->lang->line('class'); ?></th>
                                        <th><?php echo $this->lang->line('section'); ?></th>
                                        <th><?php echo $this->lang->line('gross_amount'); ?></th>
                                        <th><?php echo $this->lang->line('discount'); ?></th>
                                        <th><?php echo $this->lang->line('net_amount'); ?></th>
                                        <th><?php echo 'Total installments'; ?></th>
                                        <th><?php echo 'Installment'; ?></th>
                                        <th><?php echo 'Installment Amount'; ?></th>
                                        <th><?php echo 'Date'; ?></th> 
                                        <th><?php echo $this->lang->line('status'); ?></th>
                                        <th><?php echo $this->lang->line('action'); ?></th>                                            
                                    </tr>
                                </thead>
                                <tbody>   
                                    <?php $count = 1; if(isset($invoices) && !empty($invoices)){ ?>
                                        <?php foreach($invoices as $obj){ ?>
                                        <tr>
                                            <td><input type="checkbox" class="sub_chk" data-id="<?php echo $obj->id; ?>"></td>
                                            <td><?php echo $count++; ?></td>
                                            <?php if($this->session->userdata('role_id') == SUPER_ADMIN){ ?>
                                                <td><?php echo $obj->school_name; ?></td>
                                            <?php } ?>
                                            <td><?php echo $obj->custom_invoice_id; ?></td>
                                            <td><?php echo $obj->student_name; ?></td>
                                            <td><?php echo $obj->class_name; ?></td>
                                            <td><?php echo $obj->session; ?></td>
                                            <td><?php echo $obj->gross_amount; ?></td>
                                            <td><?php echo $obj->discount; ?></td>
                                            <td><?php echo $obj->net_amount; ?></td>
                                            <td><?php echo $obj->no_of_installments; ?></td>
                                            <td><?php echo $obj->installment_no; ?></td>
                                            <td><?php echo round($obj->installment_amount, 2); ?></td>
                                            <td><?php echo get_paid_status($obj->paid_status); ?></td>
                                            <td><?php echo $obj->date; ?></td>
                                            <td>
                                                <?php if(has_permission(VIEW, 'accounting', 'invoice')){ ?>
                                                    <a href="<?php echo site_url('accounting/invoice/view/'.$obj->id); ?>" class="btn btn-info btn-xs"><i class="fa fa-eye"></i> <?php echo $this->lang->line('view'); ?> </a>
                                                    <?php if($obj->paid_status != 'paid'){ ?>
                                                        <a href="<?php echo site_url('accounting/payment/index/'.$obj->id); ?>" class="btn btn-success btn-xs"><i class="fa fa-credit-card"></i> <?php echo $this->lang->line('pay_now'); ?></a>
                                                    <?php } ?>  
                                                    
                                                <?php } ?> 
                                                <?php if(has_permission(DELETE, 'accounting', 'invoice')){ ?>
                                                    <?php //if($obj->paid_status == 'unpaid'){ ?>
                                                        <a href="<?php echo site_url('accounting/invoice/delete/'.$obj->id); ?>" onclick="javascript: return confirm('<?php echo $this->lang->line('confirm_alert'); ?>');" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> <?php echo $this->lang->line('delete'); ?> </a>
                                                    <?php //} ?>
                                                <?php } ?> 

                                            </td>
                                        </tr>
                                        <?php } ?>
                                    <?php } ?>
                                </tbody>
                            </table>
                            </div>
                        </div>
                        
                        <?php if(isset($single)){ ?>
                        <div  class="tab-pane fade in <?php if(isset($single)){ echo 'active'; }?>" id="tab_single_invoice">
                            <div class="x_content"> 
                               <?php echo form_open_multipart(site_url('accounting/invoice/add'), array('name' => 'single', 'id' => 'single', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                <?php $this->load->view('layout/school_list_form'); ?>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="class_id"><?php echo $this->lang->line('class'); ?> <span class="required">*</span> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12"  name="class_id"  id="class_id" required="required" onchange="get_section_by_class(this.value, '');" >
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option>                                            
                                        </select>
                                        <div class="help-block"><?php echo form_error('class_id'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="section_id"><?php echo $this->lang->line('section'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12"  name="section_id"  id="section_id" required="required" onchange="get_student_by_class_section(this.value, ''); get_single_fee_type_by_school(this.value, '')">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option> 
                                        </select>
                                        <div class="help-block"><?php echo form_error('section_id'); ?></div>
                                    </div>
                                </div>
                                
                                
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="student_id"><?php echo $this->lang->line('student'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12"  name="student_id"  id="student_id" required="required" onchange="reset_form_data(); Installments_already_created(this.value, '')">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option>                                                                                      
                                        </select>
                                        <div class="help-block"><?php echo form_error('student_id'); ?></div>
                                    </div>
                                </div>
                                    
                               <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="income_head_id"><?php echo $this->lang->line('fee_type'); ?><span class="required"> *</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12 fn_single_fee_item">
                                         <?php if($this->session->userdata('role_id') == SUPER_ADMIN){ ?>
                                        
                                         <?php }else{ ?>
                                            
                                            <?php if(isset($income_heads) && !empty($income_heads)){ ?>
                                                <?php foreach($income_heads as $obj ){ ?>
                                                    <input onclick="get_single_fee_amount(<?php echo $obj->id; ?>)" type="checkbox" name="income_head_id[<?php echo $obj->id; ?>]" id="income_head_id_<?php echo $obj->id; ?>" class="fn_income_head_id" value="<?php echo $obj->head_type; ?>" > <?php echo $obj->title; ?>
                                                    <br/>
                                                <?php } ?> 
                                            <?php } ?> 
                                         <?php } ?>
                                        
                                        
                                        <div class="help-block"><?php echo form_error('income_head_id'); ?></div>
                                    </div>
                                </div> 
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="amount"><?php echo $this->lang->line('fee_amount'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12" readonly="readonly"  name="amount"  id="amount" value="<?php echo isset($post['amount']) ?  $post['amount'] : '0.00'; ?>" placeholder="<?php echo $this->lang->line('fee_amount'); ?>" required="required" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('amount'); ?></div>
                                    </div>
                                </div>                                
                                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="payment_month"><?php echo $this->lang->line('month'); ?> <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="month"  id="month" value="<?php echo isset($post['month']) ?  $post['month'] : ''; ?>" placeholder="<?php echo $this->lang->line('month'); ?>" required="required" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('month'); ?></div>
                                    </div>
                                </div> 
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="is_applicable_discount"><?php echo $this->lang->line('is_applicable_discount'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12" name="is_applicable_discount" id="is_applicable_discount_single" onchange="get_discount_into_fee(this.value, '')" disabled="true">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                                            <?php foreach($discounts as $obj){ ?>                                                    
                                                <option value="<?php echo $obj->id; ?>"  data-discount_val="<?php echo $obj->amount; ?>" data-discount_type="<?php echo $obj->discount_type; ?>"><?php echo $obj->title; ?></option>                                                   
                                            <?php } ?>                                                                                    
                                            <!-- <option value="1"><?php echo $this->lang->line('yes'); ?></option>                                           
                                            <option value="0"><?php echo $this->lang->line('no'); ?></option> -->
                                        </select>
                                        <div class="help-block"><?php echo form_error('is_applicable_discount'); ?></div>
                                    </div>
                                    <label class="col-md-3 col-sm-3 col-xs-12" id="applied_discount"></label>
                                </div>
                                <input name="is_applicable_discount"  id="is_applicable_discount" type="hidden" value="">


                                <div class="item form-group" id="is_applicable_installments_main">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="is_applicable_installments"><?php echo 'How many installments create?'; ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12" name="is_applicable_installments" id="is_applicable_installments" required="required">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option>                                                                                    
                                            <option value="1"><?php echo '1'; ?></option>                                           
                                            <option value="2"><?php echo '2'; ?></option>                                             
                                            <option value="3"><?php echo '3'; ?></option>                                             
                                            <option value="4"><?php echo '4'; ?></option>                                             
                                        </select>
                                        <div class="help-block"><?php echo form_error('is_applicable_discount'); ?></div>
                                    </div>
                                </div>

                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fee_of_installment"><?php echo 'Fee of installment?'; ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12" name="fee_of_installment" id="fee_of_installment" required="required" onchange="calculate_installment_fee(this.value, '')">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option>                                                                                    
                                            <option value="1st" disabled="disabled" style="background-color: #626262;color: white;"><?php echo '1st'; ?></option>                                           
                                            <option value="2nd" disabled="disabled" style="background-color: #626262;color: white;"><?php echo '2nd'; ?></option>                                             
                                            <option value="3rd" disabled="disabled" style="background-color: #626262;color: white;"><?php echo '3rd'; ?></option>                                             
                                            <option value="4th" disabled="disabled" style="background-color: #626262;color: white;"><?php echo '4th'; ?></option>                                             
                                        </select>
                                        <div class="help-block"><?php echo form_error('is_applicable_discount'); ?></div>
                                    </div>
                                    <label class="col-md-3 col-sm-3 col-xs-12" id="installment_fee"></label>
                                </div>
                                <div class="previous_invoices"></div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="paid_status"><?php echo $this->lang->line('paid_status'); ?> <span class="">(optional)</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12" name="paid_status" id="paid_status"  onchange="check_paid_status(this.value);">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option>                                                                                    
                                            <option value="paid"><?php echo $this->lang->line('paid'); ?></option>                                           
                                            <option value="unpaid" selected><?php echo $this->lang->line('unpaid'); ?></option>                                           
                                        </select>
                                        <div class="help-block"><?php echo form_error('paid_status'); ?></div>
                                    </div>
                                </div>

                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last_date"><?php echo 'Last Payment Date'; ?> <span class="">(optional)</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="last_payment_date"  id="last_payment_date" value="<?php echo isset($post['last_payment_date']) ?  $post['last_payment_date'] : ''; ?>" type="date" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('last_payment_date'); ?></div>
                                    </div>
                                </div>
                                
                                <!-- For cheque Start-->
                                <div class="display fn_paid_status" style="<?php if(isset($post) && $post['paid_status'] == 'paid'){ echo 'display:block;';} ?>">
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="payment_method"><?php echo $this->lang->line('payment_method'); ?> <span class="">(optional)</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <select  class="form-control col-md-7 col-xs-12"  name="payment_method"  id="payment_method" onchange="check_payment_method(this.value);">
                                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option> 
                                                <?php $payments = get_payment_methods(); ?>
                                                <?php foreach($payments as $key=>$value ){ ?>                                              
                                                    <?php if(!in_array($key, array('paypal', 'payumoney', 'ccavenue', 'paytm','stripe','paystack'))){ ?>
                                                        <option value="<?php echo $key; ?>" <?php if(isset($post) && $post['payment_method'] == $key){ echo 'selected="selected"';} ?>><?php echo $value; ?></option>
                                                    <?php } ?>  
                                                <?php } ?>                                            
                                            </select>
                                        <div class="help-block"><?php echo form_error('payment_method'); ?></div>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- For cheque Start-->
                                <div class="display fn_cheque" style="<?php if(isset($post) && $post['payment_method'] == 'cheque'){ echo 'display:block;';} ?>">
                                    
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bank_name"><?php echo $this->lang->line('bank_name'); ?> <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input  class="form-control col-md-7 col-xs-12"  name="bank_name"  id="single_bank_name" value="" placeholder="<?php echo $this->lang->line('bank_name'); ?> "  type="text" autocomplete="off">
                                            <div class="help-block"><?php echo form_error('bank_name'); ?></div>
                                        </div>
                                    </div> 
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cheque_no"><?php echo $this->lang->line('cheque_number'); ?> <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input  class="form-control col-md-7 col-xs-12"  name="cheque_no"  id="single_cheque_no" value="" placeholder="<?php echo $this->lang->line('cheque_number'); ?>"  type="text" autocomplete="off">
                                            <div class="help-block"><?php echo form_error('cheque_no'); ?></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- For cheque End-->
                                
                                <!-- For bank_receipt Start-->
                                <div class="display fn_receipt" style="<?php if(isset($post) && $post['payment_method'] == 'receipt'){ echo 'display:block;';} ?>">
                                    
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bank_receipt"><?php echo $this->lang->line('bank_receipt'); ?> <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input  class="form-control col-md-7 col-xs-12"  name="bank_receipt"  id="single_bank_receipt" value="" placeholder="<?php echo $this->lang->line('bank_receipt'); ?> "  type="text" autocomplete="off">
                                            <div class="help-block"><?php echo form_error('bank_receipt'); ?></div>
                                        </div>
                                    </div>                                     
                                </div>
                                <!-- For bank_receipt End-->
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="note"><?php echo $this->lang->line('note'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="note"  id="note" placeholder="<?php echo $this->lang->line('note'); ?>"><?php echo isset($post['note']) ?  $post['note'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('note'); ?></div>
                                    </div>
                                </div>
                               
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <input type="hidden" value="single" name="type" />
                                        <a href="<?php echo site_url('accounting/invoice/index'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                                        <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('submit'); ?></button>
                                    </div>
                                </div>
                                <?php echo form_close(); ?>
                            </div>
                        </div>  
                        <?php } ?>
                        
                       <?php if(isset($bulk)){ ?> 
                        <div  class="tab-pane fade in <?php if(isset($bulk)){ echo 'active'; }?>" id="tab_bulk_invoice">
                            <div class="x_content"> 
                               <?php echo form_open_multipart(site_url('accounting/invoice/bulk'), array('name' => 'bulk', 'id' => 'bulk', 'class'=>'form-horizontal form-label-left'), ''); ?>
                               
                                <?php $this->load->view('layout/school_list_form'); ?>
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="class_id"><?php echo $this->lang->line('class'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12"  name="class_id"  id="class_id" required="required" onchange="reset_form_data(); get_section_by_class(this.value, '');">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option> 
                                            <?php if(isset($classes) && !empty($classes)){ ?>
                                                <?php foreach($classes as $obj ){ ?>
                                                <option value="<?php echo $obj->id; ?>" ><?php echo $obj->name; ?></option>
                                                <?php } ?>                                            
                                            <?php } ?>                                            
                                        </select>
                                        <div class="help-block"><?php echo form_error('class_id'); ?></div>
                                    </div>
                                </div>

                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="section_id"><?php echo $this->lang->line('section'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12"  name="section_id"  id="section_id" required="required" onchange="get_bulk_fee_type_by_school(this.value, '');">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option> 
                                        </select>
                                        <div class="help-block"><?php echo form_error('section_id'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="income_head_id?"><?php echo $this->lang->line('fee_type'); ?>  <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12 fn_bulk_fee_item">
                                         <?php if($this->session->userdata('role_id') == SUPER_ADMIN){ ?>
                                        
                                         <?php }else{ ?>
                                            
                                            <?php if(isset($income_heads) && !empty($income_heads)){ ?>
                                                <?php foreach($income_heads as $obj ){ ?>
                                                    <input onclick="get_bulk_fee_amount(<?php echo $obj->id; ?>)"  type="checkbox" itemid="<?php echo $obj->id; ?>" name="income_head_id[<?php echo $obj->id; ?>]" id="income_head_id_<?php echo $obj->id; ?>" class="fn_income_head_id" value="<?php echo $obj->id; ?>" > <?php echo $obj->title; ?>
                                                    <!--<input type="hidden" name="income_head_id[<?php echo $obj->id; ?>]" value="<?php echo $obj->id; ?>" />-->
                                                    <br/>
                                                <?php } ?> 
                                            <?php } ?> 
                                         <?php } ?>
                                                                                
                                        <div class="help-block"><?php echo form_error('income_head_id'); ?></div>
                                    </div>
                                </div> 
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="student_id"><?php echo $this->lang->line('student'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div id="fn_student_container">                                            
                                        </div>
                                        <div class="help-block fn_check_button display">
                                            <button id="check_all" type="button" class="btn btn-success btn-xs"><?php echo $this->lang->line('check_all'); ?></button>
                                            <button id="uncheck_all" type="button" class="btn btn-success btn-xs"><?php echo $this->lang->line('uncheck_all'); ?></button>
                                        </div>
                                    </div>
                                </div>
                                                                                         
                                <!-- <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="is_applicable_discount?"><?php echo $this->lang->line('is_applicable_discount'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12" name="is_applicable_discount" id="is_applicable_discount_bulk"  onchange="discount_display(this.value)">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                                            <?php foreach($discounts as $obj){ ?>                                                    
                                                <option value="<?php echo $obj->id; ?>" data-discount_val="<?php echo $obj->amount; ?>"><?php echo $obj->title; ?></option>                                                   
                                            <?php } ?>                                                                                     
                                            <!-- <option value="1"><?php echo $this->lang->line('yes'); ?></option>                                           
                                            <option value="0"><?php echo $this->lang->line('no'); ?></option>                                          
                                        </select>
                                        <div class="help-block"><?php echo form_error('is_applicable_discount'); ?></div>
                                    </div>
                                </div> -->
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="payment_month"><?php echo $this->lang->line('month'); ?> <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="month"  id="month" value="<?php echo isset($post['month']) ?  $post['month'] : ''; ?>" placeholder="<?php echo $this->lang->line('month'); ?>" required="required" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('month'); ?></div>
                                    </div>
                                </div> 
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="is_applicable_installments"><?php echo 'How many installments create?'; ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12" name="is_applicable_installments" id="is_applicable_installments" required="required">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option>                                                                                    
                                            <option value="1"><?php echo '1'; ?></option>                                           
                                            <option value="2"><?php echo '2'; ?></option>                                             
                                            <option value="3"><?php echo '3'; ?></option>                                             
                                            <option value="4"><?php echo '4'; ?></option>                                             
                                        </select>
                                        <div class="help-block"><?php echo form_error('is_applicable_discount'); ?></div>
                                    </div>
                                </div>

                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fee_of_installment"><?php echo 'Fee of installment?'; ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12" name="fee_of_installment" id="fee_of_installment_bulk" required="required">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option>                                                                                    
                                            <option value="1st"><?php echo '1st'; ?></option>                                           
                                            <option value="2nd"><?php echo '2nd'; ?></option>                                             
                                            <option value="3rd"><?php echo '3rd'; ?></option>                                             
                                            <option value="4th"><?php echo '4th'; ?></option>                                             
                                        </select>
                                        <div class="help-block"><?php echo form_error('is_applicable_discount'); ?></div>
                                    </div>
                                    <!-- <label class="col-md-3 col-sm-3 col-xs-12" id="installment_fee"></label> -->
                                </div>
                                
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="paid_status"><?php echo $this->lang->line('paid_status'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12" name="paid_status" id="paid_status" onchange="check_paid_status(this.value);">
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option>                                                                                    
                                            <option value="paid"><?php echo $this->lang->line('paid'); ?></option>                                           
                                            <option value="unpaid" selected><?php echo $this->lang->line('unpaid'); ?></option>                                           
                                        </select>
                                        <div class="help-block"><?php echo form_error('paid_status'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last_date"><?php echo 'Last Payment Date'; ?> <span class="">(optional)</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="last_payment_date"  id="last_payment_date" value="<?php echo isset($post['last_payment_date']) ?  $post['last_payment_date'] : ''; ?>" type="date" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('last_payment_date'); ?></div>
                                    </div>
                                </div>

                                <!-- For cheque Start-->
                                <div class="display fn_paid_status" style="<?php if(isset($post) && $post['paid_status'] == 'paid'){ echo 'display:block;';} ?>">
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="payment_method"><?php echo $this->lang->line('payment_method'); ?> <span class="">(optional)</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <select  class="form-control col-md-7 col-xs-12"  name="payment_method"  id="payment_method" onchange="check_payment_method(this.value);">
                                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option> 
                                                <?php $payments = get_payment_methods(); ?>
                                                <?php foreach($payments as $key=>$value ){ ?>                                              
                                                    <?php if(in_array($key, array('cash'))){ ?>
                                                        <option value="<?php echo $key; ?>" <?php if(isset($post) && $post['payment_method'] == $key){ echo 'selected="selected"';} ?>><?php echo $value; ?></option>
                                                    <?php } ?>  
                                                <?php } ?>                                            
                                            </select>
                                        <div class="help-block"><?php echo form_error('payment_method'); ?></div>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                <!-- For cheque Start-->
                                <div class="display fn_cheque" style="<?php if(isset($post) && $post['payment_method'] == 'cheque'){ echo 'display:block;';} ?>">
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bank_name"><?php echo $this->lang->line('bank_name'); ?> <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input  class="form-control col-md-7 col-xs-12"  name="bank_name"  id="bank_name" value="" placeholder="<?php echo $this->lang->line('bank_name'); ?> "  type="text" autocomplete="off">
                                            <div class="help-block"><?php echo form_error('bank_name'); ?></div>
                                        </div>
                                    </div> 
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cheque_no"><?php echo $this->lang->line('cheque_number'); ?> <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input  class="form-control col-md-7 col-xs-12"  name="cheque_no"  id="cheque_no" value="" placeholder="<?php echo $this->lang->line('cheque_number'); ?>"  type="text" autocomplete="off">
                                            <div class="help-block"><?php echo form_error('cheque_no'); ?></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- For cheque End-->
                                
                                <!-- For bank_receipt Start-->
                                <div class="display fn_receipt" style="<?php if(isset($post) && $post['payment_method'] == 'receipt'){ echo 'display:block;';} ?>">
                                    
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bank_receipt"><?php echo $this->lang->line('bank_receipt'); ?> <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input  class="form-control col-md-7 col-xs-12"  name="bank_receipt"  id="single_bank_receipt" value="" placeholder="<?php echo $this->lang->line('bank_receipt'); ?> "  type="text" autocomplete="off">
                                            <div class="help-block"><?php echo form_error('bank_receipt'); ?></div>
                                        </div>
                                    </div>                                     
                                </div>
                                <!-- For bank_receipt End-->
                              
                                                               
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="note"><?php echo $this->lang->line('note'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="note"  id="note" placeholder="<?php echo $this->lang->line('note'); ?>"><?php echo isset($post['note']) ?  $post['note'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('note'); ?></div>
                                    </div>
                                </div>
                               
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <input type="hidden" value="bulk" name="type" />
                                        <a href="<?php echo site_url('accounting/invoice/index'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                                        <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('submit'); ?></button>
                                    </div>
                                </div>
                                <?php echo form_close(); ?>
                            </div>
                        </div>  
                       <?php } ?>                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- bootstrap-datetimepicker -->
<link href="<?php echo VENDOR_URL; ?>datepicker/datepicker.css" rel="stylesheet">
<script src="<?php echo VENDOR_URL; ?>datepicker/datepicker.js"></script>
 
<script type="text/javascript"> 
    
    $("#month").datepicker( {
        format: "mm-yyyy",
        startView: "months", 
        minViewMode: "months"
    });

    
    function check_paid_status(paid_status) {

        if (paid_status == "paid") {   
            
            $('.fn_paid_status').show(); 
            $('#payment_method').prop('required', true);                

        } else{
            
            $('.fn_cheque').hide();           
            $('.fn_receipt').hide();           
            $('.fn_paid_status').hide();  
            $('#payment_method').prop('required', false);               
        }
        
        $("select#payment_method").prop('selectedIndex', 0);
    }
              
    function check_payment_method(payment_method) {

        if (payment_method == "cheque") {
            
            $('.fn_cheque').show();                
            $('.fn_receipt').hide();                
            $('#bank_name').prop('required', true);
            $('#cheque_no').prop('required', true);  
            $('#bank_receipt').prop('required', false);  
            
        }else if (payment_method == "receipt") {
            
            $('.fn_receipt').show();                
            $('.fn_cheque').hide();     
            $('#bank_receipt').prop('required', true);
            $('#bank_name').prop('required', false);
            $('#cheque_no').prop('required', false);                

        } else{
            
            $('.fn_cheque').hide();  
            $('.fn_receipt').hide();  
            $('#bank_name').prop('required', false);
            $('#cheque_no').prop('required', false); 
            $('#bank_receipt').prop('required', false); 
        } 
    }
          
    $('.fn_school_id').on('change', function(){
      
        var school_id = $(this).val();
        var class_id = '';       
        
        if(!school_id){
           toastr.error('<?php echo $this->lang->line('select_school'); ?>');
           return false;
        }
       
       $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_class_by_school'); ?>",
            data   : { school_id:school_id, class_id:class_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {                     
                   $('#class_id').html(response); 
               }
            }
        });
    }); 
     
    <?php if($post && !empty ($post)){ ?>  
        get_section_by_class('<?php echo $post['class_id']; ?>', '<?php echo $post['section_id']; ?>'); 
    <?php } ?>
    
    function get_section_by_class(class_id, section_id){       
        
        var school_id = '';
        school_id = $('#add_school_id').val();
        class_id = $('#class_id').val();
        
        if(!school_id){
            toastr.error('<?php echo $this->lang->line('select_school'); ?>');
           return false;
        }
        
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_section_by_class'); ?>",
            data   : { school_id:school_id, class_id : class_id , section_id: section_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {
                        $('#section_id').html(response); 
               }

            //    get_single_fee_type_by_school(section_id);
            //    get_bulk_fee_type_by_school(section_id);
            }
        });  
                     
        
   }
    // single
    function get_student_by_class_section(section_id, student_id){       
        
        var school_id = $('.fn_school_id').val();
        var class_id = $('#class_id').val();
               
        if(!school_id){
           toastr.error('<?php echo $this->lang->line('select_school'); ?>');
           return false;
        }
                
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('accounting/invoice/get_student_by_class'); ?>",
            data   : {school_id:school_id, class_id : class_id , section_id : section_id , student_id : student_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {     
                    $('#student_id').html(response); 
               }
            }
        });                 
        
    }
   
   
  // single  
   function get_single_fee_type_by_school(section_id){
    
    var school_id = $('.fn_school_id').val();
    var class_id = $('#class_id').val();
    $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('accounting/invoice/get_single_fee_type_by_school'); ?>",
            data   : { school_id:school_id, class_id:class_id, section_id:section_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {  
                    $('.fn_single_fee_item').html(response);
               }
            }
        });   
   }
   
    // single
    function get_single_fee_amount(income_head_id){
            
        var student_id = $('#student_id').val(); 
        var class_id = $('#class_id').val(); 
        var section_id = $('#section_id').val(); 
        var school_id = $('.fn_school_id').val();
        var amount = $('#amount').val();
        var check_status = '';
        
        if(!student_id){            
            toastr.error('<?php echo $this->lang->line('select_student'); ?>');
            $('#income_head_id_'+income_head_id).prop('checked', false);
            return false;
        }
        
        if($('#income_head_id_'+income_head_id).is(":checked")){
            check_status = true;           
        }else{
            check_status = false;
        }         
        
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('accounting/invoice/get_single_fee_amount'); ?>",
            data   : { school_id : school_id, income_head_id : income_head_id, class_id : class_id, section_id : section_id, student_id:student_id, amount:amount, check_status:check_status},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {  
                   $('#amount').val(response);                     
               }
            }
        });  
   }

    function get_discount_into_fee(val){            
        var school_id = $('.fn_school_id').val(); 
        // var student_id = $('#student_id').val(); 
        // var class_id = $('#class_id').val(); 
        // var section_id = $('#section_id').val(); 
        var response = $('#is_applicable_discount').attr('data-discount_val');
        var discount_type = $('#is_applicable_discount').attr('data-discount_type');
        var amount = $('#amount').val();
        if(!school_id){            
            toastr.error('<?php echo $this->lang->line('select_school'); ?>');
            return false;
        }
        if(discount_type == "flat"){ 
            $('#applied_discount').html('Applied discount: <span id="discount_val">' + response + '</span> PKR'); 
        }else{
            var net_amount   = (response/100)* amount;
            // var net_amount = $data['gross_amount'] - percentage;

            $('#applied_discount').html('Applied discount: <span id="discount_val">' + net_amount + '</span> PKR - (' +  response + '%)');
        }                   
        
        
        
        // if(!student_id){            
        //     toastr.error('<?php echo $this->lang->line('select_student'); ?>');
        //     $('#is_applicable_discount').prop('checked', false);
        //     return false;
        // }
                
        // if(val == 1){
        //     $.ajax({       
        //         type   : "POST",
        //         url    : "<?php echo site_url('accounting/invoice/get_single_discount_fee_amount'); ?>",
        //         data   : { school_id : school_id, class_id : class_id, section_id : section_id, student_id:student_id },               
        //         async  : false,
        //         success: function(response){                                                   
        //         if(response)
        //         {  
        //         }
        //         }
        //     });  
        // }
    }

    function calculate_installment_fee(val){
        var installment_fee = 0;
        var fee = $('#amount').val(); 
        var discount = $('#discount_val').text(); 
        var installments = $('#is_applicable_installments').val();
        installment_fee = discount ? ((parseInt(fee) - parseInt(discount)) / parseInt(installments)) : (parseInt(fee) / parseInt(installments));
        $('#installment_fee').html('Fee of '+ val + ' installment is: <span id="installment_amount">' + installment_fee.toFixed(0) + '</span> PKR' );
        
        var school_id = $('.fn_school_id').val(); 
        var student_id = $('#student_id').val(); 
        var class_id = $('#class_id').val(); 
        var section_id = $('#section_id').val(); 

        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('accounting/invoice/get_previous_invoices'); ?>",
            data   : { school_id : school_id, class_id : class_id, section_id : section_id, student_id:student_id },               
            async  : false,
            success: function(response){                                                   
                if(response) {
                    console.log(response); 
                    var data = JSON.parse(response);
                    var invoice_amount = (data.invoice_amount);
                    if(invoice_amount){
                        var html= '<div class="item form-group">'+
                                    '<label class="control-label col-md-3 col-sm-3 col-xs-12" for="previous_amount">Add the previous unpaid installment?</label>'+
                                    '<div class="col-md-3 col-sm-3 col-xs-12"><input onclick="calculate_previous_amount()" type="checkbox" name="previous_amount" id="previous_amount" class="fn_previous_amount" value="1">&nbsp;&nbsp; Add Previous Invoice'+
                                    '<input type="hidden" name="previous_invoice_amount" id="previous_invoice_amount"  value="'+Math.round(invoice_amount)+'">'+
                                    '<input type="hidden" name="previous_invoice_id" id="previous_invoice_id"  value="'+data.id+'"></div>'+
                                    '<label class="col-md-3 col-sm-3 col-xs-12">Previous Invoice Amount: <span id="previous_installment_amount">'+ Math.round(invoice_amount) +'</span> PKR</label>'+
                                    '<label class="col-md-3 col-sm-3 col-xs-12" id="current_installment_amount"></label>'+
                                '</div>';
                        $('.previous_invoices').empty().html(html);
                    }
                }
            }
        });
    }

    function calculate_previous_amount(){
        var previous_amount = $('#previous_installment_amount').text(); 
        var installment_amount = $('#installment_amount').text(); 
        
        var current_invoice_amount = (parseInt(previous_amount) + parseInt(installment_amount));
        $('#current_installment_amount').html('Total invoice amount is: <span id="current_installment_amount">' + Math.round(current_invoice_amount) + '</span> PKR' );
    }



    function Installments_already_created(val){
        var student_id = $('#student_id').val(); 
        var class_id = $('#class_id').val(); 
        var section_id = $('#section_id').val(); 
        var school_id = $('.fn_school_id').val();

        if(val > 1){
            $.ajax({       
                type   : "POST",
                url    : "<?php echo site_url('accounting/invoice/Installments_already_created'); ?>",
                data   : { school_id : school_id, class_id : class_id, section_id : section_id, student_id:student_id },               
                async  : false,
                success: function(response){                                                   
                    if(response)
                    {  
                        var data = JSON.parse(response);
                        if(data.no_of_installments){
                            $('#is_applicable_installments_main').hide();
                            $('#is_applicable_installments').val(data.no_of_installments);
                        }
                        console.log(data.installment_no);
                        // $("#fee_of_installment option").removeAttr('disabled');
                        // if(data.installment_no){
                            // if(data.installment_no == '1st'){
                            //     $("#fee_of_installment option[value=" + data.installment_no + "]").attr('disabled','true');
                            //     $("#fee_of_installment option[value='1st']").css({"background-color": "black", "color": "white"});
                            // }else if(data.installment_no == '2nd'){
                            //     $("#fee_of_installment option[value='1st']").attr('disabled','true');
                            //     $("#fee_of_installment option[value='1st']").css({"background-color": "black", "color": "white"}); 
                            //     $("#fee_of_installment option[value=" + data.installment_no + "]").css({"background-color": "black", "color": "white"}); 
                            //     $("#fee_of_installment option[value=" + data.installment_no + "]").attr('disabled','true');
                            // }
                            // else if(data.installment_no == '3rd'){
                            //     $("#fee_of_installment option[value='1st']").attr('disabled','true');
                            //     $("#fee_of_installment option[value='2nd']").attr('disabled','true');
                            //     $("#fee_of_installment option[value=" + data.installment_no + "]").attr('disabled','true');
                            //     $("#fee_of_installment option[value='1st']").css({"background-color": "black", "color": "white"}); 
                            //     $("#fee_of_installment option[value='2nd']").css({"background-color": "black", "color": "white"}); 
                            //     $("#fee_of_installment option[value='3rd']").css({"background-color": "black", "color": "white"}); 

                            // }else if(data.installment_no == '4th'){
                            //     $("#fee_of_installment option[value='1st']").attr('disabled','true');
                            //     $("#fee_of_installment option[value='2nd']").attr('disabled','true');
                            //     $("#fee_of_installment option[value='3rd']").attr('disabled','true');
                            //     $("#fee_of_installment option[value=" + data.installment_no + "]").attr('disabled','true');

                            //     $("#fee_of_installment option[value='1st']").css({"background-color": "black", "color": "white"}); 
                            //     $("#fee_of_installment option[value='2nd']").css({"background-color": "black", "color": "white"}); 
                            //     $("#fee_of_installment option[value='3rd']").css({"background-color": "black", "color": "white"}); 
                            //     $("#fee_of_installment option[value='4th']").css({"background-color": "black", "color": "white"}); 
                            // }

                            if(data.installment_no){
                                var next_installment = '';
                                if(data.installment_no == '1st'){
                                    next_installment = '2nd';
                                }else if(data.installment_no == '2nd'){
                                    next_installment = '3rd';
                                } else if(data.installment_no == '3rd'){
                                    next_installment = '4th';
                                }
                                $("#fee_of_installment option[value='"+ next_installment +"']").removeAttr('disabled');
                                $("#fee_of_installment option[value='"+ next_installment + "']").css({"background-color": "white", "color": "black"});

                                $("#fee_of_installment option[value='"+ data.installment_no + "']").attr('disabled','true'); 
                                $("#fee_of_installment option[value='"+ data.installment_no + "']").css({"background-color": "black", "color": "white"});
                            }else{
                                $("#fee_of_installment option[value='1st']").removeAttr('disabled');
                                $("#fee_of_installment option[value='1st']").css({"background-color": "white", "color": "black"});

                            }

                        // }

                        if(data.discount_id > 0){
                            $('#is_applicable_discount').val(data.discount_id);
                            $('#is_applicable_discount_single').val(data.discount_id);
                            $('#is_applicable_discount').attr('data-discount_val',data.amount);
                            $('#is_applicable_discount').attr('data-discount_type',data.discount_type);
                            get_discount_into_fee(data.discount_id, '');

                        }else{
                            $('#applied_discount').empty().html('Discount not found. Please select from addmission form.');
                        } 

                        console.log(data);
                        console.log(data.id);

                    } 
                }
            });  
        }
    }
    
    function discount_display(){
        var sList = "";
        var discount_id = $('#is_applicable_discount').val();       
        $('.fn_bulk_fee_item input[type=checkbox]').each(function () {
            var sThisVal = (this.checked ? "1" : "0");
            if(sThisVal == "1"){

                sList = $(this).attr("itemid");
                get_bulk_fee_amount(sList, discount_id);

            }
        });
        // console.log (sList);
        $('.bulk_discount_amt').show();
    }
   
   
   
   //common
   function reset_form_data(){
      $('.fn_income_head_id').prop('checked', false);
      $('#amount').val('0.00');
      $('#month').val('');
      $('#is_applicable_discount').prop('selectedIndex', 0);
      $('#paid_status').prop('selectedIndex', 0);
      $('#payment_method').prop('selectedIndex', 0);
      $('#fn_student_container').html('');
      $('.fn_check_button').hide();
   }
   
   
   
 /* Bulk invoice */ 
    function get_bulk_fee_type_by_school(section_id){
        var school_id = $('.fn_school_id').val();
        var class_id = $('#class_id').val();
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('accounting/invoice/get_bulk_fee_type_by_school'); ?>",
            data   : { school_id:school_id, class_id:class_id, section_id:section_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {  
                    $('.fn_bulk_fee_item').html(response);
               }
            }
        });   
   }
   
    function get_bulk_fee_amount(income_head_id, discount_id = null){
            
        var school_id = $('.fn_school_id').val();
        var class_id = $('#class_id').val(); 
        var section_id = $('#section_id').val(); 
        var check_status = '';
        
        if(!class_id){            
            toastr.error('<?php echo $this->lang->line('select_class'); ?>');
            $('#income_head_id_'+income_head_id).prop('checked', false);
            return false;
        }
        
        if($('#income_head_id_'+income_head_id).is(":checked")){
            check_status = true;           
        }else{
            check_status = false;
        }  
        
        // if(discount_id != null){
            var head_ids = [];     
            $("input[name^='income_head_id']").each(function() {  
                if($(this).is(':checked')){
                    head_ids += $(this).attr('itemid')+',';
                }
            });
        // }
       
                
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('accounting/invoice/get_bulk_fee_amount'); ?>",
            data   : { school_id:school_id, class_id:class_id, section_id: section_id, head_ids:head_ids, discount_id: discount_id},               
            async  : false,
            success: function(response){                                                   
               if(response == 'ay')
               {  
                    toastr.error('<?php echo $this->lang->line('set_academic_year_for_school'); ?>');
                    reset_form_data();                    
               }else{
                   $('#fn_student_container').html(response);
                   $('.fn_check_button').show(); 
               }
            }
        });  
    }

   // bulk
   $('#check_all').on('click', function(){
        $('#fn_student_container').children().find('input[type="checkbox"]').prop('checked', true);;
   });
   $('#uncheck_all').on('click', function(){
        $('#fn_student_container').children().find('input[type="checkbox"]').prop('checked', false);;
   });
  
 </script>
 
 
 
 <!-- datatable with buttons -->
 <script type="text/javascript">
        $(document).ready(function() {
          $('#datatable-responsive').DataTable( {
              dom: 'Bfrtip',
              iDisplayLength: 15,
              buttons: [
                  'copyHtml5',
                  'excelHtml5',
                  'csvHtml5',
                  'pdfHtml5',
                  'pageLength'
              ],
              search: true,              
              responsive: true
          });
        });
        
    $("#add").validate();     
    $("#bulk").validate();      
    $("#edit").validate(); 
    
     function get_invoice_by_school(url){          
        if(url){
            window.location.href = url; 
        }
    }  
    

    $(document).ready(function () {


$('#master').on('click', function(e) {
 if($(this).is(':checked',true))  
 {
    $(".sub_chk").prop('checked', true);  
 } else {  
    $(".sub_chk").prop('checked',false);  
 }  
});


$('.delete_all, .print_all').on('click', function(e) {


    var allVals = [];  
    $(".sub_chk:checked").each(function() {  
        allVals.push($(this).attr('data-id'));
    });  


    if(allVals.length <=0)  
    {  
        alert("Please select row.");  
    }  else {  


        var check = confirm("Are you sure you want to delete this row?");  
        if(check == true){  


            var join_selected_values = allVals.join(","); 


            $.ajax({
                url: $(this).data('url'),
                type: 'POST',
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                data: 'ids='+join_selected_values,
                success: function (data) {
                    // if (data['success']) {
                        $(".sub_chk:checked").each(function() {  
                            $(this).parents("tr").remove();
                        }); 

                        // location.reload(); 
                },
                error: function (data) {
                    alert(data.responseText);
                }
            });


          $.each(allVals, function( index, value ) {
              $('table tr').filter("[data-row-id='" + value + "']").remove();
          });
        }  
    }  
});

 


$(document).on('confirm', function (e) {
    var ele = e.target;
    e.preventDefault();


    $.ajax({
        url: ele.href,
        type: 'DELETE',
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        success: function (data) {
            if (data['success']) {
                $("#" + data['tr']).slideUp("slow");
                alert(data['success']);
            } else if (data['error']) {
                alert(data['error']);
            } else {
                alert('Whoops Something went wrong!!');
            }
        },
        error: function (data) {
            alert(data.responseText);
        }
    });


    return false;
});
});

</script>