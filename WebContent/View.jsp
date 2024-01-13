<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery-3.1.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
 <script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script> 
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
  
<title>View</title>
<style type="text/css">
.form-group{
	
	color: maroon;
	font-family: cursive;


}

</style>


<script type="text/javascript">
$(document).ready(function(){
	$('#addBatchTable').hide();
	
	
});

</script>

<script type="text/javascript">
$('#addBatchSubmit').on('click',function(){
	var b_id=$('#b_id').val();
	var b_name=$('#b_name').val();
	var b_startdate=$('#b_startdate').val();
	var b_enddate=$('#b_enddate').val();
	var b_status=$('#b_status').val();
	var pm_id=$('#pm_id').val();
	
	alert(b_id+b_name+b_startdate+b_enddate+b_status+pm_id);
	/* 
	$( '#1' ).append(b_id);
	$( '#2' ).append(b_name);
	$( '#3' ).append(b_startdate);
	$( '#4' ).append(b_enddate);
	$( '#5' ).append(b_status);
	$( '#6' ).append(pm_id); */
	
	
});

</script>



</head>
<body>
<a href="#"   data-toggle="modal" data-target=".add-Batch">AddBatch</a>
<a href="#"   data-toggle="modal" data-target=".add-Group">AddGroup</a>

					<!-- Start Modal For Add Batch -->



<div class="modal fade add-Batch" tabindex="-1" role="dialog" >
  
									<!-- Container Start -->
									
<div class="container" style="margin-top: 100px;margin-left: 250px;">
	<div class="row">
	    <div class="col-md-5" >
		   <div class="panel panel-default">
		   
	<div class="panel-heading" > 
		<h4 class="panel-title" style="color :green; ;font-family: cursive; font-weight: bold; font-size: 30px; ">Add New Batch</h4>
	</div>
					
<div class="panel-body">

							
						
									<!-- Add Batch Form Start -->
						
<form name="addBatch" action="addBatch" method="post" >


<div class="form-group">
	<label for="b_id">Batch Id:</label>
		<div class="input-group">
			<input type="text" name="b_id" class="form-control"  id="b_id" style="font-family:cursive; ">
		</div>
</div>

<div class="form-group">
	<label for="b_name">Batch Name:</label>
		<div class="input-group">
			<input type="text" name="b_name" class="form-control"  id="b_name" placeholder="Enter Batch Name" style="font-family:cursive; ">

		</div>
</div>


<div class="form-group">
	<label for="b_startdate">Start Date:</label>
		<div class="input-group">
			<input type="date" name="b_startdate" class="form-control"  id="b_startdate" style="font-family:cursive; ">
		</div>
</div>

<div class="form-group">
	<label for="b_enddate">End Date:</label>
		<div class="input-group">
			<input type="date" name="b_enddate" class="form-control"  id="b_enddate" style="font-family:cursive; ">

		</div>
</div>


<div class = "form-group ">
      <label for = "b_status"  >Batch Status:</label>
       <select name='b_status' id='b_status' class="form-control" style="font-family:cursive;"   >
      <option selected disabled>Select-Status</option>
        	<option>Enable</option>	
        	<option>Disable</option>        	
        </select>
        
</div>
  
  
<div class="form-group">
	<label for="pm_id">Project Manager Id:</label>
		<div class="input-group">
			<input type="text" name="pm_id" class="form-control"  id="pm_id" style="font-family:cursive; ">
		</div>
</div>  




<button type="submit" id="addBatchSubmit" class="btn btn-primary btn-lg btn-block" style="font-family:cursive; ">Add Batch</button><br>
</form>
						<!-- Form End -->




</div>	<!-- End Div For PanelBody Class -->
	</div>	<!-- End Div For Panel Class -->
		</div>	<!-- End Div For col-md-5 Class -->
			</div>	<!-- End Div For Row Class -->
				</div>	<!-- End Div For Container Class -->
					<!-- Container End -->
					
</div> <!-- End Div For Modal -->


							<!-- End Modal For Add Batch -->
							
							
							
							
							
							
							
							
							<!-- Start Modal For Add Group -->



