<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%-- <link rel="stylesheet" href="css/bootstrap.min.css" >
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script> --%>
 <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery-3.1.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
 <script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script> 
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
  
 


 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

$(document).ready(function(){
	$('#edit').hide();
	$('#div3').hide();
	
	
	
});

</script>


 <script>

$(document).ready(function(){
	 $('.editbtn').on('click',function(){
		 $("#div3").hide();
		 $('#edit').show();
		/*  $(this).parents('tr').first().remove(); */
		 var u_id = $(this).closest("tr").find('td:eq(0)').text();
		 var name = $(this).closest("tr").find('td:eq(1)').text();
         var contact = $(this).closest("tr").find('td:eq(2)').text();
         var dob = $(this).closest("tr").find('td:eq(3)').text();
         var email = $(this).closest("tr").find('td:eq(4)').text();
         
         alert(name+contact+dob+email);
         $('#u_id').val(u_id);
         $('#name').val(name);
         $('#contact_no').val(contact);
         $('#birth_date').val(dob);
         $('#email').val(email); 
         
       
			
         
          });
	
});

</script>


 






</head>
<%-- <style>
.pagination {
margin-right:100px;
    display: inline-block;
}

.pagination a {
    color: orange;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
}

.pagination a.active {
    background-color: #4CAF50;
    color: white;
}

