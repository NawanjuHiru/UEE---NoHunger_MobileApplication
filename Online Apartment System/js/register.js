function passwordcheck(){
	if(document.getElementById("psw").value != document.getElementById("rpsw").value ){
		alert("Passwords unmatching!!");
		return false;
	}
	else{
		alert("Passwords matched");
		return true;	
	}
}