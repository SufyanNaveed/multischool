<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-envelope-o"></i><small> <?php echo $this->lang->line('manage_due_fee_email'); ?></small></h3>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>                    
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content quick-link">
                  <?php $this->load->view('quick-link'); ?>   
            </div>
            
            <div class="x_content">
                <div class="" data-example-id="togglable-tabs">
                    
                    <ul  class="nav nav-tabs bordered">
                        <li class="<?php if(isset($list)){ echo 'active'; }?>"><a href="#tab_email_list"   role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-list-ol"></i> <?php echo $this->lang->line('list'); ?></a> </li>
                        <li  class="<?php if(isset($add)){ echo 'active'; }?>"><a href="#tab_add_email"  role="tab"  data-toggle="tab" aria-expanded="false"><i class="fa fa-plus-square-o"></i> <?php echo $this->lang->line('send_email'); ?></a> </li>                          
                        
                        <li class="li-class-list">
                        <?php if($this->session->userdata('role_id') == SUPER_ADMIN){  ?>                                 
                             <select  class="form-control col-md-7 col-xs-12" onchange="get_email_by_school(this.value);">
                                     <option value="<?php echo site_url('accounting/duefeeemail/index'); ?>">--<?php echo $this->lang->line('select_school'); ?>--</option> 
                                 <?php foreach($schools as $obj ){ ?>
                                     <option value="<?php echo site_url('accounting/duefeeemail/index/'.$obj->id); ?>" <?php if(isset($filter_school_id) && $filter_school_id == $obj->id){ echo 'selected="selected"';} ?> > <?php echo $obj->school_name; ?></option>
                                 <?php } ?>   
                             </select>
                         <?php } ?>  
                         </li>
                         
                    </ul>
                    <br/>
                    
                    <div class="tab-content">
                        
                        <div  class="tab-pane fade in <?php if(isset($list)){ echo 'active'; }?>" id="tab_email_list" >
                            <div class="x_content">
                            <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th><?php echo $this->lang->line('sl_no'); ?></th>
                                        <?php if($this->session->userdata('role_id') == SUPER_ADMIN){ ?>
                                            <th><?php echo $this->lang->line('school'); ?></th>
                                        <?php } ?>
                                        <th><?php echo $this->lang->line('receiver_type'); ?></th>
                                        <th><?php echo $this->lang->line('subject'); ?></th>
                                        <th><?php echo $this->lang->line('time'); ?></th>
                                        <th><?php echo $this->lang->line('action'); ?></th>                                            
                                    </tr>
                                </thead>
                                <tbody>   
                                    <?php $count = 1; if(isset($emails) && !empty($emails)){ ?>
                                        <?php foreach($emails as $obj){ ?>                                       
                                        <tr>
                                            <td><?php echo $count++; ?></td>
                                            <?php if($this->session->userdata('role_id') == SUPER_ADMIN){ ?>
                                                <td><?php echo $obj->school_name; ?></td>
                                            <?php } ?>
                                            <td><?php echo $obj->receiver_type; ?></td>
                                            <td><?php echo $obj->subject; ?></td>                                           
                                            <td><?php echo get_nice_time($obj->created_at); ?></td>                                           
                                            <td>
                                                <?php if(has_permission(VIEW, 'accounting', 'duefeeemail')){ ?>
                                                    <a  onclick="get_email_modal(<?php echo $obj->id; ?>);"  data-toggle="modal" data-target=".bs-email-modal-lg"  class="btn btn-success btn-xs"><i class="fa fa-eye"></i> <?php echo $this->lang->line('view'); ?> </a>
                                                 <?php } ?>
                                                <?php if(has_permission(DELETE, 'accounting', 'duefeeemail')){ ?>
                                                    <a href="<?php echo site_url('accounting/duefeeemail/delete/'.$obj->id); ?>" onclick="javascript: return confirm('<?php echo $this->lang->line('confirm_alert'); ?>');" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> <?php echo $this->lang->line('delete'); ?> </a>
                                                 <?php } ?>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                    <?php } ?>
                                </tbody>
                            </table>
                            </div>
                        </div>

                        <div  class="tab-pane fade in <?php if(isset($add)){ echo 'active'; }?>" id="tab_add_email">
                            <div class="x_content"> 
                               <?php echo form_open_multipart(site_url('accounting/duefeeemail/add'), array('name' => 'add', 'id' => 'add', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                <?php $this->load->view('layout/school_list_form'); ?>
                                
                                <div class="item form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="role_id"><?php echo $this->lang->line('receiver_type'); ?> / <?php echo $this->lang->line('role'); ?><span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-12 col-xs-12"  name="role_id"  id="role_id" required="required" onchange="get_user_by_role(this.value, '');">
                                            <option value="">--<?php echo $this->lang->line('select'); ?> --</option> 
                                            <?php foreach($roles as $obj ){  ?>
                                                <?php if($obj->id == STUDENT || $obj->id == GUARDIAN){ ?>
                                                    <option value="<?php echo $obj->id; ?>" ><?php echo $obj->name; ?></option>
                                                <?php } ?>
                                            <?php } ?>                                            
                                        </select>
                                        <div class="help-block"><?php echo form_error('role_id'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="item form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="class_id"><?php echo $this->lang->line('class'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-12 col-xs-12"  name="class_id"  id="class_id" required="required" onchange="get_user('', this.value,'');">
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
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="receiver_id"><?php echo $this->lang->line('due_fee_student'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-12 col-xs-12"  name="receiver_id"  id="receiver_id" required="required" >
                                            <option value="">--<?php echo $this->lang->line('select'); ?>--</option>                                                                                         
                                        </select>
                                        <div class="help-block"><?php echo form_error('receiver_id'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="item form-group">  
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="template"><?php echo $this->lang->line('template'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select  class="form-control col-md-12 col-xs-12"  name="template"  id="fn_template"  onchange="get_email_template_by_id(this.value)">
                                            <option itemid="" value="">--<?php echo $this->lang->line('select'); ?>--</option>                                                                                         
                                        </select>
                                        <div class="help-block"><?php echo form_error('template'); ?></div>
                                    </div>
                                </div>                                    
                          
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="subject"><?php echo $this->lang->line('subject'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="subject"  id="subject" value="" placeholder="<?php echo $this->lang->line('subject'); ?>" required="required" type="text"  autocomplete="off">
                                        <div class="help-block"><?php echo form_error('subject'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="body"><?php echo $this->lang->line('email_body'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control" name="body" id="body" required="required" placeholder="<?php echo $this->lang->line('email_body'); ?>"></textarea>
                                        <div class="help-block"><?php echo form_error('body'); ?></div>
                                    </div>
                                </div>  
                                
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12"><?php echo $this->lang->line('dynamic_tag'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12"  id="fn_tag"></div>
                                </div>                     
                               
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <a href="<?php echo site_url('accounting/duefeeemail/index'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
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


<div class="modal fade bs-email-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
          <h4 class="modal-title"><?php echo $this->lang->line('detail_information'); ?></h4>
        </div>
        <div class="modal-body fn_email_data">            
        </div>       
      </div>
    </div>
</div>
<script type="text/javascript">
         
    function get_email_modal(email_id){
         
        $('.fn_email_data').html('<p style="padding: 20px;"><p style="padding: 20px;text-align:center;"><img src="<?php echo IMG_URL; ?>loading.gif" /></p>');
        $.ajax({       
          type   : "POST",
          url    : "<?php echo site_url('accounting/duefeeemail/get_single_email'); ?>",
          data   : {email_id : email_id},  
          success: function(response){                                                   
             if(response)
             {
                $('.fn_email_data').html(response);
             }
          }
       });
    }
</script>

 
 <link href="<?php echo VENDOR_URL; ?>editor/jquery-te-1.4.0.css" rel="stylesheet">
 <script type="text/javascript" src="<?php echo VENDOR_URL; ?>editor/jquery-te-1.4.0.min.js"></script>
 <script type="text/javascript">
    
    $('#body').jqte();
    
    $('#add_school_id').on('change', function(){
        $('#class_id').prop('selectedIndex',0);
        $('#role_id').prop('selectedIndex',0);
        $('#receiver_id').prop('selectedIndex',0);
        
        get_class_by_school();        
    });
    
    // done
    function get_user_by_role(role_id, user_id){       
      
       // role_id = '<?php echo STUDENT; ?>';
        
        $('#receiver_id').html('<option value="">--<?php echo $this->lang->line('select'); ?>--</option>');       
        var school_id = $('.fn_school_id').val(); 
        if(!school_id){
           toastr.error('<?php echo $this->lang->line('select_school'); ?>');
           return false;
        } 
        
        // role_id = $('#role_id').val(); 
        
        get_tag_by_role(school_id, role_id);
        get_email_template_by_role(school_id, role_id);
   }
   
   // done
   function get_user(role_id, class_id, user_id){
       
       role_id = '<?php echo STUDENT; ?>';       
       var school_id = $('#add_school_id').val();
       
        if(!school_id){
           toastr.error('<?php echo $this->lang->line('select_school'); ?>');
           return false;
        }
       
       $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_user_by_role'); ?>",
            data   : {school_id:school_id, role_id : role_id , class_id: class_id, user_id:user_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {
                   $('#receiver_id').html(response); 
               }
            }
        }); 
   }
   
   
   // done
   function get_class_by_school(){
        
        var school_id = $('#add_school_id').val();
        if(!school_id){
           toastr.error('<?php echo $this->lang->line('select_school'); ?>');
           return false;
        }
        
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_class_by_school'); ?>",
            data   : { school_id:school_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {  
                    $('#class_id').html(response);                     
               }
            }
        });
   }
 
  //done
   function get_tag_by_role(school_id, role_id){
   
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('/ajax/get_tag_by_role'); ?>",
            data   : {school_id:school_id, role_id : role_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {
                   $('#fn_tag').html(response+'[due_amount]'); 
               }
            }
        }); 
   }
   
   // done
   function get_email_template_by_role(school_id, role_id){   
       
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_email_template_by_role'); ?>",
            data   : { role_id : role_id, school_id: school_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {
                   $('#fn_template').html(response); 
               }
            }
        }); 
    }
   
   

  
   function get_email_template_by_id(template_id){ 
   
        $('.jqte_editor').html('');
        var school_id = $('#add_school_id ').val();
        if( !school_id){            
           toastr.error('<?php echo $this->lang->line('select_school'); ?>');
           return false;
        }  
      
        //$('#body').html(template);
       
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_email_template_by_id'); ?>",
            data   : { template_id : template_id, school_id: school_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {
                   $('.jqte_editor').html(response);
               }
            }
        }); 
        
   }
   
   
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
    
    function get_email_by_school(url){          
        if(url){
            window.location.href = url; 
        }
    }  
    
</script> 
