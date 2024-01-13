/**
 * Validation For ChangePassword
 * 
 */


function validateChangePassword()
{
	if( passwordValidate() & nwpasswordValidate() & reEnterPassValidate())
	{
	
		return true;

	}
	else{
	
	return false;
	}
	
}

/**
 * 
 * Function For ValidatePassword
 * 
 */
function passwordValidate(){
	
	var pass=document.getElementById("password").value;

	if(pass=="" ){
		document.getElementById("passwordError").innerHTML="Password must not be empty";
	
		return false;
	}
	else if((pass.length < 2) || (pass.length > 10)){
		document.getElementById("password").focus();
		document.getElementById("passwordError").innerHTML="Password must be between 2 to 10 characters";
		
		return false;
	}
	
	else{
		document.getElementById("passwordError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";
		return true;
	}
}


/**
 * 
 * Function For ValidatePassword
 * 
 */

function nwpasswordValidate()
{
	var pass=document.getElementById("nw_password").value;
	var pass1=document.getElementById("password").value;

	if(pass=="" ){
		document.getElementById("nwpasswordError").innerHTML="Password must not be empty";
	
		return false;
	}
	
	else if((pass.length < 2) || (pass.length > 10)){
		document.getElementById("nw_password").focus();
		document.getElementById("nwpasswordError").innerHTML="Password must be between 2 to 10 characters";
		
		return false;
	}
	else if(pass==pass1){
		document.getElementById("nw_password").focus();
		document.getElementById("nwpasswordError").innerHTML="New Password Must Not Be Same AS OLd Password!!!";
		
		return false;
	}
	
	else{
		document.getElementById("nwpasswordError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";
		return true;
	}
}


/**
 * 
 * Function For Validate Re-EnterPassword
 * 
 */

function reEnterPassValidate()
{
	var cpass=document.getElementById("re_password").value;
	var pass=document.getElementById("nw_password").value;

	if(cpass=="" ){
		document.getElementById("reError").innerHTML="Re-Enter Password";
	
		return false;
	}
	else if(cpass!=pass){
		document.getElementById("re_password").focus();
		document.getElementById("reError").innerHTML="Password does not match";
		
		return false;
	}
	else{
		document.getElementById("reError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";
		return true;
	}
}

	