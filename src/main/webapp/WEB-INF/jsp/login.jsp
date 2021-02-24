<html>

<head>
<title>User Login</title>
</head>

<body>
    <h1>User Login</h1>
	<form action = "<%=request.getContextPath()%>/login" method= "post" >
	<table>
	    <tr>
	        <td>User Name: </td>
	        <td><input type = "text" name= "username" /></td>
	    </tr>
	    

	        <td>Password: </td>
	        <td><input type = "text" name = "password"/></td>
	</table>    
	<input type = "submit" value = "Login" />
	New User: <form action = "new-user.jsp">
	<input type="submit" value="New User/>
	
</body>

</html>
