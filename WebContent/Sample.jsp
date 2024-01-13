<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	setTimeout(function(){
	$('.fly-in-text').removeClass('hidden');
	},200);
	})();
	</script> 
<style type="text/css">



 .fly-in-text{
		list-style:none;
		position:absolute;
		left:45%;
		top:50%;
		transform:translateX(-50%) translateY(-50%); 
} 
.fly-in-text li{
		display:inline-block;
		margin-right: 30px;
		font-family: Open Sans,Arial;
		font-weight: 300;
		font-size: 4em;
		color: #527b8c;
		opacity:1;
		transition:all 5.0s ease;
}
.fly-in-text li:last-child{
		margin-right:0; 
}
.fly-in-text.hidden li{
		opacity 0;
}
	.fly-in-text.hidden li:nth-child(1){transform:translateX(-200px) transform:translateY(-200px);}
	.fly-in-text.hidden li:nth-child(2){transform:translateX(20px) transform:translateY(100px);}
	.fly-in-text.hidden li:nth-child(3){transform:translateX(-150px) transform:translateY(-80px);}
	.fly-in-text.hidden li:nth-child(4){transform:translateX(10px) transform:translateY(-200px);}
	.fly-in-text.hidden li:nth-child(5){transform:translateX(-300px) transform:translateY(200px);}
	.fly-in-text.hidden li:nth-child(6){transform:translateX(20px) transform:translateY(-20px);}
	.fly-in-text.hidden li:nth-child(7){transform:translateX(30px) transform:translateY(200px);}



</style>


</head>
<body background="image/2.jpg">

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
		<li><a href="Home.jsp" style="color: orange;"><span class="glyphicon glyphicon-home"></span></a></li>
		<li><a href="Login.jsp" style="color: orange;">Login</a></li>
		<li><a href="UserRegistration.jsp" style="color: orange;">SignUp</a></li>
	</ul>
</div>
</div>
</nav> 
<footer class="site-footers" >
<div class="container" style="margin-top: 100px; color: #41c3d2;">
<div class="row">
<div class="col-md-5">
<h4 >Contact Address</h4>
<address>
Plot No:,<br>
city of place,<br>
country of place.
</address>

</div>
</div>
<div class="button-footer">
<div class="col-md-5">@Copyright Way2PhoneBook</div>
<div class="col-md-7">

</div>
</div>
</div>
</footer>

<ul class="footer-nav" style="margin-left: 800px; margin-top: 100px;" >
<li><a href="Home.jsp" style="color: #41c3d2;"><span class="glyphicon glyphicon-home"></span></a></li>
		<li><a href="Login.jsp" style="color: #41c3d2;">Login</a></li>
		<li><a href="UserRegistration.jsp" style="color: #41c3d2;">SignUp</a></li>
</ul>

</div>
						<!-- End Of NAvigation Bar -->
						


<ul class="fly-in-text hidden">
	
		<li>W</li>
		<li>E</li>
		<li>L</li>
		<li>C</li>
		<li>O</li>
		<li>M</li>
		<li>E</li>
		
</ul>



</body>
</html>