<?php if($this->session->userdata('role_id') == SUPER_ADMIN){ ?>
<?php $schools = get_school_list(); ?>
<div class="col-md-3 col-sm-3 col-xs-12">
    <div class="item form-group"> 
        <div><?php echo $this->lang->line('school_name'); ?> <span class="required"> *</span></div>
        <select  class="form-control col-md-7 col-xs-12 fn_school_id" name="school_id" id="school_id" required="required">
            <option value="">--<?php echo $this->lang->line('select_school'); ?>--</option>
            <?php foreach($schools as $obj){ ?>
                <option value="<?php echo $obj->id; ?>" <?php if(isset($school_id) && $school_id == $obj->id){echo 'selected="selected"';} ?>><?php echo $obj->school_name; ?></option>
            <?php } ?>
        </select>       
    </div>
</div>
<?php }else{ ?>  
<input type="hidden" class="fn_school_id" name="school_id" id="school_id" value="<?php echo $this->session->userdata('school_id'); ?>" />
<?php } ?>