<div class="modal fade add-Group" tabindex="-1" role="dialog" >
  
									<!-- Container Start -->
									
<div class="container" style="margin-top: 100px;margin-left: 250px;">
	<div class="row">
	    <div class="col-md-5" >
		   <div class="panel panel-default">
		   
	<div class="panel-heading" > 
		<h4 class="panel-title" style="color :green; ;font-family: cursive; font-weight: bold; font-size: 30px; ">Add New Group</h4>
	</div>
					
<div class="panel-body">

							
						
									<!-- Add Batch Form Start -->
						
<form name="addGroup" action="addGroup" method="post" >


<div class="form-group">
	<label for="g_id">Group Id:</label>
		<div class="input-group">
			<input type="text" name="g_id" class="form-control"  id="g_id" style="font-family:cursive; ">
		</div>
</div>

<div class="form-group">
	<label for="g_name">Group Name:</label>
		<div class="input-group">
			<input type="text" name="g_name" class="form-control"  id="g_name" placeholder="Enter Group Name" style="font-family:cursive; ">

		</div>
</div>


<div class="form-group">
	<label for="g_startdate">Start Date:</label>
		<div class="input-group">
			<input type="date" name="g_startdate" class="form-control"  id="g_startdate" style="font-family:cursive; ">
		</div>
</div>




<div class = "form-group ">
      <label for = "g_status" >Group Status:</label>
       <select name='g_status' id='g_status' class="form-control" style="font-family:cursive;"   >
      <option selected disabled>Select-Status</option>
        	<option>Active</option>	
        	<option>De-Active</option>        	
        </select>
        
</div>


<div class="form-group">
	<label for="b_id">Batch Id:</label>
		<div class="input-group">
			<input type="text" name="b_id" class="form-control"  id="b_id" style="font-family:cursive; ">
		</div>
</div>
  
  
<div class="form-group">
	<label for="pm_id">Project Manager Id:</label>
		<div class="input-group">
			<input type="text" name="pm_id" class="form-control"  id="pm_id" style="font-family:cursive; ">
		</div>
</div>



<div class="form-group">
	<label for="p_id">Project Id:</label>
		<div class="input-group">
			<input type="text" name="p_id" class="form-control"  id="p_id" style="font-family:cursive; ">
		</div>
</div>  
 




<button type="submit" class="btn btn-primary btn-lg btn-block" style="font-family:cursive; ">Add Group</button><br>
</form>
						<!-- Form End -->




</div>	<!-- End Div For PanelBody Class -->
	</div>	<!-- End Div For Panel Class -->
		</div>	<!-- End Div For col-md-5 Class -->
			</div>	<!-- End Div For Row Class -->
				</div>	<!-- End Div For Container Class -->
					<!-- Container End -->
					
</div> <!-- End Div For Modal -->


							<!-- End Modal For Add Batch -->
							
							
							
							
							
							
							
							
							
							<!-- Table For View Batch Detail -->
	
    
    
 <table id="addBatchTable">
    <thead>
        <tr>
        <th>Batch Id</th>
        <th>Batch Name</th>
        <th>Start Date</th>
        <th>End Date</th>
        <th>Batch Status</th>
        <th>Project Manager ID</th>       
        </tr>   
   </thead>
   
   <tfoot>
    <tr>
        <th>Batch Id</th>
        <th>Batch Name</th>
        <th>Start Date</th>
        <th>End Date</th>
        <th>Batch Status</th>
        <th>Project Manager ID</th>       
        </tr>   
   </tfoot>
        <tbody>
        <tr>
        <td id="1"> </td>
        <td id="2"> </td>
        <td id="3"> </td>
        <td id="4"> </td>
        <td id="5"> </td>
        <td id="6"> </td>
        <td><a href="#" id="edit">Edit</a></td>
        <td><a href="#" id="deletedata">Delete</a></td>
        </tr>
        
        
        </tbody>
        
        </table>
        
        </div>
  
</body>
</html>