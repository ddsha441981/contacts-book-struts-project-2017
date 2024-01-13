/**
 * Validation For Registration
 * 
 */

function validateRegistration()
{
	if(firstNameValidate() & lastNameValidate() & mobileNoValidate()  &  emailValidate()  & passwordValidate())
	{
	
		document.getElementById("Check").innerHTML="Registration SuccessFully Done>>>Now Goto Login";
		return true;

	}
	else{
	
	
	return false;
	}
	
}
	
	/**
	 * 
	 * Function For Validate FirstName
	 * 
	 */

function firstNameValidate(){
	var fname=document.getElementById("firstname").value;
	var letters = /^[A-Za-z]+$/;
	

	if(firstname.value.match(letters))
	{
		
		document.getElementById("firstNameError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";
	return true;
	}
	else
	{	
		document.getElementById("firstname").focus();
		document.getElementById("firstNameError").innerHTML="First Name must have alphabet only and Not Empty";

	firstname.focus();
	return false;
	}
}

/**
 * 
 * Function For Validate LastName
 * 
 */

function lastNameValidate()
{	
	
	var letters = /^[A-Za-z]+$/;
	if(lastname.value.match(letters))
	{
		document.getElementById("lastNameError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";
	return true;
	}
	else
	{
		document.getElementById("lastname").focus();
		document.getElementById("lastNameError").innerHTML="LastName must have alphabet only and Not Empty";
	
	lastname.focus();
	return false;
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
 * Function For Validate city
 * 
 *//*

function cityValidate(){
	var ct=document.getElementById("city");
	if(ct.value==""){
		document.getElementById("ctyError").innerHTML="Please Select City..!!";
		return false;
		
	}
	else{
		document.getElementById("ctyError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";

		return true;
	}

}
*/






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














