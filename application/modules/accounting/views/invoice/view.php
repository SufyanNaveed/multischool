
<style>
    hr{
        margin-top: 0px;
        margin-bottom: 0px;
        border: 0;
        border-top: 2px solid #000;
    }

    .line {
        display: block;
        width: 72%;
        border-top: 2px solid black;
        margin-left: 25%;
        padding: 1px 0 0 0px;
    }
    .line_new {
        display: block;
        width: 100%;
        border-top: 1px solid black;
        margin-left: 0%;
        padding: 0px 0 0 0px;
    }

    .line_new_last {
        display: block;
        width: 100%;
        /* border-top: 1px solid black; */
        margin-left: 0%;
        padding: 0px 0 0 0px;
    }
    .mycontent-left {
        border-right: 2px dashed #333;
        height: 700px;
        margin-left:-5px;
        position: absolute;
        top:5px;
    }
    @media (min-width: 992px){
        .col-md-3 {
            width: 24.5%;
        }
    }
</style>
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
                <section class="content invoice profile_img example example-dashed">
                    <div class="col-md-3 col-sm-3" style="border: solid 2px black; padding: 0px !important; color:black; margin-right: 6px;">
                        <div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-3 invoice-header" style="padding:8px 0px 0px 10px;">
                                <span style="font-size:30px; padding: 0px; font-weight:700"><?php echo $this->global_setting->brand_name; ?> </span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 text-left" style="padding:0px">
                                <span style="font-size:20px; font-weight:600">Johar Institude of Professional Studies</span>
                            </div>
                        </div>                         
                        <hr /> 
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:10px"><strong>Transaction to be processed through Alfalah transact</strong></span>
                            </div>
                        </div>
                        <hr /> 
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:13px"><strong>Bank Alfalah</strong></span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6 invoice-header" style="border-right: 2px solid black;"> 
                                <span style="font-size:18px"><strong>Company Code</strong></span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6 invoice-header"> 
                                <span style="font-size:18px"><strong>JIPS</strong></span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important; padding-right: 0.9px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" ><strong>Bill No.</strong></span> 
                                <span class="col-md-6 col-sm-6" style="border-width: 0px 1px 1px 1px; border-color: black; border-style: solid;">12345678</span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="padding: 0px !important; width: 28%;"><strong>Date:</strong></span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 0 0 1px 1px; border-color: black; border-style: solid;">10.04.2023</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-sm-3 text-left"> 
                                <span><strong>Name:</strong></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 text-left"> 
                                <span>Nazia</span>
                            </div>

                        </div> 
                        <div class="row ">
                            <div class="line"></div>
                            <div class="col-md-6 col-sm-6 col-xs-6 " style="padding: 0px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" style="font-size:12px">Roll No:</span> 
                                <span class="col-md-6 col-sm-6 text-center" style="padding: 0px; border-width: 2px 1px 1px 1px; border-color: black; border-style: solid;"><strong>100-SPS-21</strong></span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="font-size:12px; padding: 0px !important; width: 28%; border-top: 2px solid black">Prog:</span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 2px 0 1px 1px; border-color: black; border-style: solid;">Pharm-D</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" style="font-size:12px">School of:</span> 
                                <span class="col-md-6 col-sm-6" style="border-width: 0px 1px 1px 1px; border-color: black; border-style: solid;">JIPS-SPS </span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="font-size:12px; padding: 0px !important; width: 28%;">Session:</span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 0 0 1px 1px; border-color: black; border-style: solid;">2021-26</span>
                            </div>
                        </div>
                        
                        <hr />
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:11px">
                                    Fee for the 2nd installment of 2nd year(Final installment)
                                </span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <span class="col-md-7 col-sm-7 col-xs-7" style="border-right: 2px solid black; font-size:16px">Particulars</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:16px">Amount</span>
                        </div>
                        <hr />
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px "><i>Admission Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Previous Dues</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Tuition Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Transport fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>ID Card Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Reg. Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Collection Fund</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Magazine</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Subtotal</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Other</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Total</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i><strong>Last Date of payment:</strong></i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px; border-bottom: 1px solid black;"><i><strong>18.06.2023</strong></i></span>
                        </div>
                        <div class="row line_new_last">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px">0</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px;border-bottom: 1px solid black;">&nbsp;</span>
                        </div>
                        <div class="row line_new_last">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px">0</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px;">&nbsp;</span>
                        </div>
                        <hr />

                        <div class="row" style="font-size:10px;">
                            <span class="col-md-12 col-sm-12 col-xs-12">
                                <span>Mode of Payment: <span style="font-weight:800">Cash</span></span><br>
                                <span>All fees are not refundable and can be changed without any prior notice </span><br><br>
                                <div style="text-align: left; direction: rtl;font-size:10.2px;">
                                    I/We agree to be bound by the Terms & Conditions applicable to the 
                                    Cash/Local Cheque Deposit/Local Clearing currently prevalent
                                    at Bank Alfalah Limited. A copy of the prevailing Terms and
                                    Condition may be obtained at any Bank Alfalah Branch.
                                </div>
                            </span> 
                        </div>
                        <hr />
                        <div class="row">
                            <span class="col-md-12 col-sm-12 col-xs-12" style="font-size: 13px;letter-spacing: 0.5rem;font-family: Arial, Helvetica, sans-serif;margin-top: 6px;">
                                <strong>HEAD OFFICE COPY</strong>
                            </span> 
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-3" style="border: solid 2px black; padding: 0px !important; color:black; margin-right: 6px; ">
                        <div class="mycontent-left"></div>
                        <div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-3 invoice-header" style="padding:8px 0px 0px 10px;">
                                <span style="font-size:30px; padding: 0px; font-weight:700"><?php echo $this->global_setting->brand_name; ?> </span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 text-left" style="padding:0px">
                                <span style="font-size:20px; font-weight:600">Johar Institude of Professional Studies</span>
                            </div>
                        </div>                         
                        <hr /> 
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:10px"><strong>Transaction to be processed through Alfalah transact</strong></span>
                            </div>
                        </div>
                        <hr /> 
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:13px"><strong>Bank Alfalah</strong></span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6 invoice-header" style="border-right: 2px solid black;"> 
                                <span style="font-size:18px"><strong>Company Code</strong></span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6 invoice-header"> 
                                <span style="font-size:18px"><strong>JIPS</strong></span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important; padding-right: 0.9px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" ><strong>Bill No.</strong></span> 
                                <span class="col-md-6 col-sm-6" style="border-width: 0px 1px 1px 1px; border-color: black; border-style: solid;">12345678</span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="padding: 0px !important; width: 28%;"><strong>Date:</strong></span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 0 0 1px 1px; border-color: black; border-style: solid;">10.04.2023</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-sm-3 text-left"> 
                                <span><strong>Name:</strong></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 text-left"> 
                                <span>Nazia</span>
                            </div>

                        </div> 
                        <div class="row ">
                            <div class="line"></div>
                            <div class="col-md-6 col-sm-6 col-xs-6 " style="padding: 0px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" style="font-size:12px">Roll No:</span> 
                                <span class="col-md-6 col-sm-6 text-center" style="padding: 0px; border-width: 2px 1px 1px 1px; border-color: black; border-style: solid;"><strong>100-SPS-21</strong></span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="font-size:12px; padding: 0px !important; width: 28%; border-top: 2px solid black">Prog:</span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 2px 0 1px 1px; border-color: black; border-style: solid;">Pharm-D</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" style="font-size:12px">School of:</span> 
                                <span class="col-md-6 col-sm-6" style="border-width: 0px 1px 1px 1px; border-color: black; border-style: solid;">JIPS-SPS </span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="font-size:12px; padding: 0px !important; width: 28%;">Session:</span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 0 0 1px 1px; border-color: black; border-style: solid;">2021-26</span>
                            </div>
                        </div>
                        
                        <hr />
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:11px">
                                    Fee for the 2nd installment of 2nd year(Final installment)
                                </span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <span class="col-md-7 col-sm-7 col-xs-7" style="border-right: 2px solid black; font-size:16px">Particulars</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:16px">Amount</span>
                        </div>
                        <hr />
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px "><i>Admission Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Previous Dues</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Tuition Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Transport fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>ID Card Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Reg. Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Collection Fund</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Magazine</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Subtotal</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Other</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Total</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i><strong>Last Date of payment:</strong></i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px; border-bottom: 1px solid black;"><i><strong>18.06.2023</strong></i></span>
                        </div>
                        <div class="row line_new_last">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px">0</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px;border-bottom: 1px solid black;">&nbsp;</span>
                        </div>
                        <div class="row line_new_last">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px">0</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px;">&nbsp;</span>
                        </div>
                        <hr />

                        <div class="row" style="font-size:10px;">
                            <span class="col-md-12 col-sm-12 col-xs-12">
                                <span>Mode of Payment: <span style="font-weight:800">Cash</span></span><br>
                                <span>All fees are not refundable and can be changed without any prior notice </span><br><br>
                                <div style="text-align: left; direction: rtl;font-size:10.2px;">
                                    I/We agree to be bound by the Terms & Conditions applicable to the 
                                    Cash/Local Cheque Deposit/Local Clearing currently prevalent
                                    at Bank Alfalah Limited. A copy of the prevailing Terms and
                                    Condition may be obtained at any Bank Alfalah Branch.
                                </div>
                            </span> 
                        </div>
                        <hr />
                        <div class="row">
                            <span class="col-md-12 col-sm-12 col-xs-12" style="font-size: 13px;letter-spacing: 0.5rem;font-family: Arial, Helvetica, sans-serif;margin-top: 6px;">
                                <strong>OFFICE COPY</strong>
                            </span> 
                        </div>
                    </div> 

                    <div class="col-md-3 col-sm-3" style="border: solid 2px black; padding: 0px !important; color:black; margin-right: 6px;">
                        <div class="mycontent-left" style="margin-left: -5.5px;"></div>
                        <div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-3 invoice-header" style="padding:8px 0px 0px 10px;">
                                <span style="font-size:30px; padding: 0px; font-weight:700"><?php echo $this->global_setting->brand_name; ?> </span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 text-left" style="padding:0px">
                                <span style="font-size:20px; font-weight:600">Johar Institude of Professional Studies</span>
                            </div>
                        </div>                         
                        <hr /> 
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:10px"><strong>Transaction to be processed through Alfalah transact</strong></span>
                            </div>
                        </div>
                        <hr /> 
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:13px"><strong>Bank Alfalah</strong></span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6 invoice-header" style="border-right: 2px solid black;"> 
                                <span style="font-size:18px"><strong>Company Code</strong></span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6 invoice-header"> 
                                <span style="font-size:18px"><strong>JIPS</strong></span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important; padding-right: 0.9px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" ><strong>Bill No.</strong></span> 
                                <span class="col-md-6 col-sm-6" style="border-width: 0px 1px 1px 1px; border-color: black; border-style: solid;">12345678</span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="padding: 0px !important; width: 28%;"><strong>Date:</strong></span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 0 0 1px 1px; border-color: black; border-style: solid;">10.04.2023</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-sm-3 text-left"> 
                                <span><strong>Name:</strong></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 text-left"> 
                                <span>Nazia</span>
                            </div>

                        </div> 
                        <div class="row ">
                            <div class="line"></div>
                            <div class="col-md-6 col-sm-6 col-xs-6 " style="padding: 0px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" style="font-size:12px">Roll No:</span> 
                                <span class="col-md-6 col-sm-6 text-center" style="padding: 0px; border-width: 2px 1px 1px 1px; border-color: black; border-style: solid;"><strong>100-SPS-21</strong></span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="font-size:12px; padding: 0px !important; width: 28%; border-top: 2px solid black">Prog:</span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 2px 0 1px 1px; border-color: black; border-style: solid;">Pharm-D</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" style="font-size:12px">School of:</span> 
                                <span class="col-md-6 col-sm-6" style="border-width: 0px 1px 1px 1px; border-color: black; border-style: solid;">JIPS-SPS </span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="font-size:12px; padding: 0px !important; width: 28%;">Session:</span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 0 0 1px 1px; border-color: black; border-style: solid;">2021-26</span>
                            </div>
                        </div>
                        
                        <hr />
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:11px">
                                    Fee for the 2nd installment of 2nd year(Final installment)
                                </span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <span class="col-md-7 col-sm-7 col-xs-7" style="border-right: 2px solid black; font-size:16px">Particulars</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:16px">Amount</span>
                        </div>
                        <hr />
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px "><i>Admission Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Previous Dues</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Tuition Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Transport fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>ID Card Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Reg. Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Collection Fund</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Magazine</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Subtotal</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Other</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Total</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i><strong>Last Date of payment:</strong></i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px; border-bottom: 1px solid black;"><i><strong>18.06.2023</strong></i></span>
                        </div>
                        <div class="row line_new_last">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px">0</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px;border-bottom: 1px solid black;">&nbsp;</span>
                        </div>
                        <div class="row line_new_last">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px">0</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px;">&nbsp;</span>
                        </div>
                        <hr />

                        <div class="row" style="font-size:10px;">
                            <span class="col-md-12 col-sm-12 col-xs-12">
                                <span>Mode of Payment: <span style="font-weight:800">Cash</span></span><br>
                                <span>All fees are not refundable and can be changed without any prior notice </span><br><br>
                                <div style="text-align: left; direction: rtl;font-size:10.2px;">
                                    I/We agree to be bound by the Terms & Conditions applicable to the 
                                    Cash/Local Cheque Deposit/Local Clearing currently prevalent
                                    at Bank Alfalah Limited. A copy of the prevailing Terms and
                                    Condition may be obtained at any Bank Alfalah Branch.
                                </div>
                            </span> 
                        </div>
                        <hr />
                        <div class="row">
                            <span class="col-md-12 col-sm-12 col-xs-12" style="font-size: 13px;letter-spacing: 0.5rem;font-family: Arial, Helvetica, sans-serif;margin-top: 6px;">
                                <strong>STUDENT COPY</strong>
                            </span> 
                        </div>
                    </div> 

                    <div class="col-md-3 col-sm-3" style="border: solid 2px black; padding: 0px !important; color:black; ">
                        <div class="mycontent-left"></div>
                        <div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-3 invoice-header" style="padding:8px 0px 0px 10px;">
                                <span style="font-size:30px; padding: 0px; font-weight:700"><?php echo $this->global_setting->brand_name; ?> </span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 text-left" style="padding:0px">
                                <span style="font-size:20px; font-weight:600">Johar Institude of Professional Studies</span>
                            </div>
                        </div>                         
                        <hr /> 
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:10px"><strong>Transaction to be processed through Alfalah transact</strong></span>
                            </div>
                        </div>
                        <hr /> 
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:13px"><strong>Bank Alfalah</strong></span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6 invoice-header" style="border-right: 2px solid black;"> 
                                <span style="font-size:18px"><strong>Company Code</strong></span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6 invoice-header"> 
                                <span style="font-size:18px"><strong>JIPS</strong></span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important; padding-right: 0.9px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" ><strong>Bill No.</strong></span> 
                                <span class="col-md-6 col-sm-6" style="border-width: 0px 1px 1px 1px; border-color: black; border-style: solid;">12345678</span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="padding: 0px !important; width: 28%;"><strong>Date:</strong></span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 0 0 1px 1px; border-color: black; border-style: solid;">10.04.2023</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-sm-3 text-left"> 
                                <span><strong>Name:</strong></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 text-left"> 
                                <span>Nazia</span>
                            </div>

                        </div> 
                        <div class="row ">
                            <div class="line"></div>
                            <div class="col-md-6 col-sm-6 col-xs-6 " style="padding: 0px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" style="font-size:12px">Roll No:</span> 
                                <span class="col-md-6 col-sm-6 text-center" style="padding: 0px; border-width: 2px 1px 1px 1px; border-color: black; border-style: solid;"><strong>100-SPS-21</strong></span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="font-size:12px; padding: 0px !important; width: 28%; border-top: 2px solid black">Prog:</span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 2px 0 1px 1px; border-color: black; border-style: solid;">Pharm-D</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-6 col-sm-6 text-left" style="font-size:12px">School of:</span> 
                                <span class="col-md-6 col-sm-6" style="border-width: 0px 1px 1px 1px; border-color: black; border-style: solid;">JIPS-SPS </span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                <span class="col-md-3 col-sm-3 text-left" style="font-size:12px; padding: 0px !important; width: 28%;">Session:</span> 
                                <span class="col-md-8 col-sm-8 text-center" style="padding: 0px !important; border-width: 0 0 1px 1px; border-color: black; border-style: solid;">2021-26</span>
                            </div>
                        </div>
                        
                        <hr />
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12 invoice-header"> 
                                <span style="font-size:11px">
                                    Fee for the 2nd installment of 2nd year(Final installment)
                                </span>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <span class="col-md-7 col-sm-7 col-xs-7" style="border-right: 2px solid black; font-size:16px">Particulars</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:16px">Amount</span>
                        </div>
                        <hr />
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px "><i>Admission Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Previous Dues</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Tuition Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Transport fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>ID Card Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Reg. Fee</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Collection Fund</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Magazine</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Subtotal</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Other</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">0</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i>Total</i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px">125000</span>
                        </div>
                        <div class="row line_new">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px"><i><strong>Last Date of payment:</strong></i></span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px; border-bottom: 1px solid black;"><i><strong>18.06.2023</strong></i></span>
                        </div>
                        <div class="row line_new_last">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px">0</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px;border-bottom: 1px solid black;">&nbsp;</span>
                        </div>
                        <div class="row line_new_last">
                            <span class="col-md-7 col-sm-7 col-xs-7 text-left" style="padding: 0px; border-right: 1px solid black; font-size:14px">0</span>
                            <span class="col-md-5 col-sm-5 col-xs-5" style="font-size:14px;">&nbsp;</span>
                        </div>
                        <hr />

                        <div class="row" style="font-size:10px;">
                            <span class="col-md-12 col-sm-12 col-xs-12">
                                <span>Mode of Payment: <span style="font-weight:800">Cash</span></span><br>
                                <span>All fees are not refundable and can be changed without any prior notice </span><br><br>
                                <div style="text-align: left; direction: rtl;font-size:10.2px;">
                                    I/We agree to be bound by the Terms & Conditions applicable to the 
                                    Cash/Local Cheque Deposit/Local Clearing currently prevalent
                                    at Bank Alfalah Limited. A copy of the prevailing Terms and
                                    Condition may be obtained at any Bank Alfalah Branch.
                                </div>
                            </span> 
                        </div>
                        <hr />
                        <div class="row">
                            <span class="col-md-12 col-sm-12 col-xs-12" style="font-size: 13px;letter-spacing: 0.5rem;font-family: Arial, Helvetica, sans-serif;margin-top: 6px;">
                                <strong>BANK COPY</strong>
                            </span> 
                        </div>
                    </div> 
                    
                </section>
            </div> 
             
            <div class="row no-print" >
                <div class="col-sm-12" style="margin-top: 10px;">
                    <button class="btn btn-default" onclick="window.print();"><i class="fa fa-print"></i> <?php echo $this->lang->line('print'); ?></button>
                    <?php if($invoice->paid_status != 'paid'){ ?>
                        <a href="<?php echo site_url('accounting/payment/index/'.$invoice->inv_id); ?>"><button class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> <?php echo $this->lang->line('pay_now'); ?></button></a>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>