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
        	    <br/>
        	    <tr>
        	        <td>Task start: </td>
        	        <td><input type = "date" name= "startdate" /></td>
        	    </tr>
        	    <br/>
        	        <td>Task end: </td>
        	        <td><input type = "date" name= "enddate" /></td>
        	    </tr>
        	    <br/>
        	    <tr>
        	        <td>Description: </td>
        	        <td><input type = "text" name = "description"/></td>
        	   </tr>
        	    <br/>
        	    <tr>
        	        <td>email: </td>
        	        <td><input type = "text" name = "email"/></td>
        	    </tr>
        	    <br/>
        	    <tr>
        	        <td>severity: </td>
        	        <td><input type = "text" name = "severity"/></td>
        	     </tr>
        	    <br/>
        	    <tr>
        	        <td>User assigned to task: </td>
        	        <td><input type = "text" name = "userName"</td>
        	   
        	</table>
             <input type = "submit" value = "create-tasks" />


</body>

</html>
