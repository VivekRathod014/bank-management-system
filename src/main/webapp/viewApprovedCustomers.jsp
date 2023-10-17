<%@page import="com.jsp.service.BankManagerService"%>
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

<% BankManagerService bankManagerService = new BankManagerService();
   List<Customer> customers = bankManagerService.viewAllApprovedCustomer();
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
<th>Account Balance</th>
</tr>

<% for(Customer c1 : customers) { %>
	<tr>
		<td><%= c1.getC_id()  %></td>
		<td><%= c1.getC_name() %></td>
		<td><%= c1.getC_username() %></td>
		<td><%= c1.getC_email() %></td>
		<td><%= c1.getC_address() %></td>
		<td><%= c1.getC_password() %></td>
		<td><%= c1.getC_gender() %></td>
		<td><%= c1.getC_birthdate() %></td>
		<td><%= c1.getC_mobno() %></td>
		<td><%= c1.getAccount_balance() %></td>
		<td><a href = "deleteCustomer.jsp?id=<%= c1.getC_id() %>">Delete</a></td>
		
	</tr>
<% } %>


</table>
</body>
</html>