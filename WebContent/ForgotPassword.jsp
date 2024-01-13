<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="validation/ValidFPassword.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
				<!-- Start Of Internal Css -->
<style>
	div.transbox{
		opacity:0.7;
		
		}
		
.glyphicon-ok{
color:green;
}

</style>
				<!-- End Of Internal Css -->
			

<!-- <script>
$(document).ready(function(){
    $(".close").click(function(){
        $("#myAlert").alert("close");
    });
});
</script> -->

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
		
		<h3 style="color: orange;">PhoneBook</h3>
	</div>
<div class="collapse navbar-collapse navbar-right" id="bs-WDM-navbar-collapse-1">
	<ul class="nav navbar-nav">
		<li><a href="Home.jsp" style="color: orange;font-family:cursive; "><span class="glyphicon glyphicon-home"></span></a></li>
		<li><a href="Login.jsp" style="color: orange;font-family:cursive; ">Login</a></li>
		<li><a href="UserRegistration.jsp" style="color: orange;font-family:cursive; ">SignUp</a></li>
	</ul>
</div>
</div>
</nav> 
						<!-- End Of Header -->
						



						<!-- Start Of Container -->
<div class="transbox">
<div class="container" style="margin-top: 150px;">
<div class="row" >


<div class="col-md-5"  ">
<div class="panel panel-default" >
<div class="panel-heading" >

<h4 class="panel-title" style="color :maroon ;font-family: cursive; font-weight: bold; font-size: 30px; ">Forgot Password?</h4>
</div>
<div class="panel-body">

						<!-- Start Of Message -->
						
		${errorMessage}
	${successMessage}
	
					<!-- End Of Message -->
	
							<!-- Form Start -->
	
<form action="forgotPassword" method="post" name="myForm" onsubmit="return validateForgotPassword()">
<!-- <form method="post" name="myForm" action="forgotPassword" onsubmit=" return validateForgotPassword()" > -->

<div class="form-group">
<label for="email_id">Email:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-envelope" style="color:maroon;"></span>
</div>
<input type="email" name="email_id" class="form-control"  id="email_id" onblur="emailValidate()" placeholder="Enter EmailId" style="font-family:cursive; ">
<span style="color: red; font-weight:bold; font-family: cursive;" id="emailError"></span>
</div>
</div>

<div class="form-group">
<label for="mobile_no">Mobile_no:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-earphone" style="color:maroon;"></span>
</div>
<input type="text" name="mobile_no" class="form-control"  id="mobile_no" onblur="mobileNoValidate()" placeholder="Enter Mobile Number" style="font-family:cursive; ">
<span style="color: red; font-weight:bold; font-family: cursive;" id="mobileNoError"></span>
</div>
</div>



<div class="form-group">
<label for="password">New Password:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-chevron-right" style="color:maroon;"></span>
</div>
<input type="password" name="password" class="form-control" id="password" onblur="passwordValidate()" placeholder="Enter New Password" style="font-family:cursive; ">
<span style="color: red; font-weight:bold;font-family: cursive;" id="passwordError"></span>
</div>
</div>


<div class="form-group">
<label for="re_password">Re-Enter Password:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-chevron-right" style="color:maroon;"></span>
</div>
<input type="password" name="re_password" class="form-control" id="re_password" onblur="reEnterPassValidate()" placeholder="RE-Enter Password" style="font-family:cursive; ">
<span style="color: red; font-weight:bold;font-family: cursive;" id="reError"></span>
</div>
</div>


<button type="submit" class="btn btn-primary btn-lg btn-block" style="font-family:cursive; ">Confirm</button><br>
<!-- <button type="submit" id="contactbutton" class="btn btn-default" >Login</button><br><br> -->



</form>
							<!-- End Of Form -->
</div>
</div>
</div>
</div>
</div>
</div>
							<!--End Of Container -->
</body>
								
</html>