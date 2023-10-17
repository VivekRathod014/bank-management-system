<%@page import="com.jsp.service.BankManagerService"%>
<%@page import="com.jsp.dto.Customer"%>
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
<h1>List Of UnApproved Customers</h1>

<% BankManagerService bankManagerService = new BankManagerService();
   List<Customer> customers = bankManagerService.viewAllUnApprovedBankCustomer();
%>

<% if(customers != null) { %>

<table border = "2px" cellspacing = "0" cellpadding = "1">
<tr>
<th>ID</th>
<th>Name</th>
<th>User-Name</th>
<th>Email</th>
<th>Address</th>
<th>Password</th>
<th>Gender</th>
<th>Birth Date</th>
<th>Mobile No</th>
<th>Account Balance</th>
</tr>

<% for(Customer c : customers) { %>
	<tr>
		<td><%= c.getC_id()  %></td>
		<td><%= c.getC_name() %></td>
		<td><%= c.getC_username() %></td>
		<td><%= c.getC_email() %></td>
		<td><%= c.getC_address() %></td>
		<td><%= c.getC_password() %></td>
		<td><%= c.getC_gender() %></td>
		<td><%= c.getC_birthdate() %></td>
		<td><%= c.getC_mobno() %></td>
		<td><%= c.getAccount_balance() %></td>
		<td><a href = "deleteCustomer.jsp?id=<%= c.getC_id() %>">Delete</a></td>
		
	</tr>
<% } %>
</table>
<% } else { %>
<p>No Data</p>
<% } %>
</body>
</html>