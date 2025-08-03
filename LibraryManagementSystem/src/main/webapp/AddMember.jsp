<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Member</title>
</head>
<body>
	<h1>Add Member</h1>
	<form action="AddMemberServlet" method="post">
	<pre>
	<label for="name">Name: </label>  <input type="text" id="name" name="MemberName" placeholder="Enter Member Name"/>
	
	<label for="email">Email: </label><input type="email" id="email" name="email" placeholder="Enter Email Address(abc@gmail.com)"/>
	
	<label for="number">Mobile Number: </label><input type="text" id="number" pattern="\d{10}" name="Mobile Number" placeholder="Enter Ph-No (1234345467)"/>
	
	<label for="gender">Gender: </label><select id="gender" name="gender">
	<option value="" disabled selected>Select Gender</option>
    <option value="M">M</option>
    <option value="F">F</option>
	</select>
	
	<label for="address">Address: </label><textarea rows="3"  id="address" name="address"></textarea>
	
	<input type="submit" name="action" value="Submit"/>    <input type="submit" name="action" value="Cancel"> 
	</pre>
	</form>
</body>
</html>