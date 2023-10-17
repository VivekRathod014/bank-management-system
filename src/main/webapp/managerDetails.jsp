<%@page import="com.jsp.dto.BankManager"%>
<%@page import="com.jsp.service.BankManagerService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Details</title>
<style>
    /* Apply styles to the entire body */
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    /* Style the container */
    .container {
        width: 80%;
        margin: 0 auto;
        padding: 20px;
        background-color: #ffffff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
        text-align: center;
    }

    /* Style the table */
    table {
        width: 100%;
        border-collapse: collapse;
    }

    table, th, td {
        border: 1px solid #ccc;
    }

    th, td {
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #333;
        color: #fff;
    }

    /* Style alternating rows for better readability */
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    /* Style the table header and data cells */
    th, td {
        padding: 10px;
    }

    /* Add some hover effect to the table rows */
    tr:hover {
        background-color: #ddd;
    }
</style>
</head>
<body>
    <% 
    BankManagerService bankManagerService = new BankManagerService();
    List<BankManager> bankManagers = bankManagerService.getAllBankManager();
    %>
    <div class="container">
        <h1>Manager Details</h1>
        <table border="1" cellspacing="0" cellpadding="1">
            <tr>
                <th>Manager ID:</th>
                <th>Manager Username:</th>
                <th>Email:</th>
                <th>Status:</th>
                <th>Password:</th>
            </tr>
            <%
            for (BankManager b : bankManagers) {
            %>
            <tr>
                <td><%=b.getM_id()%></td>
                <td><%=b.getM_username()%></td>
                <td><%=b.getM_password()%></td>
                <td><%=b.getM_status()%></td>
                <td><%=b.getM_email()%></td>
                <%
                }
                %>
            </tr>
        </table>
    </div>
</body>
</html>