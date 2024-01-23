<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String str=request.getParameter("msg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<h1>Login Form</h1>
<%if("invalid".equals(str)) {%>
 <h3>Email or Password error</h3>
 <%} %>
<form action="Login" method="post"> 
Enter Email: <input type = "email" name = "uemail"><br>
Enter Password: <input type = "password" name = "upass"><br>
<br>
<input type="submit" value="Login">
<input type="reset" value="Clear">
</form>
</body>
</html>