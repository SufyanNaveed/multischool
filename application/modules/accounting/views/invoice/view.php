
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
        height: 100%;
        margin-left:-5px;
        position: absolute;
        top:5px; 
    }
    .main_div{
        border: solid 2px black; padding: 0px !important; color:black; margin-right: 6px;
    }
    .title_padding{
        padding:8px 0px 0px 10px;
    }
    .title_div{
        font-size:30px; padding: 0px; font-weight:700;
    }
    .full_brand_name{
        font-size:20px; font-weight:600;
    }
    .transact_font{
        font-size:10px;
    }

    .bank_name{
        font-size:13px;
    }
    .company_code_brand{
        font-size:18px;
    }

    .detail_div{
        padding: 0px !important;
        padding-right: 0.9px !important;
    }
    .bill_no{
        border-width: 0px 1px 1px 1px; 
        border-color: black;
        border-style: solid;
    }

    .roll_text{
        padding: 0px; 
        border-width: 0px 1px 1px 1px; 
        border-color: black; 
        border-style: solid; 
    }
    .name_text{
        text-align: left;
    }
    .prog_text{
        padding: 0px !important; 
        border-width: 0 0 1px 1px; 
        border-color: black; 
        border-style: solid;
        margin-left:5.5px; 
    }
    .prog_title{
        font-size:12px; padding: 0px !important; width: 28%;
    }
    .school_off{
        border-width: 0px 1px 1px 1px;
        border-color: black;
        border-style: solid;
        padding: 0px!important;
    }
    .install_div{
        font-size:11px;
    }
    .school_off_title{
        font-size:12px;
        padding: 0px!important;
    }
    .school_off_text{
        padding: 0px; 
        border-width: 0px 1px 1px 1px; 
        border-color: black; 
        border-style: solid;
    }
    .table_heading_font{
        font-size:16px;
    }
    .table_text_font,
    .table_text_font_date
    {
        font-size:14px;
    }
    
    @media (min-width: 992px){
        .col-md-3 {
            width: 24.5%;
        }
    }

    @media print {
        .col-md-3 {
            width: 24.2%;
            /* padding: 0px;  */
        }
        .transact_font{
            font-size:7px;
            padding: 0px;
        }
        .transact_div{
            padding: 0px;
        }

        .title_div{
            font-size:20px; 
            padding: 10px 0px 0px 7px; 
            font-weight:700;
        }
        .full_brand_name{
            font-size:12px; font-weight:600;
        }
        .bank_name{
            font-size:11px;
        }
        .company_code_brand,
        .name_font, 
        .bill_title,
        .heading_font
        {
            font-size:10px;
        } 
        .bill_no{
            padding: 0 0 0 5px!important;
            border-width: 0px 1px 1px 1px; 
            border-color: black;
            border-style: solid;
            font-size:7px;
            width:45%; 
        }
        .date_div{
            border-width: 0px 1px 1px 1px; 
            border-color: black;
            border-style: solid;
            font-size:7px;
            margin-left: 10px;
        }
        .name_text{
            padding: 0 10px;
        }
        .mycontent-left {
            border-right: 2px dashed #333;
            height: 100%;
            margin-left:-6px;
            position: absolute;
            top:5px;
        }
        .line {
            display: block;
            width: 70%;
            border-top: 1px solid black;
            margin-left: 25%;
            padding: 1px 0 0 0px;
        }
        .roll_text{
            padding: 0px; 
            border-width: 0px 1px 1px 1px; 
            border-color: black; 
            border-style: solid;
            width: 40%;
            font-size: 6px;
        }
        .prog_text{
            padding: 0px !important; 
            border-width: 0 0 1px 1px; 
            border-color: black; 
            border-style: solid;
            width: 44%;
            font-size: 6px;
            margin-left: 20px;
        }
        .prog_title{
            font-size:10px; padding: 0px !important; width: 28%;
        }
        .install_div{
            font-size:7px; 
        }
        .school_off_text{
            padding: 0px; 
            border-width: 0px 1px 1px 1px; 
            border-color: black; 
            border-style: solid;
            width: 33%;
            font-size: 6px;
            text-align: left;
        }
        .table_heading_font{
            font-size:12px;
        }
        .table_text_font,
        .table_text_font_date{
            font-size:10px;
        }
    }