.pagination a:hover:not(.active) {background-color: #4CAF50;}
</style> --%>
<!-- </head> -->
<body>
<!--  <body background="image/2.jpg">  -->
 <!-- Start Of Header -->
						
						
<nav class="navbar navbar navbar-static-top no-magin" role="navigation">

<div class="container-fluid">
	<div class="navbar-header">		
		<h3 style="color:maroon; ;font-family:cursive; font-weight: bold; ">Welcome</h3>
		<%-- jsp:useBean id="userinfo"  scope= "session" class="com.Action.LoginAction">
		<jsp:setProperty property="email_id"  name="userinfo"/>
		<h5 style="color:orange; margin-left: 100px; "><jsp:getProperty property="email_id" name="userinfo"/> </h5><br> 

</jsp:useBean> --%>
	</div>
<div class="collapse navbar-collapse navbar-right" id="bs-WDM-navbar-collapse-1">
	<ul class="nav navbar-nav">
		<li><a href="Home.jsp" data-toggle="tooltip" data-placement="left" title="Home Page" style="color: maroon; font-weight: bold; "><span class="glyphicon glyphicon-home"></span></a></li>
		<li><a href="AddNewContact.jsp"data-toggle="tooltip" data-placement="right" title="Add New Contact"  style="color: maroon; font-weight: bold;font-family:cursive; ">AddContact</a></li> 	
		<li><a href="ViewContact.jsp" data-toggle="tooltip" data-placement="top" title="View All Contact"  style="color: maroon;font-weight: bold;font-family:cursive; ">ViewContact</a></li>  
		<li><a href="ChangePassword.jsp" data-toggle="tooltip" data-placement="top" title="Change Password"  style="color: maroon;font-weight: bold;font-family:cursive; ">ChangePassword</a></li>  
		<li><a href="ChangePassword.jsp" data-toggle="tooltip" data-placement="left" title="User Edit Profile"  style="color: maroon;font-weight: bold;font-family:cursive; ">EditProfile</a></li>  
		<li><form action="logout"><button type="submit" class="btn btn-link" style="color: maroon;font-weight: bold; margin-top: 8px;font-family:cursive; " >Logout</button><br></form></li>
		
	</ul>
</div>
</div>
</nav> 
							<!-- End of Head -->
<%-- <s:form action="viewContact" method="post">

 </s:form> --%>
 <div id="div3" style="color: green;"><h3>Update Successfully Done</h3></div>
 <table id="example" class="display" cellspacing="0" width="100%" style="color: navy;" > 
<!-- <table class="table table-striped" style="color: maroon;"> -->
<!-- <thead ><h2 align="center" style="color:green;">Contact Detail<h2></h2></thead> -->
<thead>

	<tr>
		<th>User Id</th>
		<th>Name</th>
		<th>Mobile No</th>
		<th>BirthDate</th>
		<th>Email</th>
		<th>Edit</th>
		<th>Delete</th> 
	</tr>


</thead>

<tfoot>

	<tr>
		<th>User Id</th>
		<th>Name</th>
		<th>Mobile No</th>
		<th>BirthDate</th>
		<th>Email</th>
		<th>Edit</th>
		<th>Delete</th> 
	</tr>


</tfoot>
 <tbody style="color: purple; ;">
 <s:iterator  value="list" var="lea"> 
 
  	<tr id="${lea.u_id}">
  	
  			 <td id="0">${lea.u_id}</td>
	 		 <td id="1">${lea.name}</td>
		 	 <td id="2">${lea.contact_no}</td>  
			 <td id="3">${lea.birth_date}</td>  
			 <td id="4">${lea.email}</td> 
			 <%-- <td> 
  			
  			 <td><s:property value="u_id"/>	
	 		 <td><s:property value="name"/>
		 	 <td><s:property value="contact_no"/></td>  
			 <td><s:property value="birth_date"/></td>  
			 <td><s:property value="email"/></td> --%>
			 <%-- <td> 
				<a id="contact_no" class="btn btn-success"  href="editpage.action?contact_no=<s:property value='contact_no'/"><span class="glyphicon glyphicon-pencil" style="color:green;"></span></a>
			 </td> 
			 
			  <td>
				
               <a id="contact_no" class="btn btn-danger"  href="deletepage.action?contact_no=<s:property value='contact_no'/"><span class="glyphicon glyphicon-remove" style="color:red;"></span></a>
			  
			  
			  </td>  
 --%>


<%--  <td><a  onclick="updatestatus(${lea.u_id})"><span class="glyphicon glyphicon-pencil" style="color:green;"></span></a></td> --%>

<td><a href="#" class="editbtn"  data-toggle="modal" data-target=".bs-example-modal-sm"><span class="glyphicon glyphicon-pencil" style="color:green;"></span></a></td>
 <td><a  onclick="removebyprojectstatus(${lea.u_id})" class="deletedata" ><span class="glyphicon glyphicon-remove" style="color:red;"></span></a></td> 


 <%-- <td><a id="contact_no"  href="edit?contact_no=<s:property value='contact_no'/>"><span class="glyphicon glyphicon-pencil" style="color:green;"></span></a></td>
<td><a  id="contact_no"  href="delmp?contact_no=<s:property value='contact_no'/>"><span class="glyphicon glyphicon-remove" style="color:red;"></span></a></td> --%> 
	</tr> 
	</s:iterator>
	</tbody>
	
 
 

</table>

<!--  <form action="updateContact"> 
<div id="edit">
<input type="hidden" id="u_id"><br><br> 
Name:<input type="text" id="name"><br><br>
Contact No:<input type="text" id="contact_no"><br><br>
BirthDate:<input type="text" id="birth_date"><br><br>
Email:<input type="text" id="email"><br><br>
 <input type="submit" value="Update" class="update" onclick="updatestatus"><br><br>  
 <a class="update  btn btn-primary" onclick="updatestatus()">Update</a> 
 <div id="div3" style="color: green;"><h3>Update Successfully Done</h3></div>
</div>
</form> -->

 
 
 
 												<!-- Start TEst -->
 												
 		<div id="edit">										
<!-- Small modal -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button> -->

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  
      
						<!-- Container Start -->
<div class="container" style="margin-top: 150px;">
<div class="row">


<div class="col-md-5" >
<div class="panel panel-default">
<div class="panel-heading" >

<h4 class="panel-title" style="color :maroon ;font-family: cursive; font-weight: bold; font-size: 30px; ">Update Contact Detail</h4>
</div>
<div class="panel-body">

					
							<!-- Message End -->		
						
						<!-- Form Start -->
						
<form action="updateContact">


<input type="hidden" id="u_id"><br><br> 
<div class="form-group">
<label for="name">Name:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-user" style="color:maroon;"></span>
</div>
<input type="text"   id="name"  style="font-family:cursive; ">

</div>
</div>

<div class="form-group">
<label for="contact_no">MobileNo:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-earphone" style="color:maroon;"></span>
</div>
<input type="text"   id="contact_no"   style="font-family:cursive; ">

</div>
</div>


<div class="form-group">
<label for="birth_date">DOB:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-calendar" style="color:maroon;"></span>
</div>
<input type="text"   id="birth_date" style="font-family:cursive; ">
</div>
</div>

<div class="form-group">
<label for="email">Email:</label>
<div class="input-group">
<div class="input-group-addon"><span class="glyphicon glyphicon-envelope" style="color:maroon;"></span>
</div>
<input type="email"  id="email" onblur="emailValidate()" style="font-family:cursive; ">

</div>
</div>



 <a class="update  btn btn-primary" onclick="updatestatus()">Update</a> 





<!-- <button type="submit" class=" update btn btn-primary btn-lg btn-block" onclick="updatestatus()" style="font-family:cursive; ">Update</button><br> -->
</div>
</form>




</div>
</div>
</div>
</div>
</div>
					<!-- Container End -->

    </div>


												<!-- End TEst -->








<script>
    $(document).ready(function() {
        $('#example').DataTable( {
            "pagingType": "full_numbers"
        } );
    } );
    </script>
   
    <script type="text/javascript">
    $(document).ready(function(){
    	$('.deletedata').on('click',function(){
    		 $(this).parents('tr').first().remove();
    		
    	});
    });
    function removebyprojectstatus(u_id){
    	
    	alert("Remove Method Is Execute");
    	alert(u_id);    	
    	
    	var parent=$(this).parent();
    $.ajax({
    	
    			type: "POST",
    			url: "DeleteContact.action",
    			 data: "u_id="+u_id,
    			 	
    			 		
    			 		
    			
    			cache:false,
    			success: function(response){
    				
    				
    				alert('Success:'+e);
    				
    				    				
    			},
    			error: function(e){
    				alert('Error:'+e);
    			}    	
    });
    
    	
    }
    
    
    </script>
   
   
  
   <script type="text/javascript">
 
    function updatestatus(){
    	alert("Update Method Is Execute");
    	
    	
    	
    	var u_id=$('#u_id').val();
    	var name=$('#name').val();
		var contact_no=$('#contact_no').val();
		var birth_date=$('#birth_date').val();
		var email=$('#email').val();
		alert(u_id+name+contact_no+birth_date+email);
		
    	var parent=$(this).parent();
    $.ajax({
    	
    			type: "POST",
    			url: "UpdateContact.action",
    			/*  data: "u_id="+u_id,  */
    			data:{
					'u_id':u_id,
					'name':name,
					'contact_no':contact_no,
					'birth_date':birth_date,
					'email':email
				
				},
    			
    			cache:false,
    			
    			success: function(response){
    				$("#div3").show();
    				$("#div3").fadeOut(3000);
    				/* var u_id=$('#u_id').val();
    		    	var name=$('#name').val();
    				var contact_no=$('#contact_no').val();
    				var birth_date=$('#birth_date').val();
    				var email=$('#email').val();
    				
    				 $("#div3").show();
    				$("#div3").fadeOut(3000);
    				$('#edit').hide(); */
    				location.reload();
    				alert('Success:'+e);
    				
    				
    				
    				
    			},
    			error: function(e){
    				alert('Error'+u_id+name+contact_no+email+birth_date);
    			}
    	
    });
    
    	}
    
    
    
    </script>  


</body>
</html>