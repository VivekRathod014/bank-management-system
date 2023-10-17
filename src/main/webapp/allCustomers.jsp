<%@page import="com.jsp.dto.Customer"%>
<%@page import="com.jsp.service.CustomerService"%>
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
<h1>Customers List Working in the company</h1>

<% CustomerService customerService = new CustomerService();
   List<Customer> customers = customerService.getAll();
%>

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
<th>Status</th>
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
		<td><%= c.getC_status() %></td>
		<td><%= c.getAccount_balance() %></td>
		<td><a href = "delete.jsp?id=<%= c.getC_id() %>">Delete</a></td>
		<td><a href = "updateCustomerApprovalStatus.jsp?id=<%= c.getC_id() %>">Update_Status</a></td>
		
	</tr>
<% } %>


</table>
</body>
</html>