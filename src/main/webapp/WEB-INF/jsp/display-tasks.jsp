<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tasks</title>
</head>
<body>

<H1>Display Tasks</H1>

Other options:
        <form action = "<%=request.getContextPath()%>/delete-tasks" method= "post" >
    	<table>
    	    <tr>
    	        <td>Delete task: </td>
    	    </tr>
            <tr>
    	        <td><input type = "radio" name = "action" value="delete"/></td>
            </tr>
    	    <tr>
    	        <td>Update task: </td>
    	    </tr>
    	        <td><input type = "radio" name = "action" value="update"/></td>
            </tr>
     	    <tr>
     	        <td>Create task: </td>
     	    </tr>
     	        <td><input type = "radio" name = "action" value="create"/></td>
    	</table>
        <input type = "submit" value = "display-tasks" />


Here are the list of your tasks:
<BR />
${tasks}
<BR/>

</body>
</html>
