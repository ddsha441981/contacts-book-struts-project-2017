<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="validation/validate.js"></script>
<link href="CssFile/1.css" rel="stylesheet" type=text/css>


<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
 <!--  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>>
 -->
 						<!-- internal css Start -->
<style>
div.transbox{
	opacity:0.7;
	
}
.glyphicon-ok{
color:green;
}
</style>
						<!-- internal css End -->
		
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

 

<body background="image/2.jpg">

					<!-- Start Of Header -->
					
<nav class="navbar navbarnavbar-static-top no-magin" role="navigation">

<div class="container-fluid">
	<div class="navbar-header">
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-WDM-navbar-collapse-1">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>

	</button>
		<!-- <a class="navbar-brand" href="#">PhoneBook</a> -->
		<h3 style="color: orange;">PhoneBook</h3>
	</div>
<div class="collapse navbar-collapse navbar-right" id="bs-WDM-navbar-collapse-1">
	<ul class="nav navbar-nav">
		<li><a href="Home.jsp" style="color: orange;"><span class="glyphicon glyphicon-home"></span></a></li>
		<li><a href="Login.jsp" style="color: orange;">Login</a></li>
		
	</ul>
</div>
</div>
</nav>
							<!-- End Of Header -->
							
						<!-- 	Start Of Container -->
					
<div class="transbox">
<div class="container" style="margin-top: 50px; margin-left: 300px;  ">
<div class="row">


<div class="col-md-5" >
	<div class="panel panel-default"  >
		<div class="panel-heading"  >

		<h4 align="center" class="panel-title" style="color :orange; font-size:large; font-family:cursive;font-weight: bold; ">New Registration</h4>
		</div>
	<div class="panel-body">

								
								
								<!-- Start of Message -->
<strong style="color: red">${errorMessage}</strong>
<strong style="color: green">${successMessage}</strong>

								<!-- End of Message -->


							<!-- Form Start -->

<form name="myForm" action="registration" method="post" onsubmit="return validateRegistration()" >
<!-- <form action="registration"  name="myform" method="post"  onsubmit="return validateRegistration()" > -->

<div class="form-group">
	<label class="control-label" style="color:navy; font-family: cursive;">First Name</label>
	<input type="text"  name="firstname" class="form-control"  id="firstname" onblur="firstNameValidate()" placeholder="Enter First Name"  style="font-family:cursive; "  >
	 <span style="color: red; font-weight:bold;font-family: cursive;" id="firstNameError"></span>
	
</div>

<div class="form-group">
	<label class="control-label" style="color:navy; font-family: cursive;">Last Name</label>
	<input type="text" name="lastname" class="form-control"  id="lastname" onblur="lastNameValidate()" placeholder="Enter Last Name" style="font-family:cursive;"  >
	<span style="color: red; font-weight:bold;font-family: cursive;" id="lastNameError"></span>
</div>


<div class="form-group">
	<label class="control-label" style="color:navy; font-family: cursive;">Mobile No</label>
	<input type="text" name="mobile_no" class="form-control"  id="mobile_no" onblur="mobileNoValidate()" placeholder="Enter Mobile No" style="font-family:cursive;"  >
	
	<span style="color: red; font-weight:bold;font-family: cursive;" id="mobileNoError"></span>
</div>

<div class="form-group">
	<label class="control-label" style="color:navy; font-family: cursive;">DOB</label>
	<input type="text" name="dob" class="form-control"  id="dob" placeholder="Enter DOB" style="font-family:cursive;"  >
		
</div>


 <div class = "form-group ">
      <label for = "city" class = "control-label" style="color:navy; font-family: cursive;" >City:</label>
     <span style="color: red; font-weight:bold;font-family: cursive;" id="ctyError"></span>
        <select name='city' id='city' class="form-control" style="font-family:cursive;"   >
      <option selected disabled>Select-City</option>
        	<option>Ahmedabad</option>	
        	<option>Pune</option>
        	<option>Mumbai</option>
        	<option>Delhi</option>	
        </select>
        
      </div>
 
   
   
<div class="form-group">
	<label class="control-label" style="color:navy; font-family: cursive;">Email</label>
	<input type="email" name="email_id" class="form-control"  id="email_id" onblur="emailValidate()" placeholder="Enter Email Id" style="font-family:cursive;" >
	<span style="color: red; font-weight:bold;font-family: cursive;" id="emailError"></span>
</div>

<div class="form-group">
	<label class="control-label" style="color:navy; font-family: cursive;">Password</label>
	<input type="password" name="password" class="form-control"  id="password" onblur="passwordValidate()" placeholder="Enter Password" style="font-family:cursive;" >
	<span style="color: red; font-weight:bold;font-family: cursive;" id="passwordError"></span>

	
	
</div>


<div class = "form-group ">
      <label for = "gender" class = "control-label" style="color:navy; font-family: cursive;">Gender:
		
  <input type="radio"  name="gender"  id="gender" value="male" checked="checked"> Male 
 <input type="radio" name="gender" id="gender" value="female"> Female<br> 
</label>
      </div>
   </div>



<div class="form-group" align="center">
<div class="input-prepend">
          <span class="add-on"><i class="icon-user icon-white"></i></span>
            <button type="submit" style="border-radius:10px; border-bottom-color: navy;  border-style: groove; "   class="btn-default">Register</button>          
 

</div>
     
    </div>
</form>
							<!-- Form Close -->

</div>

</div>

</div>

</div>

</div>


						<!-- 	End Of Container -->

									


</body>
</html>