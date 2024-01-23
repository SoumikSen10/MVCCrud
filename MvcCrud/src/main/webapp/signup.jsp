<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String str=request.getParameter("msg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
</head>
<body>
<h1>Registration Form</h1>

<%if("valid".equals(str))
  {%>
  <h4>Successfully Registered!</h4>
<%} %>
<%if("invalid".equals(str))
  {%>
  <h4>Their is some issues!</h4>
<%} %>

<form action="Reg" method="post"> 
Enter Name: <input type = "text" name = "uname"><br>
Enter Email: <input type = "email" name = "uemail"><br>
Enter Phno: <input type = "text" name = "uphno"><br>
Enter Address: <input type = "text" name = "uadd"><br>
Enter Password: <input type = "password" name = "upass"><br>
<br>
<input type="submit" value="Register">
<input type="reset" value="Clear">
</form>
</body>
</html>