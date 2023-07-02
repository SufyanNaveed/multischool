<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-slideshare"></i><small> <?php echo 'Opening Balance'; ?></small></h3>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>                    
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <div class="" data-example-id="togglable-tabs">
                    
                   
                    
                    <div class="tab-content">
                        <div  class="tab-pane fade in <?php if(isset($list)){ echo 'active'; }?>" id="tab_class_list" >
                            <div class="x_content">
                            <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th><?php echo $this->lang->line('sl_no'); ?></th>
                                        <?php if($this->session->userdata('role_id') == SUPER_ADMIN){ ?>
                                            <th><?php echo $this->lang->line('school'); ?></th>
                                        <?php } ?>
                                        <!-- <th><?php echo $this->lang->line('levels').' '.$this->lang->line('name'); ?></th> -->
                                        <th><?php echo 'Bank Name'; ?></th>
                                        <th><?php echo $this->lang->line('account').' '.$this->lang->line('name'); ?></th>
                                        <th><?php echo $this->lang->line('account').' no'; ?></th>
                                        <th><?php echo $this->lang->line('balance'); ?></th>
                                        <!-- <th><?php echo $this->lang->line('note'); ?></th> -->
                                        <!-- <th><?php echo $this->lang->line('action'); ?></th>   -->
                                    </tr>
                                </thead>
                                <tbody>   
                                    <?php $guardian_data       = get_guardian_access_data('class'); ?>
                                    <?php $teacher_access_data = get_teacher_access_data('student'); ?>
                                    <?php $count = 1; if(isset($account) && !empty($account)){ ?>
                                        <?php foreach($account as $obj){ ?>
                                        <?php 
                                            if($this->session->userdata('role_id') == GUARDIAN){
                                                if (!in_array($obj->id, $guardian_data)) {continue; }
                                            }elseif($this->session->userdata('role_id') == STUDENT){
                                                if ($obj->id != $this->session->userdata('class_id')) {continue; }
                                            }elseif($this->session->userdata('role_id') == TEACHER){
                                                if (!in_array($obj->id, $teacher_access_data)) {continue; }
                                            }
                                        ?>
                                        <tr>
                                            <td><?php echo $count++; ?></td>
                                            <?php if($this->session->userdata('role_id') == SUPER_ADMIN){ ?>
                                                <td><?php echo $obj->school_name; ?></td>
                                            <?php } ?>
                                            <!-- <td><?php echo $obj->level_name; ?></td> -->
                                            <td><?php echo $obj->bank_name; ?></td>
                                            <td><?php echo $obj->name; ?></td>
                                            <td><?php echo $obj->account_no; ?></td>
                                            <td><?php echo $obj->balance; ?></td>
                                            <!-- <td><?php echo $obj->note; ?></td>                                            -->
                                            <!-- <td>
                                                <?php if(has_permission(EDIT, 'accounts', 'account')){ ?>
                                                    <a href="<?php echo site_url('accounts/account/edit/'.$obj->id); ?>" class="btn btn-info btn-xs"><i class="fa fa-pencil-square-o"></i> <?php echo $this->lang->line('edit'); ?> </a>
                                                <?php } ?>
                                                <?php if(has_permission(DELETE, 'accounts', 'account')){ ?>
                                                    <a href="<?php echo site_url('accounts/account/delete/'.$obj->id); ?>" onclick="javascript: return confirm('<?php echo $this->lang->line('confirm_alert'); ?>');" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> <?php echo $this->lang->line('delete'); ?> </a>
                                                <?php } ?>
                                            </td> -->
                                        </tr>
                                        <?php } ?>
                                    <?php } ?>
                                </tbody>
                            </table>
                            </div>
                        </div>

                        <div  class="tab-pane fade in <?php if(isset($add)){ echo 'active'; }?>" id="tab_add_account">
                            <div class="x_content"> 
                               <?php echo form_open(site_url('accounts/account/add'), array('name' => 'add', 'id' => 'add', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                <?php $this->load->view('layout/school_list_form'); ?>
                                
                                <div class="account form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="level_id"><?php echo $this->lang->line('select_level'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12 fn_level_id" name="level_id" id="add_level_id" required="required">
                                            <option value="">--<?php echo $this->lang->line('select_level'); ?>--</option>
                                            <?php foreach($levels as $obj){ ?>
                                                <option value="<?php echo $obj->id; ?>" <?php echo isset($post['level_id']) && $post['level_id'] == $obj->id ?  'selected="selected"' : ''; ?>><?php echo $obj->level_name; ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="help-block"><?php echo form_error('level_id'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="account form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('account'); ?> <?php echo $this->lang->line('code'); ?> <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="account_no"  id="account_no" value="<?php echo isset($post['account_no']) ?  $post['account_no'] : ''; ?>" placeholder="<?php echo $this->lang->line('account'); ?> <?php echo $this->lang->line('code'); ?>" required="required" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('code'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="account form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('account'); ?> <?php echo $this->lang->line('name'); ?> <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="name"  id="add_name" value="<?php echo isset($post['name']) ?  $post['name'] : ''; ?>" placeholder="<?php echo $this->lang->line('account'); ?> <?php echo $this->lang->line('name'); ?>" required="required" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('name'); ?></div>
                                    </div>
                                </div>

                                <div class="account form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('account'); ?> Type<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select class="form-control col-md-7 col-xs-12" name="account_type" id="account_type" >
                                            <option value="Basic" <?php echo isset($post['account_type']) && $post['account_type'] == 'Basic' ?  'selected="selected"' : ''; ?>>Default - Basic</option>
                                            <option value="Assets" <?php echo isset($post['account_type']) && $post['account_type'] == 'Assets' ?  'selected="selected"' : ''; ?>>Assets - Assets</option>
                                            <option value="Expenses" <?php echo isset($post['account_type']) && $post['account_type'] == 'Expenses' ?  'selected="selected"' : ''; ?>>Expenses - Expenses</option>
                                            <option value="Income" <?php echo isset($post['account_type']) && $post['account_type'] == 'Income' ?  'selected="selected"' : ''; ?>>Income - Income</option>
                                            <option value="Liabilities" <?php echo isset($post['account_type']) && $post['account_type'] == 'Liabilities' ?  'selected="selected"' : ''; ?>>Liabilities - Liabilities</option>
                                            <option value="Equity" <?php echo isset($post['account_type']) && $post['account_type'] == 'Equity' ?  'selected="selected"' : ''; ?>>Equity - Equity</option>
                                        </select>
                                        <div class="help-block"><?php echo form_error('account_type'); ?></div>
                                    </div>
                                </div>

                                <div class="account form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="note"><?php echo $this->lang->line('note'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="note"  id="add_note" placeholder="<?php echo $this->lang->line('note'); ?>"><?php echo isset($post['note']) ?  $post['note'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('note'); ?></div>
                                    </div>
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

                        <?php if(isset($edit)){  ?>
                        <div class="tab-pane fade in active" id="tab_edit_account">
                            <div class="x_content"> 
                               <?php echo form_open(site_url('accounts/account/edit/'.$account->id), array('name' => 'edit', 'id' => 'edit', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                <?php $this->load->view('layout/school_list_edit_form'); ?> 
                                
                                <div class="account form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="level_id"><?php echo $this->lang->line('levels'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12 fn_level_id" name="level_id" id="edit_level_id" required="required">
                                            <option value="">--<?php echo $this->lang->line('select_level'); ?>--</option>
                                            <?php foreach($levels as $obj){ ?>
                                                <option value="<?php echo $obj->id; ?>" <?php echo isset($account->level_id) && $account->level_id == $obj->id ?  'selected="selected"' : ''; ?>><?php echo $obj->level_name; ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="help-block"><?php echo form_error('level_id'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="account form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('account'); ?> <?php echo $this->lang->line('code'); ?> <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="account_no"  id="account_no" value="<?php echo isset($account->account_no) ?  $account->account_no : ''; ?>" placeholder="<?php echo $this->lang->line('account'); ?> <?php echo $this->lang->line('code'); ?>" required="required" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('code'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="account form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('account'); ?> <?php echo $this->lang->line('name'); ?> <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="name"  id="add_name" value="<?php echo isset($account->name) ?  $account->name : ''; ?>" placeholder="<?php echo $this->lang->line('account'); ?> <?php echo $this->lang->line('name'); ?>" required="required" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('name'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="account form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('account'); ?> Type<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select class="form-control col-md-7 col-xs-12" name="account_type" id="account_type" >
                                            <option value="Basic" <?php echo isset($account->account_type) && $account->account_type == 'Basic' ?  'selected="selected"' : ''; ?>>Default - Basic</option>
                                            <option value="Assets" <?php echo isset($account->account_type) && $account->account_type == 'Assets' ?  'selected="selected"' : ''; ?>>Assets - Assets</option>
                                            <option value="Expenses" <?php echo isset($account->account_type) && $account->account_type == 'Expenses' ?  'selected="selected"' : ''; ?>>Expenses - Expenses</option>
                                            <option value="Income" <?php echo isset($account->account_type) && $account->account_type == 'Income' ?  'selected="selected"' : ''; ?>>Income - Income</option>
                                            <option value="Liabilities" <?php echo isset($account->account_type) && $account->account_type == 'Liabilities' ?  'selected="selected"' : ''; ?>>Liabilities - Liabilities</option>
                                            <option value="Equity" <?php echo isset($account->account_type) && $account->account_type == 'Equity' ?  'selected="selected"' : ''; ?>>Equity - Equity</option>
                                        </select>
                                        <div class="help-block"><?php echo form_error('account_type'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="account form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="note"><?php echo $this->lang->line('note'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="note"  id="note" placeholder="<?php echo $this->lang->line('note'); ?>"><?php echo isset($account->note) ?  $account->note : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('note'); ?></div>
                                    </div>
                                </div>
                                                             
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <input type="hidden" name="id" id="id" value="<?php echo $account->id; ?>" />
                                        <a href="<?php echo site_url('accounts/account/index'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                                        <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('update'); ?></button>
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