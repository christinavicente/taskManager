<html>

<head>
<title>User Login</title>
</head>

<body>
	<form action = "<%=request.getContextPath()%>/new-user" method= "post" >
	<h1> New User</h1>
	<table>
	    <tr>
	        <td>New User Name: </td>
	        <td><input type = "text" name= "username" /></td>
	    </tr>
	    <tr>
	        <td>New Password: </td>
	        <td><input type = "text" name = "password"/></td>
	    </tr>
	    <tr>
	        <td>New Email:</td>
	        <td><input type = "text" name = "email"</td>
	    <input type = "submit" value = "submit" />
	</table>

</body>

</html>
