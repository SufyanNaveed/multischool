<?php 

$category = get_category_list();
$item = get_item_list(); 
$employees = get_employees_list();  


?>
                                
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-slideshare"></i><small> <?php echo $this->lang->line('manage_utilizations'); ?></small></h3>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>                    
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <div class="" data-example-id="togglable-tabs">
                    
                    <ul  class="nav nav-tabs bordered">
                        <li class="<?php if(isset($list)){ echo 'active'; }?>"><a href="#tab_class_list"   role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-list-ol"></i> <?php echo $this->lang->line('list'); ?></a> </li>
                        <?php if(has_permission(ADD, 'procurement', 'utilizations')){ ?>
                            <?php if(isset($edit)){ ?>
                                <li  class="<?php if(isset($add)){ echo 'active'; }?>"><a href="<?php echo site_url('procurement/utilizations/add'); ?>"  aria-expanded="false"><i class="fa fa-plus-square-o"></i> <?php echo $this->lang->line('add'); ?></a> </li>                          
                             <?php }else{ ?>
                                 <li  class="<?php if(isset($add)){ echo 'active'; }?>"><a href="#tab_add_utilizations"  role="tab"  data-toggle="tab" aria-expanded="false"><i class="fa fa-plus-square-o"></i> <?php echo $this->lang->line('add'); ?></a> </li>                          
                             <?php } ?>
                           
                        <?php } ?> 
                        <?php if(isset($edit)){ ?>
                            <li  class="active"><a href="#tab_edit_utilizations"  role="tab"  data-toggle="tab" aria-expanded="false"><i class="fa fa-pencil-square-o"></i> <?php echo $this->lang->line('edit'); ?></a> </li>                          
                        <?php } ?> 

                        <li class="li-class-list">
                       <?php if($this->session->userdata('role_id') == SUPER_ADMIN){  ?>                                 
                            <select  class="form-control col-md-7 col-xs-12" onchange="get_class_by_school(this.value);">
                                    <option value="<?php echo site_url('procurement/utilizations/index'); ?>">--<?php echo $this->lang->line('select_school'); ?>--</option> 
                                <?php foreach($schools as $obj ){ ?>
                                    <option value="<?php echo site_url('procurement/utilizations/index/'.$obj->id); ?>" <?php if(isset($filter_school_id) && $filter_school_id == $obj->id){ echo 'selected="selected"';} ?> > <?php echo $obj->school_name; ?></option>
                                <?php } ?>   
                            </select>
                        <?php } ?>  
                    </li> 
                            
                    </ul>
                    <br/>
                    
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
                                        <th><?php echo $this->lang->line('category'); ?></th>
                                        <th><?php echo $this->lang->line('item'); ?></th> 
                                        <th><?php echo 'Issue - Return Date'; ?></th> 
                                        <th><?php echo 'Isssue To'; ?></th> 
                                        <th><?php echo 'Isssue By'; ?></th> 
                                        <th><?php echo $this->lang->line('qty'); ?></th> 
                                        <th><?php echo $this->lang->line('note'); ?></th>
                                        <th><?php echo $this->lang->line('action'); ?></th>  
                                    </tr>
                                </thead>
                                <tbody>   
                                    <?php $guardian_data       = get_guardian_access_data('class'); ?>
                                    <?php $teacher_access_data = get_teacher_access_data('student'); ?>
                                    <?php $count = 1; if(isset($utilizations) && !empty($utilizations)){ ?>
                                        <?php foreach($utilizations as $obj){ ?>
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
                                            <td><?php echo $obj->category_name; ?></td>
                                            <td><?php echo $obj->item_name; ?></td> 
                                            <td><?php echo $obj->issue_date.' - '.$obj->reutrn_date; ?></td> 
                                            <td><?php echo $obj->issue_to; ?></td> 
                                            <td><?php echo $obj->issue_by; ?></td> 
                                            <td><?php echo $obj->qty; ?></td> 
                                            <td><?php echo $obj->note; ?></td>                                           
                                            <td>
                                                <?php if(has_permission(EDIT, 'procurement', 'utilizations')){ ?>
                                                    <a href="<?php echo site_url('procurement/utilizations/edit/'.$obj->id); ?>" class="btn btn-info btn-xs"><i class="fa fa-pencil-square-o"></i> <?php echo $this->lang->line('edit'); ?> </a>
                                                <?php } ?>
                                                <?php if(has_permission(DELETE, 'procurement', 'utilizations')){ ?>
                                                    <a href="<?php echo site_url('procurement/utilizations/delete/'.$obj->id); ?>" onclick="javascript: return confirm('<?php echo $this->lang->line('confirm_alert'); ?>');" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> <?php echo $this->lang->line('delete'); ?> </a>
                                                <?php } ?>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                    <?php } ?>
                                </tbody>
                            </table>
                            </div>
                        </div>

                        <div  class="tab-pane fade in <?php if(isset($add)){ echo 'active'; }?>" id="tab_add_utilizations">
                            <div class="x_content"> 
                               <?php echo form_open(site_url('procurement/utilizations/add'), array('name' => 'add', 'id' => 'add', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                <?php $this->load->view('layout/school_list_form'); ?>
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="category_id"><?php echo $this->lang->line('category'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12 fn_category_id" name="category_id" id="add_category_id" required="required">
                                            <option value="">--<?php echo $this->lang->line('select_category'); ?>--</option>
                                            <?php foreach($category as $obj){ ?>
                                                <option value="<?php echo $obj->id; ?>" <?php echo isset($post['category_id']) && $post['category_id'] == $obj->id ?  'selected="selected"' : ''; ?>><?php echo $obj->name; ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="help-block"><?php echo form_error('category_id'); ?></div>
                                    </div>
                                </div>

                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="item_id"><?php echo $this->lang->line('item'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12 fn_item_id" name="item_id" id="add_item_id" required="required">
                                        </select>
                                        <div class="help-block"><?php echo form_error('item_id'); ?></div>
                                    </div>
                                </div>

                                <div class="utilizations form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('qty'); ?> <span class="required">*</span></label>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="qty"  id="add_qty" value="<?php echo isset($post['qty']) ?  $post['qty'] : ''; ?>" placeholder="<?php echo $this->lang->line('qty'); ?>"  type="text" autocomplete="off" required="required">
                                        <div class="help-block"><?php echo form_error('qty'); ?></div>
                                    </div>
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12">                                
                                    <div class="utilizations form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo 'Issue Date'; ?> <span class="required">*</span></label>
                                        </label>
                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                        <input class="form-control col-md-7 col-xs-12" name="issue_date" id="issue_date" value="<?php echo isset($post['issue_date']) ?  $post['issue_date'] : ''; ?>" placeholder="Issue Date" required="required" type="text" autocomplete="off"> 
                                            <div class="help-block"><?php echo form_error('qty'); ?></div>
                                        </div>
                                        
                                        <label class="col-md-1 col-sm-1" style="width: 8.633333% !important;"for="name"><?php echo 'Return Date'; ?> </label>
                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                            <input class="form-control col-md-7 col-xs-12" name="return_date" id="return_date" value="<?php echo isset($post['return_date']) ?  $post['return_date'] : ''; ?>" placeholder="Return Date" type="text" autocomplete="off"> 
                                            <div class="help-block"><?php echo form_error('qty'); ?></div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="issue_to"><?php echo 'Issue To'; ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12 fn_issue_to" name="issue_to" id="add_issue_to" required="required">
                                            <option value="">--<?php echo 'Select User'; ?>--</option>
                                            <?php foreach($employees as $obj){ ?>
                                                <option value="<?php echo $obj->id; ?>" <?php echo isset($post['issue_to']) && $post['issue_to'] == $obj->id ?  'selected="selected"' : ''; ?>><?php echo $obj->emp_name.'&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;  '.$obj->designation; ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="help-block"><?php echo form_error('issue_to'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="utilizations form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="note"><?php echo $this->lang->line('note'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="note"  id="add_note" placeholder="<?php echo $this->lang->line('note'); ?>"><?php echo isset($post['note']) ?  $post['note'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('note'); ?></div>
                                    </div>
                                </div>
                               
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <a href="<?php echo site_url('procurement/utilizations'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                                        <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('submit'); ?></button>
                                    </div>
                                </div>
                                <?php echo form_close(); ?>
                            </div>                           
                            
                        </div>  

                        <?php if(isset($edit)){  ?>
                        <div class="tab-pane fade in active" id="tab_edit_utilizations">
                            <div class="x_content"> 
                               <?php echo form_open(site_url('procurement/utilizations/edit/'.$utilizations->id), array('name' => 'edit', 'id' => 'edit', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                <?php $this->load->view('layout/school_list_edit_form'); ?>
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="category_id"><?php echo $this->lang->line('category'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12 fn_category_id" name="category_id" id="edit_category_id" required="required">
                                            <option value="">--<?php echo $this->lang->line('select_category'); ?>--</option>
                                            <?php foreach($category as $obj){ ?>
                                                <option value="<?php echo $obj->id; ?>" <?php echo isset($utilizations->category_id) && $utilizations->category_id == $obj->id ?  'selected="selected"' : ''; ?>><?php echo $obj->name; ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="help-block"><?php echo form_error('category_id'); ?></div>
                                    </div>
                                </div>

                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="item_id"><?php echo $this->lang->line('item'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12 fn_item_id" name="item_id" id="edit_item_id" required="required">
                                            <?php foreach($item as $obj){ if(isset($utilizations->item_id) && $utilizations->item_id == $obj->id) { ?>
                                                <option value="<?php echo $obj->id; ?>" selected="selected"><?php echo $obj->name; ?></option>
                                            <?php } } ?>
                                        </select>
                                        <div class="help-block"><?php echo form_error('item_id'); ?></div>
                                    </div>
                                </div>

                                <div class="utilizations form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('qty'); ?> <span class="required">*</span></label>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="qty"  id="add_qty" value="<?php echo isset($utilizations->qty) ?  $utilizations->qty : ''; ?>" placeholder="<?php echo $this->lang->line('qty'); ?>"  type="text" autocomplete="off" required="required">
                                        <div class="help-block"><?php echo form_error('qty'); ?></div>
                                    </div>
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12">                                
                                    <div class="utilizations form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo 'Issue Date'; ?> <span class="required">*</span></label>
                                        </label>
                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                        <input class="form-control col-md-7 col-xs-12" name="issue_date" id="issue_date" value="<?php echo isset($utilizations->issue_date) ?  $utilizations->issue_date : ''; ?>" placeholder="Issue Date" required="required" type="text" autocomplete="off"> 
                                            <div class="help-block"><?php echo form_error('qty'); ?></div>
                                        </div>
                                        
                                        <label class="col-md-1 col-sm-1" style="width: 8.633333% !important;"for="name"><?php echo 'Return Date'; ?> </label>
                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                            <input class="form-control col-md-7 col-xs-12" name="return_date" id="return_date" value="<?php echo isset($utilizations->return_date) ?  $utilizations->return_date : ''; ?>" placeholder="Return Date" type="text" autocomplete="off"> 
                                            <div class="help-block"><?php echo form_error('qty'); ?></div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="issue_to"><?php echo 'Issue To'; ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-7 col-xs-12 fn_issue_to" name="issue_to" id="add_issue_to" required="required">
                                            <option value="">--<?php echo 'Select User'; ?>--</option>
                                            <?php foreach($employees as $obj){ ?>
                                                <option value="<?php echo $obj->id; ?>" <?php echo isset($utilizations->issue_to) && $utilizations->issue_to == $obj->id ?  'selected="selected"' : ''; ?>><?php echo $obj->emp_name.'&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;  '.$obj->designation; ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="help-block"><?php echo form_error('issue_to'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="utilizations form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="note"><?php echo $this->lang->line('note'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="note"  id="note" placeholder="<?php echo $this->lang->line('note'); ?>"><?php echo isset($utilizations->note) ?  $utilizations->note : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('note'); ?></div>
                                    </div>
                                </div>
                                                             
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <input type="hidden" name="id" id="id" value="<?php echo $utilizations->id; ?>" />
                                        <a href="<?php echo site_url('procurement/utilizations/index'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
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


<link href="<?php echo VENDOR_URL; ?>datepicker/datepicker.css" rel="stylesheet">
 <script src="<?php echo VENDOR_URL; ?>datepicker/datepicker.js"></script>
<!-- Super admin js START  -->
 <script type="text/javascript">

    $('#issue_date').datepicker();  
    $('#return_date').datepicker();
    $('#edit_issue_date').datepicker();  
    $('#edit_return_date').datepicker(); 
    
    $("document").ready(function() {
         <?php if(isset($class) && !empty($class)){ ?>
            $("#edit_school_id").trigger('change');
         <?php } ?>
    });
     
    $('.fn_category_id').on('change', function(){      
        var school_id = $('.fn_school_id').val();       
        var category_id ='';       
        var utilization_id ='';  
        <?php if(isset($utilizations) && !empty($utilizations->id)){ ?>         
            utilization_id = '<?php echo $utilizations->id; ?>';
            category_id = $('#edit_category_id').val();   
         <?php } else{ ?>
            category_id = $('#add_category_id').val();
        <?php }?>  

        if(!school_id){
           toastr.error('<?php echo $this->lang->line('select_school'); ?>');
           return false;
        }        
         $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_item_by_school'); ?>",
            data   : { school_id:school_id, category_id : category_id},               
            async  : false,
            success: function(response){                                                   
                if(response)
                {    
                   if(utilization_id){
                       $('#edit_item_id').html(response);
                   }else{
                       $('#add_item_id').html(response); 
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
</script>