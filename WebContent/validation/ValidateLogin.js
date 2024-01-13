/**
 * Validation For Login
 * 
 */

function validateLogin()
{
	if(emailValidate() & passwordValidate() )
	{
	
		return true;

	}
	else{
	
	return false;
	}
	
	
	
	/**
	 * 
	 * Function For Validate EmailId
	 * 
	 */
	
	function emailValidate()
	{
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
	 * Function For ValidatePassword
	 * 
	 */
	
	function passwordValidate()
	{
		var pass=document.getElementById("password").value;

		if(pass==""){
			document.getElementById("passwordError").innerHTML="Password must not be empty";
			
			return false;
		}
		else if((pass.length < 2) || (pass.length > 15)){
			document.getElementById("password").focus();
			document.getElementById("passwordError").innerHTML="Password must be between 2 to 15 characters";
		
			return false;
		}
		
		else{
			document.getElementById("passwordError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";
			return true;
		}
	}
	
}

