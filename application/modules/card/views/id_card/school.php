<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-barcode"></i><small>  <?php echo $this->lang->line('manage_id_card_setting'); ?></small></h3>
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
                        <li class="active"><a href="#tab_setting_list"   role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-gears"></i> <?php echo $this->lang->line('id_card_setting'); ?> </a> </li>
                    </ul>
                    <br/>
                    
                    <div class="tab-content">                    

                        <div  class="tab-pane fade in <?php if(empty($setting)){ echo 'active'; }?>" id="tab_add_setting">
                            <div class="x_content"> 
                               <?php echo form_open_multipart(site_url('card/schoolidsetting/add'), array('name' => 'add', 'id' => 'add', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                       
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="border_color"><?php echo $this->lang->line('border_color'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12 ">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12 " readonly="readonly"  name="border_color"  id="border_color" value="e01ab5" placeholder="<?php echo $this->lang->line('border_color'); ?>" type="text" autocomplete="off">
                                             <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('border_color'); ?></div>
                                    </div>
                                </div>
                                 
                                    
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="top_bg"><?php echo $this->lang->line('top_background'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12 ">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12 " readonly="readonly"  name="top_bg"  id="top_bg" value="e01ab5" placeholder="<?php echo $this->lang->line('top_background'); ?> " type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('top_bg'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_name"><?php echo $this->lang->line('card_school_name'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="school_name"  id="school_name" value="" placeholder="<?php echo $this->lang->line('card_school_name'); ?>" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('school_name'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_name_font_size"><?php echo $this->lang->line('school_name_font_size'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="school_name_font_size"  id="school_name_font_size" max="28" value="" placeholder="<?php echo $this->lang->line('school_name_font_size'); ?>" type="number" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('school_name_font_size'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_name_color"><?php echo $this->lang->line('school_name_color'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12"  name="school_name_color"  id="school_name_color" readonly="readonly" value="e01ab5" placeholder="<?php echo $this->lang->line('school_name_color'); ?>" type="text" autocomplete="off">
                                         <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('school_name_color'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_address"><?php echo $this->lang->line('school_address'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="school_address"  id="school_address" value="" placeholder="<?php echo $this->lang->line('school_address'); ?>" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('school_address'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_address_color"><?php echo $this->lang->line('school_address_color'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                        <input  class="form-control col-md-7 col-xs-12"  name="school_address_color"  id="school_address_color" readonly="readonly"  value="e01ab5" placeholder="<?php echo $this->lang->line('school_address_color'); ?>" type="text" autocomplete="off">
                                        <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('school_address_color'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_no_font_size"><?php echo $this->lang->line('id_no_font_size'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="id_no_font_size"  id="id_no_font_size" max="20" value="" placeholder="<?php echo $this->lang->line('id_no_font_size'); ?> " type="number" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('id_no_font_size'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_no_color"><?php echo $this->lang->line('id_no_color'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12"  name="id_no_color"  id="id_no_color" readonly="readonly" value="e01ab5" placeholder="<?php echo $this->lang->line('id_no_color'); ?> " type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('id_no_color'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_no_bg"><?php echo $this->lang->line('id_no_background'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12"  name="id_no_bg"  id="id_no_bg" readonly="readonly" value="e01ab5" placeholder="<?php echo $this->lang->line('id_no_background'); ?> " type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('id_no_bg'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="title_font_size"><?php echo $this->lang->line('title_font_size'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="title_font_size"  id="title_font_size" max="12" value="" placeholder="<?php echo $this->lang->line('title_font_size'); ?> " type="number" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('title_font_size'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="title_color"><?php echo $this->lang->line('title_color'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12"  name="title_color"  id="title_color" readonly="readonly" value="e01ab5" placeholder="<?php echo $this->lang->line('title_color'); ?> " type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('title_color'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="value_font_size"><?php echo $this->lang->line('value_font_size'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="value_font_size"  id="value_font_size" max="13" value="" placeholder="<?php echo $this->lang->line('value_font_size'); ?> " type="number" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('value_font_size'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="value_color"><?php echo $this->lang->line('value_color'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12"  name="value_color"  id="value_color" readonly="readonly" value="e01ab5" placeholder="<?php echo $this->lang->line('value_color'); ?> " type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('value_color'); ?></div>
                                    </div>
                                </div>                                
                                      
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bottom_bg"><?php echo $this->lang->line('signature_background'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12 ">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12 " readonly="readonly"  name="bottom_bg"  id="bottom_bg" value="e01ab5" placeholder="<?php echo $this->lang->line('signature_background'); ?> " type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('bottom_bg'); ?></div>
                                    </div>
                                </div>
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bottom_text"><?php echo $this->lang->line('bottom_signature'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="bottom_text"  id="bottom_text" value="" required="required" placeholder="<?php echo $this->lang->line('bottom_signature'); ?> " type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('bottom_text'); ?></div>
                                    </div>
                                </div>    
                                 <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bottom_text_color"><?php echo $this->lang->line('signature_color'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                        <input  class="form-control col-md-7 col-xs-12"  name="bottom_text_color"  id="bottom_text_color" readonly="readonly"  value="e01ab5" placeholder="<?php echo $this->lang->line('signature_color'); ?>" type="text" autocomplete="off">
                                        <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('bottom_text_color'); ?></div>
                                    </div>
                                </div>  
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bottom_text_align"><?php echo $this->lang->line('signature_align'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <?php $aligns = get_card_bottom_text_align(); ?>
                                        <select  class="form-control col-md-12 col-xs-12"  name="bottom_text_align"  id="bottom_text_align">
                                            <option value="">--<?php echo $this->lang->line('select'); ?> --</option> 
                                            <?php foreach($aligns as $key=>$value ){ ?>
                                                <option value="<?php echo $key; ?>" ><?php echo $value; ?></option>
                                            <?php } ?>                                            
                                        </select>
                                        <div class="help-block"><?php echo form_error('bottom_text_align'); ?></div>
                                    </div>
                                </div>  
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_logo"><?php echo $this->lang->line('card_logo'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">                                         
                                        <div class="btn btn-default btn-file"><i class="fa fa-paperclip"></i> <?php echo $this->lang->line('upload'); ?>
                                            <input  class="form-control col-md-7 col-xs-12"  name="logo" id="logo" type="file">
                                        </div>
                                        <div class="help-block"><?php echo form_error('logo'); ?></div>
                                    </div>
                                </div>
                                  
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <input type="hidden" id="school_id" name="school_id" value="<?php echo $this->session->userdata('school_id'); ?>"/>
                                        <a href="<?php echo site_url('card/schoolidsetting/index'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                                        <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('submit'); ?></button>
                                    </div>
                                </div>
                                <?php echo form_close(); ?>
                            </div>
                        </div>  
                        
                        
                        <div  class="tab-pane fade in <?php if(!empty($setting)){ echo 'active'; }?>" id="tab_edit_setting">
                            <div class="x_content"> 
                               <?php echo form_open_multipart(site_url('card/schoolidsetting/edit/'.$setting->id), array('name' => 'add', 'id' => 'add', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="border_color"><?php echo $this->lang->line('border_color'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12 ">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12 " readonly="readonly"  name="border_color"  id="border_color" value="<?php echo isset($setting->border_color) ?  $setting->border_color : 'e01ab5'; ?>" placeholder="<?php echo $this->lang->line('border_color'); ?>" type="text" autocomplete="off">
                                             <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('border_color'); ?></div>
                                    </div>
                                </div>      
                                    
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="top_bg"><?php echo $this->lang->line('top_background'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12 ">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12 " readonly="readonly"  name="top_bg"  id="top_bg" value="<?php echo isset($setting->top_bg) ?  $setting->top_bg : 'e01ab5'; ?>" placeholder="<?php echo $this->lang->line('top_background'); ?> " type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('top_bg'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_name"><?php echo $this->lang->line('card_school_name'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="school_name"  id="school_name" value="<?php echo isset($setting->school_name) ?  $setting->school_name : ''; ?>" placeholder="<?php echo $this->lang->line('card_school_name'); ?>" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('school_name'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_name_font_size"><?php echo $this->lang->line('school_name_font_size'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="school_name_font_size" max="28"  id="school_name_font_size" value="<?php echo isset($setting->school_name_font_size) ?  $setting->school_name_font_size : ''; ?>" placeholder="<?php echo $this->lang->line('school_name_font_size'); ?>" type="number" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('school_name_font_size'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_name_color"><?php echo $this->lang->line('school_name_color'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12"  name="school_name_color"  id="school_name_color" readonly="readonly" value="<?php echo isset($setting->school_name_color) ?  $setting->school_name_color : 'e01ab5'; ?>" placeholder="<?php echo $this->lang->line('school_name_color'); ?>" type="text" autocomplete="off">
                                         <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('school_name_color'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_address"><?php echo $this->lang->line('school_address'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="school_address"  id="school_address" value="<?php echo isset($setting->school_address) ?  $setting->school_address : ''; ?>" placeholder="<?php echo $this->lang->line('school_address'); ?>" type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('school_address'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_address_color"><?php echo $this->lang->line('school_address_color'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                        <input  class="form-control col-md-7 col-xs-12"  name="school_address_color"  id="school_address_color" readonly="readonly"  value="<?php echo isset($setting->school_address_color) ?  $setting->school_address_color : 'e01ab5'; ?>" placeholder="<?php echo $this->lang->line('school_address_color'); ?>" type="text" autocomplete="off">
                                        <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('school_address_color'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_no_font_size"><?php echo $this->lang->line('id_no_font_size'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="id_no_font_size"  id="id_no_font_size" max="20" value="<?php echo isset($setting->id_no_font_size) ?  $setting->id_no_font_size : ''; ?>" placeholder="<?php echo $this->lang->line('id_no_font_size'); ?> " type="number" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('id_no_font_size'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_no_color"><?php echo $this->lang->line('id_no_color'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12"  name="id_no_color"  id="id_no_color" readonly="readonly" value="<?php echo isset($setting->id_no_color) ?  $setting->id_no_color : 'e01ab5'; ?>" placeholder="<?php echo $this->lang->line('id_no_color'); ?> " type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('id_no_color'); ?></div>
                                    </div>
                                </div>
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id_no_bg"><?php echo $this->lang->line('id_no_background'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12"  name="id_no_bg"  id="id_no_bg" readonly="readonly" value="<?php echo isset($setting->id_no_bg) ?  $setting->id_no_bg : 'e01ab5'; ?>" placeholder="<?php echo $this->lang->line('id_no_background'); ?> " type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('id_no_bg'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="title_font_size"><?php echo $this->lang->line('title_font_size'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="title_font_size"  id="title_font_size" max="12" value="<?php echo isset($setting->title_font_size) ?  $setting->title_font_size : ''; ?>" placeholder="<?php echo $this->lang->line('title_font_size'); ?> " type="number" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('title_font_size'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="title_color"><?php echo $this->lang->line('title_color'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12"  name="title_color"  id="title_color" readonly="readonly" value="<?php echo isset($setting->title_color) ?  $setting->title_color : 'e01ab5'; ?>" placeholder="<?php echo $this->lang->line('title_color'); ?> " type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('title_color'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="value_font_size"><?php echo $this->lang->line('value_font_size'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="value_font_size"  id="value_font_size" max="13" value="<?php echo isset($setting->value_font_size) ?  $setting->value_font_size : ''; ?>" placeholder="<?php echo $this->lang->line('value_font_size'); ?> " type="number" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('value_font_size'); ?></div>
                                    </div>
                                </div>
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="value_color"><?php echo $this->lang->line('value_color'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12"  name="value_color"  id="value_color" readonly="readonly" value="<?php echo isset($setting->value_color) ?  $setting->value_color : 'e01ab5'; ?>" placeholder="<?php echo $this->lang->line('value_color'); ?>" type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('value_color'); ?></div>
                                    </div>
                                </div>                                
                                      
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bottom_bg"><?php echo $this->lang->line('signature_background'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12 ">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12 " readonly="readonly"  name="bottom_bg"  id="bottom_bg" readonly="readonly"  value="<?php echo isset($setting->bottom_bg) ?  $setting->bottom_bg : 'e01ab5'; ?>" placeholder="<?php echo $this->lang->line('signature_background'); ?>" type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('bottom_bg'); ?></div>
                                    </div>
                                </div>
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bottom_text"><?php echo $this->lang->line('bottom_signature'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="bottom_text"  id="bottom_text" required="required" value="<?php echo isset($setting->bottom_text) ?  $setting->bottom_text : ''; ?>" placeholder="<?php echo $this->lang->line('bottom_signature'); ?> " type="text" autocomplete="off">
                                        <div class="help-block"><?php echo form_error('bottom_text'); ?></div>
                                    </div>
                                </div> 
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bottom_text_color"><?php echo $this->lang->line('signature_color'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group fn_colorpicker">
                                            <input  class="form-control col-md-7 col-xs-12"  name="bottom_text_color"  id="bottom_text_color" readonly="readonly"  value="<?php echo isset($setting->bottom_text_color) ?  $setting->bottom_text_color : 'e01ab5'; ?>" placeholder="<?php echo $this->lang->line('signature_color'); ?>" type="text" autocomplete="off">
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                        <div class="help-block"><?php echo form_error('bottom_text_color'); ?></div>
                                    </div>
                                </div>    
                                
                                <div class="form-group"> 
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bottom_text_align"><?php echo $this->lang->line('signature_align'); ?> </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <?php $aligns = get_card_bottom_text_align(); ?>
                                        <select  class="form-control col-md-12 col-xs-12"  name="bottom_text_align"  id="bottom_text_align">
                                            <option value="">--<?php echo $this->lang->line('select'); ?> --</option> 
                                            <?php foreach($aligns as $key=>$value ){ ?>
                                                <option value="<?php echo $key; ?>" <?php echo isset($setting->bottom_text_align) && $setting->bottom_text_align == $key ?  'selected="selected"' : ''; ?>><?php echo $value; ?></option>
                                            <?php } ?>                                            
                                        </select>
                                        <div class="help-block"><?php echo form_error('bottom_text_align'); ?></div>
                                    </div>
                                </div>  
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="school_logo"><?php echo $this->lang->line('card_logo'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">  
                                           
                                            <?php if($setting->school_logo){ ?>
                                             <input type="hidden" name="prev_logo" id="prev_logo" value="<?php echo $setting->school_logo; ?>" />
                                            <img src="<?php echo UPLOAD_PATH; ?>/logo/<?php echo $setting->school_logo; ?>" alt="" width="70" /><br/><br/>
                                            <?php } ?>
                                            
                                        <div class="btn btn-default btn-file">
                                            <i class="fa fa-paperclip"></i> <?php echo $this->lang->line('upload'); ?> 
                                            <input  class="form-control col-md-7 col-xs-12"  name="logo" id="logo" type="file" />
                                        </div>
                                        <div class="help-block"><?php echo form_error('school_logo'); ?></div>
                                    </div>
                                </div>
                                                                
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <input type="hidden" id="school_id" name="school_id" value="<?php echo $this->session->userdata('school_id'); ?>"/>
                                        <input type="hidden" id="id" name="id" value="<?php if(isset($setting)){ echo $setting->id;} ?>"/>
                                        <a href="<?php echo site_url('card/schoolidsetting/index'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                                        <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('update'); ?></button>
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

<link href="<?php echo VENDOR_URL; ?>colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">
<script src="<?php echo VENDOR_URL; ?>colorpicker/bootstrap-colorpicker.min.js"></script> 

 <script type="text/javascript">
     
    $('.fn_colorpicker').colorpicker();
      
    $("#add").validate();   
    $("#edit").validate();
    
</script> 
