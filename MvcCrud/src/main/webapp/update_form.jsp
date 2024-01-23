<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.study.misc.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
input[type=reset] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=reset]:hover {
  background-color: #45a049;
}
div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
<%
String email=(String)session.getAttribute("EMAIL");
Connection con;
PreparedStatement pstm;
ResultSet rs;
String name=null;
String email2=null;
String phno=null;
String add=null;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("select *from user where email=?");
	pstm.setString(1,email);
	rs=pstm.executeQuery();
	while(rs.next())
	{
		name=rs.getString(1);
		email2=rs.getString(2);
	    phno=rs.getString(3);
	    add=rs.getString(4);
	}
}catch(Exception e){}
%>
<h2>Update Product </h2>

<%String str=request.getParameter("msg"); 
if("valid".equals(str))
{
%>
<h3>Record Sucessfully Updated!</h3>
<%} %>
<div>
  <form action="update_data.jsp"  method="post" "multipart/form-data" >
    <label for="fname">Name </label>
    <input type="text"  name="uname" value=<%=name %> >

    <label for="lname">Email</label>
    <input type="text"  name="uemail" value=<%= email2%>>

   <label for="lname">Phno</label>
    <input type="text"  name="uphno" value=<%=phno %>>
    
    <label for="lname">Address</label>
    <input type="text"  name="uadd" value=<%=add %>>
    <input type="submit" value="Submit">
    
  </form>
</div>


</body>
</html>