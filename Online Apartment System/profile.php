

<?php

include_once('config.php');
?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Profile</title>
		<link rel="stylesheet" type="text/css" href="style/profile.css"> 
	
		
	</head>	 <style>
 body
{
  background-image:url("image/background4.jpeg");
}
</style>
	
	
	<body>
	<div id="main">
			<nav>
				<img src="image/logo.jpg" width="350" height="170">
				<ul>
					<li><a href="Homepage.html">Home</a></li>
					<li><a href="contact.html">Contact Us</a></li>
					<li><a href="about.html">About Us</a></li>
				     <li><a href="Apartment.html">Apartments</a></li>
					<li><a href="search.html">Search</a></li>
					<a href="myaccount.html">
					<button class ="myaccount" type = "button">  Account</button></a>
					<a><button class ="logout" type = "button"> Log Out</button>
					</a>
					
				</ul>
			</nav>
			</div>
		<br>
	<div class="row">
  <div class="column" style="background-color:white;">
<h1><b>User details<b></h1>
<center>

<?php

	echo "<table>";
	
	$sql="select * from profile";
	$result = $conn->query($sql);
	
	if($result->num_rows>0){
	
		while($row=$result->fetch_assoc()){
		echo "<tr><td>User ID        :</td><td>".$row["Profile_id"]."</td></tr><tr><td>User name       :</td><td>".$row["UserName"]."</td></tr><tr><td>Mobile     :</td><td>".$row["Mobile_no"]."</td></tr><tr><td>Email    :</td><td>".$row["Email"]."</td></tr><tr><td>Address     :</td><td>".$row["Address"]."</td></tr><tr><td>Country     :</td><td>".$row["Country"]."</td></tr><tr><td>City/town    :</td><td>".$row["City"]."</td></tr><tr><td>Credit card No    :</td><td>".$row["Creditcard_no"]."</td></tr><tr><td>Billing Email    :</td><td>".$row["Billing_email"]."</td></tr><tr><td>Billing address   :</td><td>".$row["Billing_address"]."</td></tr>";	
	}
	}
	else{
		echo "NO result";
	}

echo"</table>";

$conn->close();

?>


</center>
</div>
</div>
<br>
<br>

<div class="footer">
			<div class="inner-footer">
				<div class="footer-item">
				<h3>Dazzale Homes</h3>
				<p>As the No.01 premier licensed online apartment sales system in sri lanka,Dazzale Homes Pvt Ltd. is known for their incomparable professionalism in handling housing and apartment resolutions, fulfilling complete customer satisfaction with a vision, thriving with an unfaltering mission while contributing to sustainability and country's infrastructure.</p>
				<a href="https://maps.google.lk/">
				<img src="image/map.jpg" width="250" height="150">
				</a>
			</div>
			<div class="footer-item">
				<h2>Site Map</h2>
				<div class="border"></div>
				<ul>
					<li><a href="Homepage.html">Home</a></li>
					<li><a href="contact.html">Contact Us</a></li>
					<li><a href="about.html">About Us</a></li>
					<li><a href="purchaseApart.html">Purchase an apartment</a></li>
					<li><a href="rentApart.html">Rent an apartment</a></li>
					<li><a href="register.html">Sign Up</a></li>
					<li><a href="login.html">Sign In</a></li>
					<li><a href="add.html">Add and Remove advertisement</a></li>
					
				</ul>
			</div>
				
			<div class="footer-item">
				<h2>Contact Us</h2>
				<div class="border"></div>
				<ul>
					<li><a href="#">Dazzale Homes</a></li>
					<a href="https://maps.google.lk/">
					<li><i class="map-marker" aria-hidden="true"></i> No.28/2,Palawatta Road,Stanmore Crecent,Colombo 07,Sri Lanka</li><br>
					</a>
					<a href="https://www.sliit.lk">
					<li><i class="phone" aria-hidden="true"></i> Senkada:(+94-763451877)</li>
					</a>
					<a href="https://http://www.sliit.lk">
					<li><i class="phone" aria-hidden="true"></i> Hotline:(+94-0112888445)</li>
					</a>
					<a href="https://www.google.com/gmail">
					<li><i class="envelope" aria-hidden="true"></i> DazzaleHomes@gmail.com</li>
					</a>
				</ul>
			</div>
			
			<br>
			<br>
			<br>
			</div>
		<center>
	
		<h2>Copyright © 2020 Online Apartment Sales system Powered by ABC Technologies ®. All rights reserved.</h2>
	
		</center>
			
		</div>

		</body>
</html>
		