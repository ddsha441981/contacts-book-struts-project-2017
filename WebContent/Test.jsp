<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery-3.1.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>

<!-- Small modal -->
<a href="#" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</a>

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  
      
						<!-- Container Start -->
<div class="container" style="margin-top: 150px;">
<div class="row">


<div class="col-md-5" >
<div class="panel panel-default">
<div class="panel-heading" >

<h4 class="panel-title" style="color :maroon ;font-family: cursive; font-weight: bold; font-size: 30px; ">Add New Contact</h4>
</div>
<div class="panel-body">

					
							<!-- Message End -->		
						
						<!-- Form Start -->
						
<form  action="updateContact" method="post" onsubmit="return addNewContact()" >
<div id="edit">



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








<button type="submit" class=" update btn btn-primary btn-lg btn-block" onclick="updatestatus()" style="font-family:cursive; ">Update</button><br>
</div>
</form>



</div>
</div>
</div>
</div>
</div>
					<!-- Container End -->

    </div>
  
</body>
</html>
