<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="css/bootstrap.min.css" >
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome User</title>
</head>

<body background="image/2.jpg">

						<!-- Start Of Header -->
						
						
<nav class="navbar navbar navbar-static-top no-magin" role="navigation">

<div class="container-fluid">
	<div class="navbar-header">		
		<h3 style="color: orange;font-family:cursive; ">Welcome</h3>
		<jsp:useBean id="userinfo"  scope= "session" class="com.Action.LoginAction">
		<jsp:setProperty property="email_id"  name="userinfo"/>
		<h5 style="color:orange; margin-left: 100px; "><jsp:getProperty property="email_id" name="userinfo"/> </h5><br> 

</jsp:useBean>
	</div>
<div class="collapse navbar-collapse navbar-right" id="bs-WDM-navbar-collapse-1">
	<ul class="nav navbar-nav">
		<li><a href="Home.jsp" data-toggle="tooltip" data-placement="left" title="Home Page" style="color: orange; "><span class="glyphicon glyphicon-home"></span></a></li>
		<li><a href="AddNewContact.jsp"data-toggle="tooltip" data-placement="right" title="Add New Contact"  style="color: orange;font-family:cursive; ">AddContact</a></li> 	
		  <li><a href="ViewRecords" data-toggle="tooltip" data-placement="top" title="View All Contact"  style="color: orange;font-family:cursive; ">ViewContact</a></li>  
		<li><a href="ChangePassword.jsp" data-toggle="tooltip" data-placement="top" title="Change Password"  style="color: orange;font-family:cursive; ">ChangePassword</a></li>  
		<li><a href="ChangePassword.jsp" data-toggle="tooltip" data-placement="left" title="User Edit Profile"  style="color: orange;font-family:cursive; ">EditProfile</a></li>  
		<li><form action="logout"><button type="submit" class="btn btn-link" style="color: orange; margin-top: 8px;font-family:cursive; " >Logout</button><br></form></li>
		
	</ul>
</div>
</div>
</nav>
							<!-- End of Head -->
							
					<!--Start Message Tag -->		
					
<h3><strong style="color: green">${successMessage}</strong></h3>
					
					<!--Start Message Tag -->	


				<!-- start of Form -->
				
				
<form name="user" action="Pack4"  id="form" >
 
  <div class="col-md-4">
    <div class="input-group" >
      <input type="text" class="form-control" placeholder="Search for...">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button" >Go!</button>
      </span>
    </div><!-- /input-group -->
  </div><!-- /.col-md-4 --><br>


</form>

							<!-- End of Form -->
							

</body>


</html>