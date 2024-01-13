/**
 * Validation For ForgotPassword
 * 
 */


function validateForgotPassword()
{
	if(emailValidate()  & mobileNoValidate()  &  passwordValidate() & reEnterPassValidate())
	{
	
		return true;

	}
	else{
	
	return false;
	}
	
	
}

	
	/**
	 * 
	 * Function For Validate EmailId
	 * 
	 */
	function emailValidate() {
		
	    var x = document.forms["myForm"]["email_id"].value;
	    var atpos = x.indexOf("@");
	    var dotpos = x.lastIndexOf(".");
	    if(x==""){
	    	document.getElementById("emailError").innerHTML="Email must not be empty";
	    	
	    	return false;
	    }
	    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
	    	document.getElementById("email_id").focus();
	        document.getElementById("emailError").innerHTML="Enter a email followed by @";
	        
	        return false;
	    }
	    else{
	    	document.getElementById("emailError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";
	    	return true;
	    }
	}



/**
 * 
 * Function For Validate MobileNo
 * 
 */

function mobileNoValidate(){
	

var contact=document.getElementById("mobile_no").value;
	
	if(contact==""){
		document.getElementById("mobileNoError").innerHTML="Contact Must not be empty..!!";
	
		return false;
	}	
	else if(isNaN(contact))
		{
		document.getElementById("mobile_no").focus();
		document.getElementById("mobileNoError").innerHTML="Enter Digit between 0 to 9..!!";
		return false;
		}
	else if(contact.length != 10)
	{
		document.getElementById("mobile_no").focus();
		document.getElementById("mobileNoError").innerHTML="Enter 10 Digit Contact Number..!!";
		return false; 
	}
	else {
		document.getElementById("mobileNoError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";
		return true;
	}
}




/**
 * 
 * Function For ValidatePassword
 * 
 */

function passwordValidate()
{
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
 * Function For Validate Re-EnterPassword
 * 
 */

function reEnterPassValidate()
{
	var cpass=document.getElementById("re_password").value;
	var pass=document.getElementById("password").value;

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












