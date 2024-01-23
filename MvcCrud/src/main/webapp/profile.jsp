<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String email=(String)session.getAttribute("EMAIL");%>
    <%@page import="org.study.misc.ConnectionProvider" %>
    <%
    Connection con= ConnectionProvider.createC();
    PreparedStatement pstm=con.prepareStatement("select * from user where email=?");
    pstm.setString(1,email);
    ResultSet rs=pstm.executeQuery();
    String name=null;
    String email2=null;
    String phno=null;
    String add=null;
    while(rs.next())
    {
      name = rs.getString(1);
      email2 = rs.getString(2);
      phno = rs.getString(3);
      add = rs.getString(4);
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
</head>
<body>
  
    <ul>
    <h3>
     <li>Name is:<%=name %></li>
     <li>Email is:<%=email2 %></li>
     <li>Phoneno is:<%=phno %></li>
     <li>Address is:<%=add %></li>
     </h3>
    </ul>
    <a href="update_form.jsp">Update</a>
    <a href="delete_user.jsp">Delete</a>
    
    
</body>
</html>