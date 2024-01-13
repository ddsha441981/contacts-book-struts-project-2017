<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="s" uri="/struts-tags" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js"></script>
	<script>
		$(document).ready(function() {
		  $('.nav-toggle').click(function(){
			//get collapse content selector
			var collapse_content_selector = $(this).attr('href');

			//make the collapse content to be shown or hide
			var toggle_switch = $(this);
			$(collapse_content_selector).toggle(function(){
			  if($(this).css('display')=='none'){
                                //change the button label to be 'Show'
				toggle_switch.html('Add Detail');
			  }/* else{
                                //change the button label to be 'Hide'
				toggle_switch.html('Hide');
			  } */
			});
		  });

		});
		</script>
		
		
		<%-- <script>
		$(document).ready(function() {
		  $('.nav-toggle').click(function(){
			//get collapse content selector
			var collapse_content_selector = $(this).attr('submit');

			//make the collapse content to be shown or hide
			var toggle_switch = $(this);
			$(collapse_content_selector).toggle(function(){
			  if($(this).css('display')=='none'){
                                //change the button label to be 'Show'
				toggle_switch.html('Save');
			  } else{
                                //change the button label to be 'Hide'
				toggle_switch.html('Update');
			  } 
			});
		  });

		});
		</script> --%>
		
		
		
		<style>
		.round-border {
			border: 1px solid #eee;
			border: 1px solid rgba(0, 0, 0, 0.05);
			-webkit-border-radius: 4px;
			-moz-border-radius: 4px;
			border-radius: 4px;
			padding: 10px;
			margin-bottom: 5px;
		}
		</style>
</head>
<body>
<section class="round-border">
			<h2>WelCome</h2>
			<div>
				<button href="#collapse1" class="nav-toggle">Add Contact</button>
			</div>
			<div id="collapse1" style="display:none">
<form name="test" action="test" method="post">
			<table class="table table-striped">
			<tbody>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" id= "name"></td>
		</tr>
		
		<tr>
			<td>Contact</td>
			<td><input type="text" name="contact" id= "contact"></td>
		</tr>
			
			
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" id= "email"></td>
		</tr>
		
		
		<tr>
			
			<td><input type="submit" name="Save" id="submit"></td>
		</tr>
				
				
				</tbody>
				</table>
			</div>
		</section>
		</form>
		
		<table id="example" class="display" cellspacing="0" width="100%" style="color: navy;" > 

<thead>

	
<tr>
		
		<th>Name</th>		
		<th>Contact</th>
		<th>Email</th>
		<th>Edit</th>
		<th>Delete</th> 
	</tr>

</thead>


 <tbody style="color: purple;">
 <s:iterator  value="list" var="lea"> 
 
  	<tr>
  	
  			
	 		 <td>${lea.name}</td>
		 	 <td>${lea.contact}</td>
		 	 <td>${lea.email}</td> 	 			 
			 

<td><a  onclick="updatestatus(${lea.contact})">Edit</a></td>
<td><a  onclick="remove(${lea.contact})">Delete</a></td>


	</tr> 
	</s:iterator>
	</tbody>
	
 
 

</table> 		
		   

             
     
    
     
   


     
     

<script type="text/javascript">
    function remove(contact){
    	alert("Remove Method Is Execute");
    	alert(contact);
    	
    	
    	var parent=$(this).parent();
    $.ajax({
    	
    			type: "POST",
    			url: "Delete.action",
    			 data: "contact="+contact, 
    			
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

		
	</body>
</html>