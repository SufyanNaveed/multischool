Redirecting to PayUmoney....
<html>
<head>
    <script type="text/javascript">       
        function submit_pay_u_money() {          
           document.forms.pay_u_money.submit();           
        }
    </script>
</head>
<body onload="submit_pay_u_money()">
    <form action="<?php echo $action; ?>" method="post" name="pay_u_money">
        <input type="hidden" name="key" value="<?php echo $key; ?>" />
        <input type="hidden" name="hash" value="<?php echo $hash; ?>"/>
        <input type="hidden" name="txnid" value="<?php echo $txnid; ?>" />
        <input name="amount" type="hidden" value="<?php echo $amount; ?>" />
        <input type="hidden" name="firstname" id="firstname" value="<?php echo $firstname; ?>" />
        <input type="hidden" name="email" id="email" value="<?php echo $email; ?>" />
        <input type="hidden" name="phone" value="<?php echo $phone; ?>" />
        <input type="hidden" name="productinfo" value="<?php echo $productinfo; ?>" />
        <input type="hidden" name="surl" value="<?php echo $surl; ?>" />
        <input type="hidden" name="furl" value="<?php echo $furl; ?>" />
        <input type="hidden" name="service_provider" value="" size="64" />
    </form>
</body>
</html>
