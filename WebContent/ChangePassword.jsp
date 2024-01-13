<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%@ taglib prefix="s"  uri="/struts-tags"%> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ChangePassword</title>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="validation/ChangePassword.js"></script>
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

<h4 class="panel-title" style="color :maroon ;font-family: cursive; font-weight: bold; font-size: 30px; ">Change Password?</h4>
</div>
<div class="panel-body">

						<!-- Form Start -->


<form  action="changePassword" method="post" name="myForm" onsubmit="return  validateChangePassword()" >

							<!-- Message Start -->
${errorMessage}
	${successMessage}
	
								<!-- End OF Message -->
  <div class="form-group">
<label for="password">Enter Old Password:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-user" style="color:maroon;"></span>
</div>
<input type="password" name="password" class="form-control"  id="password" onblur="passwordValidate()" placeholder="Enter Old Password" style="font-family:cursive; ">
<span style="color: red; font-weight:bold; font-family: cursive;" id="passwordError"></span>
</div>
</div>  

<%--  <label> Email:<s:property value="email_id"/></label>  --%>
<%-- <jsp:setProperty property="email_id"  name="userinfo"/>
		<h5 style="color:orange; margin-left: 100px; "><jsp:getProperty property="email_id" name="userinfo"/> </h5><br> 
 --%>


<div class="form-group">
<label for="nw_password">New Password:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-chevron-right" style="color:maroon;"></span>
</div>
<input type="password" name="nw_password" class="form-control" id="nw_password" onblur="nwpasswordValidate()" placeholder="Enter New Password" style="font-family:cursive; ">
<span style="color: red; font-weight:bold; font-family: cursive;" id="nwpasswordError"></span>
</div>
</div>


<div class="form-group">
<label for="re_password">Re-Enter Password:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-chevron-right" style="color:maroon;"></span>
</div>
<input type="password" name="re_password" class="form-control" id="re_password"  onblur="reEnterPassValidate()" placeholder="RE-Enter Password" style="font-family:cursive; ">
<span style="color: red; font-weight:bold; font-family: cursive;" id="reError"></span>
</div>
</div>


<button type="submit" class="btn btn-primary btn-lg btn-block" style="font-family:cursive; ">Confirm</button><br>
<!-- <button type="submit" id="contactbutton" class="btn btn-default" >Login</button><br><br> -->



</form>
						<!-- End OF Form -->
</div>
</div>
</div>
</div>
</div>
							<!-- End OF Container -->
</body>
</html>
