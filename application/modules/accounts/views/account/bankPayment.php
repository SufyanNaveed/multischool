<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-slideshare"></i><small> <?php echo 'Bank Payment'; ?></small></h3>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>                    
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <div class="" data-example-id="togglable-tabs">
                    <div class="tab-content">
                        <div  class="tab-pane fade in active" id="tab_add_account">
                            <div class="x_content"> 
                                <?php echo form_open(site_url('accounts/account/add'), array('name' => 'add', 'id' => 'add', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                
                                
                                <div class="form-group row">
                                    <label for="vo_no" class="col-sm-2 col-form-label"><?php echo 'Voucher No'; ?></label>
                                    <div class="col-sm-4">
                                        <input type="text" name="txtVNo" id="txtVNo" value="<?php if(!empty($voucher_no[0]['voucher'])){
                                        $vn = substr($voucher_no[0]['voucher'],3)+1;
                                        echo $voucher_n = 'BM-'.$vn;
                                        }else{
                                        echo $voucher_n = 'BM-1';
                                        } ?>" class="form-control" readonly>
                                    </div>
                                </div> 

                                <div class="form-group row">
                                    <label class="col-form-label col-sm-2" for="school_id"><?php echo $this->lang->line('school_name'); ?> <span class="required">*</span></label>
                                    <div class="col-sm-4">
                                        <select  class="form-control col-md-7 col-xs-12 fn_school_id" name="school_id" id="add_school_id" required="required">
                                            <option value="">--<?php echo $this->lang->line('select_school'); ?>--</option>
                                            <?php foreach($schools as $obj){ ?>
                                                <option value="<?php echo $obj->id; ?>" <?php if(isset($school_id) && $school_id == $obj->id){echo 'selected="selected"';} ?>><?php echo $obj->school_name; ?></option>
                                            <?php } ?>
                                        </select>
                                        <!-- <div class="help-block"><?php echo form_error('school_id'); ?></div> -->
                                    </div>
                                </div> 
                                
                                <div class="form-group row">
                                    <label for="date" class="col-sm-2 col-form-label"><?php echo 'Date'?><i class="text-danger">*</i></label>
                                    <div class="col-sm-4">
                                        <input type="date" name="dtpDate" id="dtpDated" class="form-control datepicker" value="<?php  echo date('Y-m-d');?>" required>
                                    </div>
                                </div> 
                                <div class="form-group row">
                                    <label for="payment_type" class="col-sm-2 col-form-label"> Payment Type<i class="text-danger">*</i></label>
                                    <div class="col-sm-4">
                                        <select name="paytype" class="form-control" required="" onchange="bank_paymet(this.value)" tabindex="3">
                                            <option value="1">Cash Payment</option>
                                            <option value="2">Bank Payment</option> 
                                        </select> 
                                    </div> 
                                </div>

                                
                                <div class="form-group row" >
                                    <label for="bank" class="col-sm-2 col-form-label"> From Account</label>
                                    <div class="col-sm-4">
                                        <select name="from_bank_id" class="form-control bankpayment "  id="from_bank_id">
                                            <option value="">Select Account</option> 
                                            <?php if($accounts){ foreach($accounts as $key => $value) { ?>
                                                <option value="<?php echo $value['id']; ?>"><?php echo $value['name']; ?></option>
                                            <?php } } ?>
                                        </select> 
                                    </div> 
                                </div>
                                
                                <div class="form-group row">
                                    <label for="txtRemarks" class="col-sm-2 col-form-label"><?php echo 'Remarks'?></label>
                                    <div class="col-sm-4">
                                    <textarea  name="txtRemarks" id="txtRemarks" class="form-control"></textarea>
                                    </div>
                                </div> 
                            
                                <div class="table-responsive">
                                        <table class="table table-striped table-hover" id="debtAccVoucher"> 
                                            <thead>
                                                <tr>
                                            <th class="text-center">Account <i class="text-danger">*</i></th>
                                            <th class="text-center">Code</th>
                                            <th class="text-center">Amount<i class="text-danger">*</i></th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody id="debitvoucher">
                                            
                                                <tr>
                                                    <td class="" width="300">  
                                                        <select name="to_bank_id" id="to_bank_id" class="form-control" required>
                                                            <option value="">Select Account</option>
                                                            <?php if($accounts){ foreach($accounts as $key => $value) { ?>
                                                                <option value="<?php echo $value['id']; ?>" data-code="<?php echo $value['account_no']; ?>"><?php echo $value['name']; ?></option>
                                                            <?php } } ?> 
                                                        </select>

                                                    </td>
                                                    <td><input type="text" name="txtCode" value="" class="form-control "  id="txtCode_1" readonly=""></td>
                                                    <td><input type="number" name="txtAmount" value="" class="form-control total_price text-right"  id="txtAmount_1"  required>
                                                    </td>
                                            
                                                </tr>                              
                                        
                                            </tbody>                               
                                    
                                        </table>
                                    </div>
                        
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <a href="<?php echo site_url('accounts/account'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                                        <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('submit'); ?></button>
                                    </div>
                                </div>
                                <?php echo form_close(); ?>
                            </div>                           
                            
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Super admin js START  -->
 <script type="text/javascript">
     
    $("document").ready(function() {
         <?php if(isset($class) && !empty($class)){ ?>
            $("#edit_school_id").trigger('change');
         <?php } ?>
    });
     
    $('.fn_school_id').on('change', function(){
      
        var school_id = $(this).val();       
        var teacher_id = '';
        <?php if(isset($class) && !empty($class)){ ?>         
            teacher_id =  '<?php echo $class->teacher_id; ?>';
         <?php } ?> 
        
        if(!school_id){
           toastr.error('<?php echo $this->lang->line('select_school'); ?>');
           return false;
        }
        
         $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_teacher_by_school'); ?>",
            data   : { school_id:school_id, teacher_id : teacher_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {    
                   if(teacher_id){
                       $('#edit_teacher_id').html(response);
                   }else{
                       $('#add_teacher_id').html(response); 
                   }
               }
            }
        });       
     
    }); 

    
  </script>
  <!-- Super admin js end -->

<!-- datatable with buttons -->
 <script type="text/javascript">
        $(document).ready(function() {
            
          $('#datatable-responsive').DataTable({
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
    $("#edit").validate(); 
    
    function get_class_by_school(url){          
        if(url){
            window.location.href = url; 
        }
    }  
    
</script>