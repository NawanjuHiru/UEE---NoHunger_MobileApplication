<?php
include_once('config.php');
?>

<?php


    $Username=$_POST['fname'];
	$Mobile= $_POST['mobile'];
	$Email=	$_POST['emailAdd'];
	$Address=	$_POST['addr'];
	$Contr=	$_POST['country'];
	$Town=	 $_POST['town'];
	$Credit=$_POST['card'];
	$Bill_mail=$_POST['mail'];
	$Bill_add=$_POST['add'];
	$Curpw=	 $_POST['cpwd'];
	$Npw=	 $_POST['pwd'];
	
	
	$send_to_db="insert into profile(Profile_id,UserName,Mobile_no,Email,Address,Country,City,Creditcard_no,Billing_email,Billing_address,Current_password,New_password)values('','{$Username}','{$Mobile}','{$Email1}','{$Address}','{$Contr}','{$Town}','{$Credit}','{$Bill_mail}','{$Bill_add}','{$Curpw}','{$Npw}')";

        if (mysqli_query($conn, $send_to_db)){
		  echo "<script>alert ('Record inserted successfully!!!')</script>";
			Header("Location:profile.php");
        }
        else{
            echo "<script>alert ('Error in inserting recording!!!')</script>";
        }
		

mysqli_close($conn);
?>
