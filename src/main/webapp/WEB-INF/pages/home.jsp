<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css"> 
<%@ page import="com.entity.UserEntity" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<style>
        header {
            background-color: antiquewhite;
            height: 100px;
        }

        .button1 {
            width: 200px;
            height: 70px;
            color: rgb(239, 94, 94);
            font-size: larger;
            position: absolute;
            left: 500px;

        }

        .button2 {
            width: 200px;
            height: 70px;
            color: rgb(239, 94, 94);
            font-size: larger;
            position: absolute;
            left: 850px;

        }
         .button3 {
            width: 100px;
            height: 40px;
            background-color: white;         
            position: absolute;
            left: 1420px;

        }
         .red-color {
            width: 70px;
            height: 70px;
            color:red;
    	}
    </style>
    <script>
       
		function Logout() {
        	
            document.location.href = "http://localhost:8080/SignupLoginFeature-SpringHibernateIntegration/logout";
        }

    </script>
</head>
<body>


<header>

<button type="submit" class ="button3" onclick ="Logout()" ><span class="bi bi-power red-color">  Logout</span></button>
        <h1>Welcome to home page ${user.getUserName()}
        
</header>
    <h1 style="text-align: center;">Make a Choice</h1><br><br>

    

       <!--  <input type="button" class="button1" value="Your Profile" onclick="Datalist()"> -->
       <button type="submit" class="button1"><a href="http://localhost:8080/SignupLoginFeature-SpringHibernateIntegration/show_profile?username=${user.getUserName()}">Your Profile</a></button>
        
       <!--<input type="button" class="button2" value="Update Profile" onclick="update()">-->
       <button type="submit" class="button2"><a href="http://localhost:8080/SignupLoginFeature-SpringHibernateIntegration/get_update_form?username=${user.getUserName()}">Update Profile</a></button>
        

   


</body>
</html>