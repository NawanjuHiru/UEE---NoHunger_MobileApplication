<?php

include_once('config.php');
?>
<?php

    $name= $_POST['usrnm'];
	$email=$_POST['email'];
	$password= $_POST['psw'];
	
	$send_to_db="insert into register(User_id,Username,Email,Password)values('','{$name}','{$email}','{$password}')";

        if (mysqli_query($conn, $send_to_db)){
	     echo "<script>alert ('Record inserted successfully!!!')</script>";
	     header("Location:Homepage.html");
        }
        else{
            echo "<script>alert ('Error in inserting recording!!!')</script>";
        }
		
		
		mysqli_close($conn);

?>
