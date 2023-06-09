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
                                        <th><?php echo 'Voucher No'; ?> </th> 
                                        <th><?php echo 'Account No'; ?> </th> 
                                        <th><?php echo 'Account Name'; ?> </th> 
                                        <th><?php echo 'Date'; ?> </th> 
                                        <th><?php echo 'Payment Type'; ?> </th> 
                                        <th><?php echo 'Debit'; ?> </th> 
                                        <th><?php echo 'Credit'; ?> </th>
                                        <th><?php echo 'Narration'; ?> </th>
                                    </tr>
                                </thead>
                                <tbody>   
                                <?php if ($transactionslist){ foreach ($transactionslist as $transaction) { ?>
                                            <tr>
                                                <td class="mailbox-name"> <?php echo $transaction["VNo"]; ?> </td>
                                                <td class="mailbox-name"> <?php echo $transaction["account_no"]; ?> </td>
                                                <td class="mailbox-name"> <?php echo $transaction["name"]; ?> </td>
                                                <td class="mailbox-name"> <?php echo $transaction["VDate"]; ?> </td>
                                                <td class="mailbox-name"><?php echo $transaction['paytype'] == 1 ? 'Cash' : 'Bank'; ?></td>
                                                <td class="mailbox-name"> <?php echo $transaction["Debit"]; ?>  </td>
                                                <td class="mailbox-name"> <?php echo $transaction["Credit"]; ?>  </td>
                                                <td class="mailbox-name"><?php echo $transaction['Narration']; ?></td>
                                                
                                            </tr>
                                    <?php }} ?>  
                                </tbody>
                            </table>
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