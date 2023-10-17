<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Login Page</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .navbar {
        background-color: #333;
        color: #fff;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 20px;
    }

    .bank-name {
        font-size: 24px;
        font-weight: bold;
    }

    .button {
        text-decoration: none;
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-top: 20px;
    }

    h1 {
        color: #333;
    }

    form {
        margin-top: 20px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        font-weight: bold;
    }

    input[type="text"],
    input[type="password"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    button {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>
    <div class="navbar">
        <span class="bank-name">BOB Bank</span> <a href="Home.jsp" class="button">BOB Home Page</a>
    </div>
    <div class="container">
        <h1>User Login Page</h1>
        <form action="CustomerSignUp" method="post">
            <label for="c_id">Customer Id</label>
            <input type="number" name="c_id" required>
            <label for="c_username">Username</label>
            <input type="text" name="c_username" required>
            <label for="c_password">Password</label>
            <input type="password" name="c_password" required>
			<br><br>
            <input type="submit" class="button" value="Login">
        </form>
    </div>
</body>
</html>
