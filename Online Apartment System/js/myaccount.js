
function confirmbutton(){
	if(document.getElementById("confirm").checked){
		document.getElementById("btn1").disabled=false;
	}
	else{
		document.getElementById("btn1").disabled=true;
	}
}
function checkPasswords(){
	if(document.getElementById("pwd").value != document.getElementById("rpwd").value ){
		alert("Passwords are not matching!!");
		return false;
	}
	else{
		alert("Passwords matched");
		return true;	
	}
}