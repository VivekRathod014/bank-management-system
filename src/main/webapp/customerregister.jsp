<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration page</title>
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-color: Lightblue;
    }

    form {
        border: 1px solid #ccc;
        padding: 20px;
        width: 400px; 
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        display: flex;
        flex-direction: column; 
        align-items: center;
    }
    .button {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #04AA6D;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

    table {
        border-collapse: collapse;
        width: 100%;
        height: 600px;
    }

    td {
        padding: 10px;
    }
    input[type="submit"]:hover {
            background-color: #0056b3;
            }
</style>
</head>
<body>
<form action="CustomerRegister" method="post">
        <table border="1px"  cellPadding="10px">
            <tr>
                <td colspan="2" align="center"> 
                   <h1>Customer Registration Form </h1>
                </td>
            </tr>
            <tr>
                <td>Customer name</td>
                <td><input type="text" name="c_name" required></td>

            </tr>
            <tr>
                <td>Birth Date</td>
                <td><input type="date" name="c_bdate" required></td>
                
            </tr>
            <tr>
                <td>
                    Gender
                </td>
                <td>
        Male <input type="radio" id="male" name="c_gender" value="Male" required>
        Female <input type="radio" id="female" name="c_gender" value="Female" required>
                </td>
                
            </tr>
			<tr>
                <td>Mobile no</td>
                <td><input type="number" name="c_number" required></td>
            </tr>
           <tr>
                <td>Address</td>
                <td><input type="text" name="c_address" required></td>
                
            </tr>
            <tr>
                <td>Username</td>
                <td><input type="text" name="c_username" required></td>

            </tr>
             <tr>
                <td>Email Id</td>
                <td><input type="email" name="c_email" required></td>

            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="c_password" required></td>

            </tr>
           <tr>
    			<td colspan="2" align="center">
        		<input class="button" type="submit" value="Register" style="width: 150px; height: 40px; font-size: 15px; background-color:blue; color:white">
    			</td>
			</tr>
            
        </table>
    </form>


</body>
</html>