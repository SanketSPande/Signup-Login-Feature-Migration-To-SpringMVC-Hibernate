<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Update Page</title>
    <style>
        .textbox {
            width: 300px;

        }
    </style>
</head>
<body>
 <h3>You can update the data by overwriting the data in the corresponding textbox</h3><br>

    *<em style="color:blue;">If not to update then leave it blank</em><br><br>

    <form action="update_profile?username=${user.getUserName()}" method="post">
        <label for="password">Password</label><br><br> <input type="password" name="password" class="textbox" placeholder="${user.getPassword()}"><br><br>
        <label for="name">Name</label><br><br> <input type="text" name="name" class="textbox" placeholder="${user.getName()}"><br><br>
        <label for="contact">Contact</label><br><br> <input type="text" name="contact" class="textbox" placeholder="${user.getContact()}"><br><br>

        <input type="submit" value="Save" style="background-color: rgb(123, 123, 243);">
    </form>

</body>
</html>