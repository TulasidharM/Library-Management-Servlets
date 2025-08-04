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
	<form id="add-member-Form" action="AddMemberServlet" method="post">
	<pre>
	<label for="name">Name: </label>  <input type="text" id="name" name="MemberName" placeholder="Enter Member Name"  required/>
	
	<label for="email">Email: </label><input type="email" id="email" name="email" placeholder="Enter Email Address(abc@gmail.com)"  required/>
	
	<label for="number">Mobile Number: </label><input type="text" id="number" pattern="\d{10}" name="Mobile Number" placeholder="Enter Ph-No (1234345467)" required/>
	
	<label for="gender">Gender: </label><select id="gender" name="gender" required>
	<option value="" disabled selected>Select Gender</option>
    <option value="M">M</option>
    <option value="F">F</option>
	</select>
	
	<label for="address">Address: </label><textarea rows="3"  id="address" name="address" required></textarea>
	
	<input type="submit" name="action" value="Submit"/>    <input type="submit" onclick="cancelForm(event)" name="action" value="Cancel"> 
	</pre>
	</form>
	<script>
		function cancelForm(event) {
		  const form = document.getElementById('add-member-Form');
		  form.querySelectorAll('[required]').forEach(el => el.removeAttribute('required'));
		  window.location.href = "AddMemberServlet";
		}
	</script>
</body>
</html>