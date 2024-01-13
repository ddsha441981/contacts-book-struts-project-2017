<%@ page language="java" contentType="text/html"%>
 <%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="validation/ValidateLogin.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
				<!-- internal css Start -->
<style>
.glyphicon-ok{
color:green;
}
</style>

				<!-- internal css End -->
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
		<li><a href="UserRegistration.jsp" style="color: orange;font-family:cursive; ">SignUp</a></li>
	</ul>
</div>
</div>
</nav> 
						<!-- End Of Header -->
						
					<!-- 	Start Of Container --> 
<div class="container" style="margin-top: 150px;">
	<div class="row">
		<div class="col-md-5" >
			<div class="panel panel-default" >
				<div class="panel-heading">
<h4 class="panel-title" style="color:maroon ; font-family: cursive; font-weight: bold;"><span class="glyphicon glyphicon-user"></span>New User?</</h4>
				</div>
		<div class="panel-body">

<address>
		<strong></strong><br><br>
			<a href="UserRegistration.jsp" class="btn btn-primary" style="font-family:cursive; ">New Registration</a>
</address>
		</div>
	</div>
</div>

<div class="col-md-5" >
	<div class="panel panel-default">
		<div class="panel-heading" >

<h4 class="panel-title" style="color :maroon ;font-family: cursive; font-weight: bold; font-size: 30px; ">Login</h4>
		</div>
<div class="panel-body">

	
					
					<!-- Start Of Message -->					
					
						${errorMessage}
						${successMessage}
						${logoutMessage}
						
					<!-- End Of Message -->	
	
 
  

						<!-- Form Start -->
						
<form action="login" method="post" name="myForm" onsubmit="return validateLogin()">

<!-- <form name="userform" action="login"  id="form"  onsubmit="return validateLogin()"> -->

<div class="form-group">
<label for="email_id">Email:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-envelope" style="color:maroon;"></span>
</div>
<input type="email" name="email_id" class="form-control"  id="email_id" placeholder="Enter EmailId" style="font-family:cursive; ">
<span style="color: red; font-weight:bold;font-family: cursive;" id="emailError"></span>
</div>
</div>



<div class="form-group">
<label for="password">Password:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-chevron-right" style="color:maroon;"></span>
</div>
<input type="password" name="password" class="form-control" id="password" placeholder="Enter Password" style="font-family:cursive; ">
 <span style="color: red; font-weight:bold;font-family: cursive;" id="passwordError"></span>
</div>
</div>


<button type="submit" class="btn btn-primary btn-lg btn-block"  style="font-family:cursive; ">LogIn</button><br>
	
<!-- <button type="submit" id="contactbutton" class="btn btn-default" >Login</button><br><br> -->

<h5 align="right"><a href="ForgotPassword.jsp" style="font-family:cursive; ">ForgotPassword?</a></h5>

</form>
							<!-- Form Close -->
</div>
</div>
</div>
</div>
</div>
							<!-- Container Close -->
							


</body>
</html>