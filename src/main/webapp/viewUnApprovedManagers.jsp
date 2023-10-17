<%@page import="com.jsp.service.AdminService"%>
<%@page import="com.jsp.dto.BankManager"%>
<%@page import="com.jsp.service.BankManagerService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>List Of UnApproved Managers</h1>

<% AdminService adminService = new AdminService();
   List<BankManager> managers = adminService.viewAllUnApprovedBankManager();
%>

<% if(managers != null) { %>

<table border = "2px" cellspacing = "0" cellpadding = "1">
<tr>
<th>ID</th>
<th>User Name</th>
<th>Email</th>
<th>Password</th>
<th>Remove Data</th>
</tr>

<% for(BankManager b : managers) { %>
	<tr>
		<td><%= b.getM_id()  %></td>
		<td><%= b.getM_username() %></td>
		<td><%= b.getM_email() %></td>
		<td><%= b.getM_password() %></td>
		<td><a href = "deleteManager.jsp?id=<%= b.getM_id() %>">Delete</a></td>
		
	</tr>
<% } %>
</table>
<% } else { %>
	<p>No Data</p>
<% } %>
</body>
</html>