<!-- JSP PAGE FOR ADD NEW CONTACT -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="validation/AddNewContact.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
					<!-- INTERNAL CSS FOR VALIDATION  Start-->
<style >
.glyphicon-ok{
color:green;
}
</style>
						<!-- INTERNAL CSS FOR VALIDATION End -->
				
</head>
<body background="image/2.jpg" >

					<!-- Header Start -->
<nav class="navbar navbar navbar-static-top no-magin" role="navigation">

<div class="container-fluid">
	<div class="navbar-header">		
		
		<%-- <jsp:useBean id="userinfo"  scope= "session" class="com.Action.LoginAction">
		<jsp:setProperty property="email_id"  name="userinfo"/>
		<h5 style="color:orange; margin-left: 100px; "><jsp:getProperty property="email_id" name="userinfo"/> </h5><br> 

</jsp:useBean> --%>
<h3 style="color: orange;">PhoneBook</h3>
	</div>
<div class="collapse navbar-collapse navbar-right" id="bs-WDM-navbar-collapse-1">
	<ul class="nav navbar-nav">
		<li><a href="Home.jsp" data-toggle="tooltip" data-placement="left" title="Home Page" style="color: orange;"><span class="glyphicon glyphicon-home"></span></a></li>
		  <li><a href="ViewRecords" data-toggle="tooltip" data-placement="top" title="View All Contact"  style="color: orange;font-family:cursive; ">ViewContact</a></li>   
		<!-- <li><form action="viewContact"><button type="submit" class="btn btn-link" style="color: orange;font-family:cursive; margin-top: 8px;" >ViewContact</button><br></form></li>
 -->		<li><a href="ChangePassword.jsp" data-toggle="tooltip" data-placement="top" title="Change Password"  style="color: orange;font-family:cursive; ">ChangePassword</a></li>  
		<li><a href="ChangePassword.jsp" data-toggle="tooltip" data-placement="left" title="User Edit Profile"  style="color: orange;font-family:cursive; ">EditProfile</a></li>  
		<li><form action="logout"><button type="submit" class="btn btn-link" style="color: orange;font-family:cursive; margin-top: 8px;" >Logout</button><br></form></li>
	</ul>
</div>
</div>
</nav>

							<!-- Header End-->



						<!-- Container Start -->
<div class="container" style="margin-top: 150px;">
<div class="row">


<div class="col-md-5" >
<div class="panel panel-default">
<div class="panel-heading" >

<h4 class="panel-title" style="color :maroon ;font-family: cursive; font-weight: bold; font-size: 30px; ">Add New Contact</h4>
</div>
<div class="panel-body">

						<!-- Message Start -->
						
				<h3><strong style="color: green">${successMessage}</strong></h3>
				<h3><strong style="color: green">${errorMessage}</strong></h3>
							<!-- Message End -->		
						
						<!-- Form Start -->
						
<form name="myForm" action="addContact" method="post" onsubmit="return addNewContact()" >
<!-- <form name="userform" action="Pack5"  id="form" > -->



<div class="form-group">
<label for="name">Name:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-user" style="color:maroon;"></span>
</div>
<input type="name" name="name" class="form-control" onblur="nameValidate()" id="name" placeholder="Enter Name" style="font-family:cursive; ">
 <span style="color: red; font-weight:bold;font-family: cursive;" id="NameError"></span>
</div>
</div>

<div class="form-group">
<label for="contact_no">MobileNo:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-earphone" style="color:maroon;"></span>
</div>
<input type="contact_no" name="contact_no" class="form-control"  id="contact_no" onblur="contactNoValidate()" placeholder="Enter Mobile Number" style="font-family:cursive; ">
<span style="color: red; font-weight:bold;font-family: cursive;" id="contactNoError"></span>
</div>
</div>


<div class="form-group">
<label for="birth_date">DOB:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-calendar" style="color:maroon;"></span>
</div>
<input type="text" name="birth_date" class="form-control"  id="birth_date" style="font-family:cursive; ">
</div>
</div>

<div class="form-group">
<label for="email">Email:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-envelope" style="color:maroon;"></span>
</div>
<input type="email" name="email" class="form-control"  id="email" onblur="emailValidate()" placeholder="Enter EmailId" style="font-family:cursive; ">
<span style="color: red; font-weight:bold;font-family: cursive;" id="emailError"></span>
</div>
</div>








<button type="submit" class="btn btn-primary btn-lg btn-block" style="font-family:cursive; ">ADD</button><br>
</form>
						<!-- Form End -->
<!-- <form action="logout">
<button type="submit" class="btn btn-link"  style="font-family:cursive; ">Logout</button><br>
<button type="submit" id="contactbutton" class="btn btn-default" >Login</button><br><br>
</form> -->



</div>
</div>
</div>
</div>
</div>
					<!-- Container End -->

</body>
</html>