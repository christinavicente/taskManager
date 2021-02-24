<html>

<head>
<title>User Login</title>
</head>

<body>
	<h1>Create New Task</h1>

        <form action = "<%=request.getContextPath()%>/create-tasks" method= "post" >
	    	<table>
        	    <tr>
        	        <td>Task Name: </td>
        	        <td><input type = "text" name= "name" /></td>
        	    </tr>
        	    
        	    <tr>
        	        <td>Task start: </td>
        	        <td><input type = "date" name= "startdate" /></td>
        	    </tr>
        	    
        	        <td>Task end: </td>
        	        <td><input type = "date" name= "enddate" /></td>
        	    </tr>
        	    <tr>
        	        <td>Description: </td>
        	        <td><input type = "text" name = "description"/></td>
        	    </tr>
        	    <tr>
        	        <td>email: </td>
        	        <td><input type = "text" name = "email"/></td>
        	    <br/>
        	    <br/>
        	        <td>severity: </td>
        	        <td><input type = "text" name = "severity"/></td>
        	    </tr><tr>
        	        <td>User assigned to task: </td>
        	        <td><input type = "text" name = "userName"</td>
        	   
        	</table>
		 <input type = "submit" value = "create-tasks" />




</body>

</html>
