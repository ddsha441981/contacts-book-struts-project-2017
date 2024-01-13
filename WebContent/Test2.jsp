<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css" >
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
 <script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script> 
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
  
 
<title>Insert title here</title>
 <script type="text/javascript">
    $(document).ready(function() {
        $('.deleteRowButton').click(DeleteRow);
      });

    function DeleteRow()
    {
      $(this).parents('tr').first().remove();
    }
  </script>
</head>
<body>
  <table>
    <tr><td>foo</td>
     <td><a class="deleteRowButton">delete row</a></td></tr>
    <tr><td>bar bar</td>
     <td><a class="deleteRowButton">delete row</a></td></tr>
    <tr><td>bazmati</td>
     <td><a class="deleteRowButton">delete row</a></td></tr>
  </table>
</body>
</html>