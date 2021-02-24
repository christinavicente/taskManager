<html>

<head>
<title>User Login</title>
</head>

<body>

	<form action = "<%=request.getContextPath()%>/update-tasks" method= "post" >
        <h1>Update Task</h1>


    	<table>
    	    <tr>
    	        <td>Task ID: </td>
    	        <td><input type = "number" name= "taskID" /></td>
    	    </tr>
    	    
    	    <tr>
    	        <td>Task Name: </td>
    	        <td><input type = "text" name= "name" /></td>
    	    </tr>
    	    <tr>
    	        <td>Task Start Date: </td>
    	        <td><input type = "date" name= "startdate" /></td>
    	   </tr>
    	    <tr>
    	        <td>Task End Date: </td>
    	        <td><input type = "date" name= "enddate" /></td>
    	    </tr>
    	    <tr>
    	        <td>Description: </td>
    	        <td><input type = "text" name = "description"/></td>
    	   </tr>
    	    <tr>
    	        <td>email: </td>
    	        <td><input type = "text" name = "email"/></td>
    	   </tr>
    	    <tr>
    	        <td>severity: </td>
    	        <td><input type = "text" name = "severity"/></td>
    	  </tr>
    	    <tr>
    	        <td>User assigned to task</td>
    	        <td><input type = "text" name = "userName"</td>
    	    
    	</table>
    	<input type = "submit" value = "update task" />


</body>

</html>
