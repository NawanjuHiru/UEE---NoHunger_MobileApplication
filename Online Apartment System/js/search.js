
function confirmbutton(){
	if(document.getElementById("confirm").checked){
		document.getElementById("btn1").disabled=false;
	}
	else{
		document.getElementById("btn1").disabled=true;
	}
}