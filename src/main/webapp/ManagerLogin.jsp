<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-color:Lightblue;
    }

    form {
        border: 1px solid #ccc;
        padding: 20px;
        width: 400px; 
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    table {
        border-collapse: collapse;
        width: 100%;
        height: 400px;
    }

    td {
        padding: 10px;
    }
</style>
</head>
<body>
    <form action="ManagerSignUp" method="post">
        <table border="1px"  cellPadding="10px">
            <tr>
                <td colspan="2" align="center"> 
                  <h1> Manager Login Page</h1>
                </td>
            </tr>
            <tr>
                <td>Manager Id</td>
                <td><input type="number" name="manager_id" required></td>

            </tr>
            <tr>
                <td>Username</td>
                <td><input type="text" name="manager_username" required></td>

            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="manager_password" required></td>

            </tr>
            <tr>
    			<td colspan="2" align="center">
        		<input type="submit" value="Login" style="width: 150px; height: 40px; font-size: 15px; background-color:blue; color:white">
    			</td>
			</tr>
    		<tr>
    			<td colspan="2" align="center">
        		<a href="managerReg.jsp" style="text-decoration: none;">
  				<div style="width: 150px; height: 40px; font-size: 15px; background-color: blue; color: white; text-align: center; line-height: 40px; cursor: pointer;">
    				Create Account
  				</div>
		 		</a>
    			</td>
			</tr>

        </table>
    </form>


</body>
</html>
