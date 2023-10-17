<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="updateCustomerStatus">
ManagerId: <input type = "number" name = "manager_id"><br><br>
CustomerId: <input type = "number" name = "customer_id" value = "<%= request.getParameter("id") %>" readonly><br><br>
Status:<br><br>
Approved: <input type="radio" id="yes" name="status" value="approved" required>
UnApproved: <input type="radio" id="no" name="status" value="unapproved" required>
<br><br>
<input type = "submit" value = "change">
</form>

</body>
</html>