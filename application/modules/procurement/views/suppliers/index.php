<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-slideshare"></i><small> <?php echo $this->lang->line('manage_suppliers'); ?></small></h3>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>                    
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <div class="" data-example-id="togglable-tabs">
                    
                    <ul  class="nav nav-tabs bordered">
                        <li class="<?php if(isset($list)){ echo 'active'; }?>"><a href="#tab_class_list"   role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-list-ol"></i> <?php echo $this->lang->line('list'); ?></a> </li>
                        <?php if(has_permission(ADD, 'procurement', 'suppliers')){ ?>
                            <?php if(isset($edit)){ ?>
                                <li  class="<?php if(isset($add)){ echo 'active'; }?>"><a href="<?php echo site_url('procurement/suppliers/add'); ?>"  aria-expanded="false"><i class="fa fa-plus-square-o"></i> <?php echo $this->lang->line('add'); ?></a> </li>                          
                             <?php }else{ ?>
                                 <li  class="<?php if(isset($add)){ echo 'active'; }?>"><a href="#tab_add_suppliers"  role="tab"  data-toggle="tab" aria-expanded="false"><i class="fa fa-plus-square-o"></i> <?php echo $this->lang->line('add'); ?></a> </li>                          
                             <?php } ?>
                           
                        <?php } ?> 
                        <?php if(isset($edit)){ ?>
                            <li  class="active"><a href="#tab_edit_suppliers"  role="tab"  data-toggle="tab" aria-expanded="false"><i class="fa fa-pencil-square-o"></i> <?php echo $this->lang->line('edit'); ?></a> </li>                          
                        <?php } ?> 

                        <li class="li-class-list">
                       <?php if($this->session->userdata('role_id') == SUPER_ADMIN){  ?>                                 
                            <select  class="form-control col-md-7 col-xs-12" onchange="get_class_by_school(this.value);">
                                    <option value="<?php echo site_url('procurement/suppliers/index'); ?>">--<?php echo $this->lang->line('select_school'); ?>--</option> 
                                <?php foreach($schools as $obj ){ ?>
                                    <option value="<?php echo site_url('procurement/suppliers/index/'.$obj->id); ?>" <?php if(isset($filter_school_id) && $filter_school_id == $obj->id){ echo 'selected="selected"';} ?> > <?php echo $obj->school_name; ?></option>
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
                                        <th><?php echo $this->lang->line('suppliers').' '.$this->lang->line('name'); ?></th>
                                        <th><?php echo $this->lang->line('phone'); ?></th>
                                        <th><?php echo $this->lang->line('email'); ?></th>
                                        <th><?php echo $this->lang->line('address'); ?></th>
                                        <th><?php echo $this->lang->line('contact_person_name'); ?></th>
                                        <th><?php echo $this->lang->line('contact_person_phone'); ?></th>
                                        <th><?php echo $this->lang->line('contact_person_email'); ?></th>
                                        <th><?php echo $this->lang->line('note'); ?></th>
                                        <th><?php echo $this->lang->line('action'); ?></th>  
                                    </tr>
                                </thead>
                                <tbody>   
                                    <?php $guardian_data       = get_guardian_access_data('class'); ?>
                                    <?php $teacher_access_data = get_teacher_access_data('student'); ?>
                                    <?php $count = 1; if(isset($suppliers) && !empty($suppliers)){ ?>
                                        <?php foreach($suppliers as $obj){ ?>
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
                                            <td><?php echo $obj->name; ?></td>
                                            <td><?php echo $obj->phone; ?></td>
                                            <td><?php echo $obj->email; ?></td>
                                            <td><?php echo $obj->address; ?></td>
                                            <td><?php echo $obj->contact_person_name; ?></td>
                                            <td><?php echo $obj->contact_person_phone; ?></td>
                                            <td><?php echo $obj->contact_person_email; ?></td>
                                            <td><?php echo $obj->note; ?></td>                                           
                                            <td>
                                                <?php if(has_permission(EDIT, 'procurement', 'suppliers')){ ?>
                                                    <a href="<?php echo site_url('procurement/suppliers/edit/'.$obj->id); ?>" class="btn btn-info btn-xs"><i class="fa fa-pencil-square-o"></i> <?php echo $this->lang->line('edit'); ?> </a>
                                                <?php } ?>
                                                <?php if(has_permission(DELETE, 'procurement', 'suppliers')){ ?>
                                                    <a href="<?php echo site_url('procurement/suppliers/delete/'.$obj->id); ?>" onclick="javascript: return confirm('<?php echo $this->lang->line('confirm_alert'); ?>');" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> <?php echo $this->lang->line('delete'); ?> </a>
                                                <?php } ?>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                    <?php } ?>
                                </tbody>
                            </table>
                            </div>
                        </div>

                        <div  class="tab-pane fade in <?php if(isset($add)){ echo 'active'; }?>" id="tab_add_suppliers">
                            <div class="x_content"> 
                               <?php echo form_open(site_url('procurement/suppliers/add'), array('name' => 'add', 'id' => 'add', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                <?php $this->load->view('layout/school_list_form'); ?>
                                
                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('name'); ?> <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="name"  id="add_name" value="<?php echo isset($post['name']) ?  $post['name'] : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('name'); ?>" required="required" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('name'); ?></div>
                                    </div>
                                </div>

                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('phone'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="phone"  id="add_phone" value="<?php echo isset($post['phone']) ?  $post['phone'] : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('phone'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('phone'); ?></div>
                                    </div>
                                </div>

                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('email'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="email"  id="add_email" value="<?php echo isset($post['email']) ?  $post['email'] : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('email'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('email'); ?></div>
                                    </div>
                                </div>

                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('contact_person_name'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="contact_person_name"  id="add_contact_person_name" value="<?php echo isset($post['contact_person_name']) ?  $post['contact_person_name'] : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('contact_person_name'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('contact_person_name'); ?></div>
                                    </div>
                                </div>


                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"> <?php echo $this->lang->line('address'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="address"  id="add_address" value="<?php echo isset($post['address']) ?  $post['address'] : ''; ?>" placeholder="<?php echo $this->lang->line('address'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('address'); ?></div>
                                    </div>
                                </div>


                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('contact_person_phone'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="contact_person_phone"  id="add_contact_person_phone" value="<?php echo isset($post['contact_person_phone']) ?  $post['contact_person_phone'] : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('contact_person_phone'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('contact_person_phone'); ?></div>
                                    </div>
                                </div>

                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('contact_person_email'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="contact_person_email"  id="add_contact_person_email" value="<?php echo isset($post['contact_person_email']) ?  $post['contact_person_email'] : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('contact_person_email'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('contact_person_email'); ?></div>
                                    </div>
                                </div>

                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="note"><?php echo $this->lang->line('note'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="note"  id="add_note" placeholder="<?php echo $this->lang->line('note'); ?>"><?php echo isset($post['note']) ?  $post['note'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('note'); ?></div>
                                    </div>
                                </div>
                               
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <a href="<?php echo site_url('procurement/suppliers'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                                        <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('submit'); ?></button>
                                    </div>
                                </div>
                                <?php echo form_close(); ?>
                            </div>                           
                            
                        </div>  

                        <?php if(isset($edit)){  ?>
                        <div class="tab-pane fade in active" id="tab_edit_suppliers">
                            <div class="x_content"> 
                               <?php echo form_open(site_url('procurement/suppliers/edit/'.$suppliers->id), array('name' => 'edit', 'id' => 'edit', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                <?php $this->load->view('layout/school_list_edit_form'); ?> 
                                
                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('name'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="name"  id="add_name" value="<?php echo isset($suppliers->name) ?  $suppliers->name : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('name'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('name'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('phone'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="phone"  id="add_phone" value="<?php echo isset($suppliers->phone) ?  $suppliers->phone : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('phone'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('phone'); ?></div>
                                    </div>
                                </div>

                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('email'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="email"  id="add_email" value="<?php echo isset($suppliers->email) ?  $suppliers->email : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('email'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('email'); ?></div>
                                    </div>
                                </div>

                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('contact_person_name'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="contact_person_name"  id="add_contact_person_name" value="<?php echo isset($suppliers->contact_person_name) ?  $suppliers->contact_person_name : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('contact_person_name'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('contact_person_name'); ?></div>
                                    </div>
                                </div>


                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"> <?php echo $this->lang->line('address'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="address"  id="add_address" value="<?php echo isset($suppliers->address) ?  $suppliers->address : ''; ?>" placeholder="<?php echo $this->lang->line('address'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('address'); ?></div>
                                    </div>
                                </div>


                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('contact_person_phone'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="contact_person_phone"  id="add_contact_person_phone" value="<?php echo isset($suppliers->contact_person_phone) ?  $suppliers->contact_person_phone : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('contact_person_phone'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('contact_person_phone'); ?></div>
                                    </div>
                                </div>

                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"><?php echo $this->lang->line('contact_person_email'); ?> 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="contact_person_email"  id="add_contact_person_email" value="<?php echo isset($suppliers->contact_person_email) ?  $suppliers->contact_person_email : ''; ?>" placeholder="<?php echo $this->lang->line('suppliers'); ?> <?php echo $this->lang->line('contact_person_email'); ?>"  type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('contact_person_email'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="suppliers form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="note"><?php echo $this->lang->line('note'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="note"  id="note" placeholder="<?php echo $this->lang->line('note'); ?>"><?php echo isset($suppliers->note) ?  $suppliers->note : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('note'); ?></div>
                                    </div>
                                </div>
                                                             
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <input type="hidden" name="id" id="id" value="<?php echo $suppliers->id; ?>" />
                                        <a href="<?php echo site_url('procurement/suppliers/index'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
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