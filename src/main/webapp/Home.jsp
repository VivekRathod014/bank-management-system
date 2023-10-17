<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
<style>
#navbar {
   
    width: 100%;
    height: 70px;
    background-color: #2d2d2d;
    display: flex;
    
    
}

#logo {
    width: 10%; /* Adjust the width as needed */
    height: 90px;
    display: flex;
    align-items: center;
}

#logo img {
    max-width: 100%;
}

#name {
    width: 30%;
    height: 70px;
    background-color: #2d2d2d;
    color: #fff;
    font-size: 24px;
    font-family: 'Franklin Gothic Medium', sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
}

#content {
    width: 50%;
    height: 70px;
    background-color: #2d2d2d;
    display: flex;
    justify-content: space-around;
    align-items: center;
}

#content a {
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    font-size: 18px;
    margin: 0 15px;
    transition: color 0.3s ease-in-out;
}

#content a:hover {
    color: #ffcc00;
}

#login-options {
    display: flex;
    align-items: center;
}

#login-button {
    background-color: #ffcc00;
    color: #2d2d2d;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    margin-right: 10px;
    transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
}

#login-button:hover {
    background-color: #2d2d2d;
    color: #ffcc00;
}

#login-option {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease-in-out;
}

#login-option:hover {
    background-color: #0056b3;
}

#slideshow-container {
            position: relative;
            width: 100%;
            max-width: 100% /* Adjust the width as needed */
            height: 50px;
            margin: 0 auto;
            overflow: hidden;
        }

        .slide-image {
            width: 100%;
            height: auto;
            display: none;
            transition: opacity 13s; /* Add a slide transition effect */
        }

        .slide-image.active {
            display: block;
        }
        
        
        #footer {
        
    width: 100%;
    height: 125px;
    background-color: #2d2d2d;
    display: flex;
    align-items: center;
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    font-size: 18px;
}

html, body {
    margin: 0;
    padding: 0;
    height: 100%; /* Set the height to 100% to fill the entire viewport */
}

        



</style>
</head>
<body>
<form action="Home" method="post">
    <div id="navbar"> 

        <div id="logo">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8IHjxHYPJb4x0OkTF3MBF30JQN0wjbxu6P13ANV-dMpmeSsyRUHVATE2HgcAzojgDRnw&usqp=CAU" alt="logo"> 
         </div>  
        <div id="name"> BOB Bank</div>
        <div id="content">
            <a href="adminlogin.jsp"> Admin Login</a>
            <a href="ManagerLogin.jsp">Manager Login</a>
            <a href="customerlogin.jsp">Customer Login</a>
         	<a href="customerregister.jsp" style="text-decoration: none;">
  				<div style="width: 150px; height: 40px; font-size: 15px; background-color: blue; color: white; text-align: center; line-height: 40px; cursor: pointer;">
    				Customer Create Account
  				</div>
		 	</a>
         </div>
</div>
<div id="slideshow-container">
        <img class="slide-image" src="welcome to Bank (3).png" width="400" height="auto" alt="Image 1">
        <img class="slide-image" src="welcome to Bank (4).png" width="500" height="auto" alt="Image 2">
        <img class="slide-image" src="welcome to Bank (5).png" width="500" height="auto" alt="Image 3">
    </div>
    
    <script>
        var slideIndex = 0;

        function showSlides() {
            var slides = document.getElementsByClassName("slide-image");
            
            for (var i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }

            slideIndex++;
            
            if (slideIndex > slides.length) {
                slideIndex = 1;
            }
            
            slides[slideIndex - 1].style.display = "block";
            
            setTimeout(showSlides, 3000); // Change image every 3 seconds (adjust the timing as needed)
        }

        showSlides();
    </script>
</form>
<div id="footer">
<p>@Designed By Team A</p>
</div>
</body>
</html>