</style>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title no-print">
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
                    <?php for($i=1; $i<5; $i++){ ?>
                        <div class="col-md-3 col-sm-3 main_div">
                            <?php if($i != 1){ ?> <div class="mycontent-left"></div> <?php } ?>
                            <div class="row">
                                <div class="col-md-3 col-sm-3 col-xs-3 title_padding">
                                    <span class="heading_style title_div"><?php echo $this->global_setting->brand_name; ?> </span>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-9 text-left">
                                    <span class="heading_style full_brand_name" >Johar Institude of Professional Studies</span>
                                </div>
                            </div>                         
                            <hr /> 
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12"> 
                                    <span class="transact_font"><strong>Transaction to be processed through Alfalah transact</strong></span>
                                </div>
                            </div>
                            <hr /> 
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12 "> 
                                    <span class="bank_name"><strong>Bank Alfalah</strong></span>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-6 invoice-header" style="border-right: 2px solid black;"> 
                                    <span class="company_code_brand"><strong><?php echo $school->school_code; ?></strong></span>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6 invoice-header"> 
                                    <span class="company_code_brand"><strong><?php echo $this->global_setting->brand_name; ?></strong></span>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-6 detail_div"> 
                                    <span class="col-md-6 col-sm-6 text-left bill_title" ><strong>Bill No.</strong></span> 
                                    <span class="col-md-6 col-sm-6 bill_no"><?php echo $invoice->custom_invoice_id; ?></span>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                    <span class="col-md-3 col-sm-3 text-left bill_title"><strong>Date:</strong></span> 
                                    <span class="col-md-8 col-sm-8 date_div"><?php echo date('d.m.Y'); ?></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 col-sm-3 name_text"> 
                                    <span class="name_font"><strong>Name:</strong></span>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-9 text-left"> 
                                    <span class="name_font"><?php echo $invoice->name; ?></span>
                                </div>

                            </div> 
                            <div class="row roll_bottom">
                                <div class="line"></div>
                                <div class="line"></div>
                                <div class="col-md-6 col-sm-6 col-xs-6 " style="padding: 0px !important;"> 
                                    <span class="col-md-6 col-sm-6 text-left heading_font">Roll No:</span> 
                                    <span class="col-md-6 col-sm-6 text-center roll_text"><strong><?php echo $invoice->roll_no; ?></strong></span>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                    <span class="col-md-3 col-sm-3 text-left heading_font prog_title">Prog:</span> 
                                    <span class="col-md-8 col-sm-8 text-center prog_text"><?php echo $invoice->class_name; ?></span>
                                </div>
                            </div>

                            <div class="row school_top"> 
                                <div class="col-md-6 col-sm-6 col-xs-6 " style="padding: 0px !important;"> 
                                    <span class="col-md-6 col-sm-6 text-left heading_font">School:&nbsp;</span> 
                                    <span class="col-md-6 col-sm-6 text-center roll_text"><?php echo $this->global_setting->brand_name.'-'.$school->school_code; ?></span>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6" style="padding: 0px !important;"> 
                                    <span class="col-md-3 col-sm-3 text-left heading_font prog_title">Session:</span> 
                                    <span class="col-md-8 col-sm-8 text-center prog_text"><?php echo $invoice->session; ?></span>
                                </div>
                            </div> 
                            <hr />
                            <div class="row">
                                <span class="col-md-12 col-sm-12 install_div">
                                    <?php if($invoice_items && isset($invoice_items[0]->installment_no)){ ?>
                                        Fee for the <?php echo $invoice_items[0]->installment_no; ?> installment of <?php echo $invoice->semester_name; ?>
                                    <?php } else{ ?>
                                        Fee for the <?php echo $invoice->semester_name; ?> (Full Fee)
                                    <?php } ?>
                                </span>
                            </div>
                            <hr />
                            <div class="row">
                                <span class="col-md-7 col-sm-7 col-xs-7 table_heading_font" style="border-right: 2px solid black;">Particulars</span>
                                <span class="col-md-5 col-sm-5 col-xs-5 table_heading_font">Amount</span>
                            </div>
                            <hr />
                            <?php $total_amount = 0;
                            if(isset($invoice_items) && !empty($invoice_items)){  
                                foreach($invoice_items as $item){ ?>
                                <div class="row line_new">
                                    <span class="col-md-7 col-sm-7 col-xs-7 text-left table_text_font" style="padding: 0px; border-right: 1px solid black;">
                                        <i><?php echo $item->title; ?></i>
                                    </span>
                                    <span class="col-md-5 col-sm-5 col-xs-5 table_text_font"><?php echo round($item->net_amount); ?></span>
                                </div>
                                <?php $total_amount += $item->net_amount; } } ?>
                            
                                <div class="row line_new">
                                    <span class="col-md-7 col-sm-7 col-xs-7 text-left table_text_font" style="padding: 0px; border-right: 1px solid black;"><i>Total</i></span>
                                    <span class="col-md-5 col-sm-5 col-xs-5 table_text_font"><?php echo round($total_amount); ?></span>
                                </div>
                                <div class="row line_new">
                                    <span class="col-md-7 col-sm-7 col-xs-7 text-left table_text_font_date" style="padding: 0px; border-right: 1px solid black;"><i><strong>Last Date of payment:</strong></i></span>
                                    <span class="col-md-5 col-sm-5 col-xs-5 table_text_font_date" style="border-bottom: 1px solid black;"><i><strong><?php echo date('d.m.Y',strtotime($invoice->last_payment_date)); ?></strong></i></span>
                                </div>
                                <div class="row line_new_last">
                                    <span class="col-md-7 col-sm-7 col-xs-7 text-left table_text_font" style="padding: 0px; border-right: 1px solid black;">0</span>
                                    <span class="col-md-5 col-sm-5 col-xs-5 table_text_font" style="border-bottom: 1px solid black;">0</span>
                                </div>
                                <div class="row line_new_last">
                                    <span class="col-md-7 col-sm-7 col-xs-7 text-left table_text_font" style="padding: 0px; border-right: 1px solid black;">0</span>
                                    <span class="col-md-5 col-sm-5 col-xs-5 table_text_font">0</span>
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
                                <span class="col-md-12 col-sm-12 col-xs-12" style="font-size: 13px;letter-spacing: 0.3rem;font-family: Arial, Helvetica, sans-serif;margin-top: 6px;">
                                    <?php if($i == 1){ ?> 
                                        <strong>HEAD OFFICE COPY</strong>
                                    <?php } if($i == 2){ ?> 
                                        <strong>OFFICE COPY</strong>
                                    <?php } if($i == 3){ ?> 
                                        <strong>STUDENT COPY</strong>
                                    <?php } if($i == 4){ ?> 
                                        <strong>BANK COPY</strong>
                                    <?php } ?>
                                </span> 
                            </div>
                        </div>
                    <?php } ?>
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