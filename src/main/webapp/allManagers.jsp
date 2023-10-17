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
<h1>BankManagers List Working in the company</h1>

<% BankManagerService bankManagerService = new BankManagerService();
   List<BankManager> bankManagers = bankManagerService.getAllBankManager();
%>

<table border = "2px" cellspacing = "0" cellpadding = "1">
<tr>
<th>ID</th>
<th>User-Name</th>
<th>Email</th>
<th>Password</th>
<th>Status</th>
</tr>

<% for(BankManager b : bankManagers) { %>
	<tr>
		<td><%= b.getM_id()  %></td>
		<td><%= b.getM_username() %></td>
		<td><%= b.getM_email() %></td>
		<td><%= b.getM_password() %></td>
		<td><%= b.getM_status() %></td>
		<td><a href = "delete.jsp?id=<%= b.getM_id() %>">Delete</a></td>
		<td><a href = "updateManagerApprovalStatus.jsp?id=<%= b.getM_id() %>">Update_Status</a></td>
		
	</tr>
<% } %>


</table>
</body>
</html>