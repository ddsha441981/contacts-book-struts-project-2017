<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<%@ taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="image/2.jpg">
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
		<li><a href="AddNewContact.jsp"data-toggle="tooltip" data-placement="right" title="Add New Contact"  style="color: orange;font-family:cursive; ">AddContact</a></li> 
		  <li><a href="ViewRecords" data-toggle="tooltip" data-placement="top" title="View All Contact"  style="color: orange;font-family:cursive; ">ViewContact</a></li>  
		<li><a href="ChangePassword.jsp" data-toggle="tooltip" data-placement="top" title="Change Password"  style="color: orange;font-family:cursive; ">ChangePassword</a></li>  
		<li><a href="ChangePassword.jsp" data-toggle="tooltip" data-placement="left" title="User Edit Profile"  style="color: orange;font-family:cursive; ">EditProfile</a></li>  
		<li><form action="logout"><button type="submit" class="btn btn-link" style="color: orange;font-family:cursive; margin-top: 8px;" >Logout</button><br></form></li>
	</ul>
</div>
</div>
</nav>

							<!-- Header End-->

<!-- Start Of Container -->
<div class="container" style="margin-top: 150px;">
<div class="row">


<div class="col-md-5" >
<div class="panel panel-default">
<div class="panel-heading" >

<h4 class="panel-title" style="color :maroon ;font-family: cursive; font-weight: bold; font-size: 30px; ">Update Contact Detail</h4>
</div>
<div class="panel-body">

						<!-- Form Start -->


<form  action="changePassword" method="post" name="myForm" onsubmit="return  validateChangePassword()" >

							<!-- Message Start -->
${errorMessage}
	${successMessage}
	
								<!-- End OF Message -->
  <div class="form-group">
<label for="name">Name:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-user" style="color:maroon;"></span>
</div>
<!-- <input type="text" name="name" class="form-control"  id="name"   style="font-family:cursive; "> -->
 <input type = "text" class = "form-control" name = "name" id="name" value="${name }">
  <span style="color: red; font-weight:bold" id="nameError"></span>
</div>
</div>  


 <div class="form-group">
<label for="contact_no">Mobile NO:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-earphone" style="color:maroon;"></span>
</div>
<!-- <input type="text" name="contact_no" class="form-control"  id="contact_no"   style="font-family:cursive; "> -->
 <input type = "text" class = "form-control" name = "contact_no" id="contact_no" value="${contact_no}">
         <span style="color: red; font-weight:bold" id="contactError"></span>

</div>
</div>  

 <div class="form-group">
<label for="birth_date">DOB:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-calendar" style="color:maroon;"></span>
</div>
<!-- <input type="text" name="birth_date" class="form-control"  id="birth_date"   style="font-family:cursive; "> -->
 <input type = "text" class = "form-control" name = "birth_date" id="birth_date" value="${birth_date}">

</div>
</div> 

 <div class="form-group">
<label for="email">Email Id:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-envelope" style="color:maroon;"></span>
</div>
<!-- <input type="email" name="email" class="form-control"  id="email"   style="font-family:cursive; "> -->
<input type = "email" class = "form-control" name = "email" id="email" value="${email }">

         <span style="color: red; font-weight:bold" id="emailError"></span>

</div>
</div> 



<button type="submit" class="btn btn-primary btn-lg btn-block" style="font-family:cursive; ">Update</button><br>
<!-- <button type="submit" id="contactbutton" class="btn btn-default" >Login</button><br><br> -->



</form>
						<!-- End OF Form -->
</div>
</div>
</div>
</div>
</div>
							<!-- End OF Container -->

						




<%-- <table class="table table-condensed">
<tr>
<td> <label for="name" style="color:white;">Name:</label></td>

<td><s:textfield label="Name" value="%{#application.a}" name="name"  /><br></td>
</tr>
<tr>
<s:textfield label="Mobile NO" value="%{#application.b}" name="contact_no" /><br>
</tr>
<tr>
<s:textfield label="BirthDate" value="%{#application.c}" name="birth_date" /><br>
</tr>
<tr>
<s:textfield label="Email" value="%{#application.d}" name="email" /><br>
</tr>
<tr>
 
<s:submit value="Update" />
</tr>
</table> --%>
 









						<!-- End OF Form -->

							<!-- End OF Container -->

 

</body>
</html>