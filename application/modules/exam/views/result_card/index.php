<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-file-text-o"></i><small> <?php echo $this->lang->line('manage_result_card'); ?></small></h3>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>                    
                </ul>
                <div class="clearfix"></div>
            </div>
                                             
            <div class="x_content quick-link no-print">
                 <?php $this->load->view('quick-link-exam'); ?> 
            </div>      
               
            <div class="x_content no-print"> 
                <?php echo form_open_multipart(site_url('exam/resultcard/index'), array('name' => 'resultcard', 'id' => 'resultcard', 'class' => 'form-horizontal form-label-left'), ''); ?>
                <div class="row">  
                    
                    <?php $this->load->view('layout/school_list_filter'); ?> 
                    
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('academic_year'); ?> <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="academic_year_id" id="academic_year_id" required="required">
                                <option value=""><?php echo $this->lang->line('select'); ?></option>
                                <?php foreach ($academic_years as $obj) { ?>
                                <?php $running = $obj->is_running ? ' ['.$this->lang->line('running_year').']' : ''; ?>
                                <option value="<?php echo $obj->id; ?>" <?php if(isset($academic_year_id) && $academic_year_id == $obj->id){ echo 'selected="selected"';} ?>><?php echo $obj->session_year; echo $running; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    
                    <?php if($this->session->userdata('role_id') != STUDENT ){ ?>    
                    
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div class="item form-group"> 
                            <?php $teacher_student_data = get_teacher_access_data('student'); ?>
                            <?php $guardian_class_data = get_guardian_access_data('class'); ?>
                            <div><?php echo $this->lang->line('class'); ?>  <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="class_id" id="class_id"  required="required" onchange="get_section_by_class(this.value,'');">
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                                <?php foreach ($classes as $obj) { ?>
                                    <?php if($this->session->userdata('role_id') == TEACHER && !in_array($obj->id, $teacher_student_data)){ continue;  ?>
                                    <?php }elseif($this->session->userdata('role_id') == GUARDIAN && !in_array($obj->id, $guardian_class_data)){ continue; } ?>
                                    <option value="<?php echo $obj->id; ?>" <?php if(isset($class_id) && $class_id == $obj->id){ echo 'selected="selected"';} ?>><?php echo $obj->name; ?></option>
                                <?php } ?>
                            </select>
                            <div class="help-block"><?php echo form_error('class_id'); ?></div>
                        </div>
                    </div>
                    
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('section'); ?>  <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="section_id" id="section_id" required="required" onchange="get_student_by_section(this.value,'');">                                
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                            </select>
                            <div class="help-block"><?php echo form_error('section_id'); ?></div>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('student'); ?>  <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="student_id" id="student_id" required="required">                                
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                            </select>
                            <div class="help-block"><?php echo form_error('student_id'); ?></div>
                        </div>
                    </div>
                    <?php } ?>    
                
                    <div class="col-md-1 col-sm-1 col-xs-12">
                        <div class="form-group"><br/>
                            <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('find'); ?></button>
                        </div>
                    </div>
                </div>
                <?php echo form_close(); ?>
            </div>

            <?php  if (isset($student) && !empty($student)) { ?>
            <div class="x_content">             
                <div class="row">
                    <div class="col-sm-6 col-xs-6  col-sm-offset-3 col-xs-offset-3  layout-box">
                        <p>
                            <?php if(isset($school)){ ?>
                            <h4><?php echo $school->school_name; ?></h4>
                            <p> <?php echo $school->address; ?></p>
                            <?php } ?>
                            <h4><?php echo $this->lang->line('result_card'); ?></h4> 
                            <div class="profile-pic">
                                <?php if ($student->photo != '') { ?>
                                   <img src="<?php echo UPLOAD_PATH; ?>/student-photo/<?php echo $student->photo; ?>" alt="" width="80" /> 
                                <?php } else { ?>
                                    <img src="<?php echo IMG_URL; ?>/default-user.png" alt="" width="45" /> 
                                <?php } ?>
                            </div>
                            <?php echo $this->lang->line('name'); ?> : <?php echo $student->name; ?><br/>
                            <?php echo $this->lang->line('class'); ?> : <?php echo $student->class_name; ?>,
                            <?php echo $this->lang->line('section'); ?> : <?php echo $student->section; ?>,
                            <?php echo $this->lang->line('roll_no'); ?> : <?php echo $student->roll_no; ?>
                        </p>
                    </div>
                </div>            
            </div>
             <?php } ?>
            
            <div class="x_content">
                <table id="datatable-responsive" class="table table-striped_ table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th rowspan="2"><?php echo $this->lang->line('sl_no'); ?></th>
                            <th rowspan="2"  width="12%"><?php echo $this->lang->line('subject'); ?></th>
                            <th colspan="2"><?php echo $this->lang->line('written'); ?></th>                                            
                            <th colspan="2"><?php echo $this->lang->line('tutorial'); ?></th>                                            
                            <th colspan="2"><?php echo $this->lang->line('practical'); ?></th>                                            
                            <th colspan="2"><?php echo $this->lang->line('viva'); ?></th>                                            
                            <th colspan="2"><?php echo $this->lang->line('total'); ?></th>                                            
                            <th rowspan="2"><?php echo $this->lang->line('letter_grade'); ?></th>                                            
                            <th rowspan="2"><?php echo $this->lang->line('grade_point'); ?></th>                                            
                            <th rowspan="2"><?php echo $this->lang->line('lowest'); ?></th>                                            
                            <th rowspan="2"><?php echo $this->lang->line('height'); ?></th>                                            
                            <th rowspan="2"><?php echo $this->lang->line('position'); ?></th>                                            
                        </tr>
                        <tr>                           
                            <th><?php echo $this->lang->line('mark'); ?></th>                                            
                            <th><?php echo $this->lang->line('obtain'); ?></th>                                            
                            <th><?php echo $this->lang->line('mark'); ?></th>                                            
                            <th><?php echo $this->lang->line('obtain'); ?></th>                                            
                            <th><?php echo $this->lang->line('mark'); ?></th>                                            
                            <th><?php echo $this->lang->line('obtain'); ?></th>                                            
                            <th><?php echo $this->lang->line('mark'); ?></th>                                            
                            <th><?php echo $this->lang->line('obtain'); ?></th>                                            
                            <th><?php echo $this->lang->line('mark'); ?></th>                                            
                            <th><?php echo $this->lang->line('obtain'); ?></th> 
                        </tr>
                    </thead>
                    <tbody id="fn_mark"> 
                       
                        <?php if (isset($exams) && !empty($exams)) { ?>
                        <?php foreach($exams as $ex){ ?>
                        
                            <tr style="background: #f9f9f9;">
                                <th colspan="17"><?php echo $ex->title; ?></th>
                            </tr>
                        
                            <?php
                            $exam_subjects = get_subject_list($school_id, $academic_year_id, $ex->id, $class_id, $section_id, $student_id);
                            $count = 1;
                            if (isset($exam_subjects) && !empty($exam_subjects)) {
                            ?>
                        
                            <?php foreach ($exam_subjects as $obj) { ?>
                            
                                <?php $exam = get_exam_result($school_id, $ex->id, $student_id, $academic_year_id, $class_id, $section_id); ?>
                                <?php if(@$exam->name == ''){ continue; } ?> 
                                
                                <?php $lh       = get_lowet_height_mark($school_id, $academic_year_id, $ex->id, $class_id, $section_id, $obj->subject_id ); ?>
                                <?php $position = get_position_in_subject($school_id, $academic_year_id, $ex->id, $class_id, $section_id, $obj->subject_id , $obj->obtain_total_mark); ?>
                                <tr>
                                    <td><?php echo $count++;  ?></td>
                                    <td><?php echo ucfirst($obj->subject); ?></td>
                                    <td><?php echo $obj->written_mark; ?></td>
                                    <td><?php echo $obj->written_obtain; ?></td>
                                    <td><?php echo $obj->tutorial_mark; ?></td>
                                    <td><?php echo $obj->tutorial_obtain; ?></td>
                                    <td><?php echo $obj->practical_mark; ?></td>
                                    <td><?php echo $obj->practical_obtain; ?></td>
                                    <td><?php echo $obj->viva_mark; ?></td>
                                    <td><?php echo $obj->viva_obtain; ?></td>
                                    <td><?php echo $obj->exam_total_mark; ?></td>
                                    <td><?php echo $obj->obtain_total_mark; ?></td>
                                    <td><?php echo $obj->name; ?></td>
                                    <td><?php echo $obj->point; ?></td>                               
                                    <td><?php echo $lh->lowest; ?></td>                               
                                    <td><?php echo $lh->height; ?></td>                               
                                    <td><?php echo $position; ?></td>                                
                                </tr>
                            <?php } ?>
                        <?php }else{ ?>
                                <tr>
                                    <td colspan="17" align="center"><?php echo $this->lang->line('no_data_found'); ?></td>
                                </tr>
                        <?php } ?>   
                                
                    <?php } ?>
                    <?php }else{ ?>
                            <tr>
                                <td colspan="17" align="center"><?php echo $this->lang->line('no_data_found'); ?></td>
                             </tr>    
                     <?php } ?>            
                    </tbody>
                </table> 
                
                <table id="datatable-responsive" class="table table-striped_ table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th rowspan="2"><?php echo $this->lang->line('sl_no'); ?></th>
                            <th rowspan="2" width="12%"><?php echo $this->lang->line('exam'); ?></th>
                            <th colspan="2"><?php echo $this->lang->line('written'); ?></th>                                            
                            <th colspan="2"><?php echo $this->lang->line('tutorial'); ?></th>                                            
                            <th colspan="2"><?php echo $this->lang->line('practical'); ?></th>                                            
                            <th colspan="2"><?php echo $this->lang->line('viva'); ?></th>                                            
                            <th colspan="2"><?php echo $this->lang->line('total'); ?></th>                                            
                            <th rowspan="2"><?php echo $this->lang->line('average_grade_point'); ?></th>                                            
                            <th rowspan="2"><?php echo $this->lang->line('letter_grade'); ?></th>                                            
                            <th rowspan="2"><?php echo $this->lang->line('lowest'); ?></th>                                            
                            <th rowspan="2"><?php echo $this->lang->line('height'); ?></th>                                            
                            <th rowspan="2"><?php echo $this->lang->line('position'); ?></th>                                            
                        </tr>
                        <tr>                           
                            <th><?php echo $this->lang->line('mark'); ?></th>                                            
                            <th><?php echo $this->lang->line('obtain'); ?></th>                                            
                            <th><?php echo $this->lang->line('mark'); ?></th>                                            
                            <th><?php echo $this->lang->line('obtain'); ?></th>                                            
                            <th><?php echo $this->lang->line('mark'); ?></th>                                            
                            <th><?php echo $this->lang->line('obtain'); ?></th>                                            
                            <th><?php echo $this->lang->line('mark'); ?></th>                                            
                            <th><?php echo $this->lang->line('obtain'); ?></th>                                            
                            <th><?php echo $this->lang->line('mark'); ?></th>                                            
                            <th><?php echo $this->lang->line('obtain'); ?></th> 
                        </tr>
                    </thead>
                    <?php
                    
                    $count = 1;
                    if (isset($exams) && !empty($exams)) {
                    ?>
                    
                        <?php foreach ($exams as $ex) { ?>
                    
                            <?php $exam = get_exam_result($school_id, $ex->id, $student_id, $academic_year_id, $class_id, $section_id); ?>
                            <?php if(@$exam->name == ''){ continue; } ?>
                    
                            <?php $mark = get_exam_wise_markt($school_id, $academic_year_id, $ex->id, $class_id, $section_id, $student_id ); ?>
                            <?php $obtain_total_mark = $mark->written_obtain+$mark->tutorial_obtain+$mark->practical_obtain+$mark->viva_obtain; ?>
                            <?php $rank = get_position_in_exam($school_id, $academic_year_id, $ex->id, $class_id, $section_id, $obtain_total_mark); ?>
                            <?php $exam_lh = get_lowet_height_result($school_id, $academic_year_id, $ex->id, $class_id, $section_id, $student_id); ?>

                            <tr>
                                <td><?php echo $count++;  ?></td>
                                <td><?php echo ucfirst($ex->title); ?></td>
                                <td><?php echo $mark->written_mark; ?></td>
                                <td><?php echo $mark->written_obtain; ?></td>
                                <td><?php echo $mark->tutorial_mark; ?></td>
                                <td><?php echo $mark->tutorial_obtain; ?></td>
                                <td><?php echo $mark->practical_mark; ?></td>
                                <td><?php echo $mark->practical_obtain; ?></td>
                                <td><?php echo $mark->viva_mark; ?></td>
                                <td><?php echo $mark->viva_obtain; ?></td>
                                <td><?php echo $mark->written_mark+$mark->tutorial_mark+$mark->practical_mark+$mark->viva_mark; ?></td>
                                <td><?php echo $obtain_total_mark; ?></td>
                                <td><?php echo @number_format($mark->point/$mark->total_subject,2); ?></td>                               
                                <td><?php echo @$exam->name; ?></td>
                                <td><?php echo $exam_lh->lowest; ?></td>                               
                                <td><?php echo $exam_lh->height; ?></td>                               
                                <td><?php echo $rank; ?></td>                                
                            </tr>                        
                        <?php } ?>   
                    <?php } ?>   
                </table>
                              
            </div> 
            
            <?php  if (isset($student) && !empty($student)) { ?>
            <table class="table table-striped_ table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th ><?php echo $this->lang->line('total_subject'); ?></th>                                            
                        <th ><?php echo $this->lang->line('total_mark'); ?></th>                                            
                        <th ><?php echo $this->lang->line('obtain_mark'); ?></th>                                            
                        <th ><?php echo $this->lang->line('percentage'); ?></th>                                            
                        <th ><?php echo $this->lang->line('average_grade_point'); ?></th>                                            
                        <th ><?php echo $this->lang->line('letter_grade'); ?></th>                                            
                        <th ><?php echo $this->lang->line('status'); ?></th>                                            
                        <th ><?php echo $this->lang->line('position_in_section'); ?></th>                                            
                        <th ><?php echo $this->lang->line('position_in_class'); ?></th>                                            
                        <th ><?php echo $this->lang->line('remark'); ?></th> 
                    </tr>
                 </thead>
                 <tbody>
                     
                    <?php $class_position = get_student_position($school_id, $academic_year_id, $class_id, $student_id); ?>    
                    <?php $section_position = get_student_position($school_id, $academic_year_id, $class_id,$student_id, $section_id); ?> 
                     
                     <tr>
                         <td><?php echo isset($final_result->total_subject) ? $final_result->total_subject : 0; ?></td> 
                         <td><?php echo isset($final_result->total_mark) ? $final_result->total_mark : 0; ?></td> 
                         <td><?php echo isset($final_result->total_obtain_mark) ? $final_result->total_obtain_mark : 0; ?></td> 
                         <td><?php echo isset($final_result->total_mark) && $final_result->total_mark > 0 ? number_format(@$final_result->total_obtain_mark/$final_result->total_mark*100, 2) : 0; ?>%</td> 
                         <td><?php echo isset($final_result->avg_grade_point) ? $final_result->avg_grade_point : 0; ?></td> 
                         <td><?php echo isset($final_result->grade) ? $final_result->grade : 0; ?></td> 
                         <td><?php echo isset($final_result->result_status)? $this->lang->line($final_result->result_status) : ''; ?></td> 
                         <td><?php echo $section_position; ?></td> 
                         <td><?php echo $class_position; ?></td> 
                         <td><?php echo isset($final_result->remark) ? $final_result->remark : '--'; ?></td>
                         
                     </tr>
                 </tbody>
            </table>
            <?php } ?>  
            <div class="rowt"><div class="col-lg-12">&nbsp;</div></div>
            <div class="rowt">
                <div class="col-xs-4 text-center signature">
                    <?php echo $this->lang->line('principal'); ?>
                </div>
                <div class="col-xs-2 text-center">
                    &nbsp;
                </div>
                <div class="col-xs-4 text-center signature">
                    <?php echo $this->lang->line('class_teacher'); ?>
                </div>
            </div>
            
            <div class="row no-print">
                <div class="col-xs-12 text-right">
                    <button class="btn btn-default " onclick="window.print();"><i class="fa fa-print"></i> <?php echo $this->lang->line('print'); ?></button>
                </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12 no-print">
                <div class="instructions"><strong><?php echo $this->lang->line('instruction'); ?>: </strong> <?php echo $this->lang->line('mark_sheet_instruction'); ?></div>
            </div>
        </div>
    </div>
</div>



<!-- Super admin js START  -->
 <script type="text/javascript">
        
    $("document").ready(function() {
         <?php if(isset($school_id) && !empty($school_id) &&  $this->session->userdata('role_id') == SUPER_ADMIN){ ?>               
            $(".fn_school_id").trigger('change');
         <?php } ?>
    });
    
    $('.fn_school_id').on('change', function(){
      
        var school_id = $(this).val();
        var academic_year_id = '';
        var class_id = '';
        
        <?php if(isset($school_id) && !empty($school_id)){ ?>
            academic_year_id =  '<?php echo $academic_year_id; ?>';     
            class_id =  '<?php echo $class_id; ?>';           
         <?php } ?> 
           
        if(!school_id){
           toastr.error('<?php echo $this->lang->line('select_school'); ?>');
           return false;
        }
       
       $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_academic_year_by_school'); ?>",
            data   : { school_id:school_id, academic_year_id:academic_year_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               { 
                    $('#academic_year_id').html(response);  
                    get_class_by_school(school_id,class_id); 
               }
            }
        });
    }); 

   function get_class_by_school(school_id, class_id){       
         
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
   }  
   
  </script>
<!-- Super admin js end -->


 <script type="text/javascript">     
  
    <?php if(isset($class_id) && isset($section_id)){ ?>
        get_section_by_class('<?php echo $class_id; ?>', '<?php echo $section_id; ?>');
    <?php } ?>
    
    function get_section_by_class(class_id, section_id){       
       
        var school_id = $('.fn_school_id').val();     
             
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
            }
        });         
    }
 
    <?php if(isset($class_id) && isset($section_id)){ ?>
        get_student_by_section('<?php echo $section_id; ?>', '<?php echo $student_id; ?>');
    <?php } ?>
    
    function get_student_by_section(section_id, student_id){       
        
        var school_id = $('#school_id').val();  
        if(!school_id){
           toastr.error('<?php echo $this->lang->line('select_school'); ?>');
           return false;
        } 
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_student_by_section'); ?>",
            data   : {school_id:school_id, section_id: section_id, student_id: student_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {
                  $('#student_id').html(response);
               }
            }
        });         
    }
 
  $("#marksheet").validate(); 
</script>
<style>
.table>thead>tr>th,.table>tbody>tr>td {
    padding: 2px;
}

</style>