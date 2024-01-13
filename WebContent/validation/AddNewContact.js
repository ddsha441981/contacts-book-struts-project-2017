/**
	 * 
	 * Function For Validate AddNEwContact
	 * 
	 */

function addNewContact(){
	
	if(nameValidate() & contactNoValidate() &  emailValidate())
	{
	
		return true;

	}
	else{
	
	
	return false;
	}
	
}
	/**
	 * 
	 * Function For Validate Name
	 * 
	 */

function nameValidate(){
	var fname=document.getElementById("name").value;
	var letters = /^[A-Za-z]+$/;
	
	
	 if(fname.match(letters))
	{
		document.getElementById("NameError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";
	return true;
	}
	else
	{
		document.getElementById("name").focus();
		document.getElementById("NameError").innerHTML="First Name must have alphabet only and Not Empty";

	
	return false;
	}
}
	
	
	
	
	


/**
 * 
 * Function For Validate Contact Number
 * 
 */

function contactNoValidate(){
	
var contact=document.getElementById("contact_no").value;
	
	if(contact==""){
		document.getElementById("contactNoError").innerHTML="Contact Must not be empty..!!";
	
		return false;
	}	
	else if(isNaN(contact))
		{
		document.getElementById("contact_no").focus();
		document.getElementById("contactNoError").innerHTML="Enter Digit between 0 to 9..!!";
		return false;
		}
	else if(contact.length != 10)
	{
		document.getElementById("contact_no").focus();
		document.getElementById("contactNoError").innerHTML="Enter 10 Digit Contact Number..!!";
		return false; 
	}
	else {
		document.getElementById("contactNoError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";
		return true;
	}
}


/**
 * 
 * Function For Validate Email
 * 
 */


function emailValidate(){	
	
	var x = document.forms["myForm"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if(x==""){
    	document.getElementById("emailError").innerHTML="Email must not be empty";
    	
    	return false;
    }
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
    	document.getElementById("email").focus();
        document.getElementById("emailError").innerHTML="Enter a email followed by @";
        
        return false;
    }
    else{
    	document.getElementById("emailError").innerHTML="<span class='glyphicon glyphicon-ok'></span>";
    	return true;
    }
}
	
