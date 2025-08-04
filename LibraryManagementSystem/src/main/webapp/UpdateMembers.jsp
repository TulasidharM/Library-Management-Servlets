<%@ page language="java" import="com.lms.model.Member" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Member</title>
<style>
    .update-member-container {
        max-width: 600px;
        margin: 30px auto;
        padding: 30px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 20px rgba(0,0,0,0.1);
    }
    .update-member-title {
        color: #34495e;
        text-align: center;
        margin-bottom: 30px;
        font-size: 2em;
        font-weight: 600;
    }
    .update-member-form-group {
        margin-bottom: 20px;
    }
    .update-member-label {
        display: block;
        margin-bottom: 8px;
        color: #34495e;
        font-weight: 500;
        font-size: 0.95em;
    }
    .update-member-input, .update-member-select, .update-member-textarea {
        width: 100%;
        padding: 12px;
        border: 2px solid #7f8c8d;
        border-radius: 6px;
        font-size: 1em;
        color: #34495e;
        box-sizing: border-box;
    }
    .update-member-input:focus, .update-member-select:focus, .update-member-textarea:focus {
        border-color: #34495e;
        outline: none;
        box-shadow: 0 0 5px rgba(52, 73, 94, 0.2);
    }
    .update-member-submit, .update-member-cancel {
        width: 48%;
        padding: 14px;
        background-color: #34495e;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 1em;
        font-weight: 500;
        cursor: pointer;
        margin-top: 20px;
        margin-right: 2%;
    }
    .update-member-cancel {
        background-color: #7f8c8d;
        margin-right: 0;
    }
    .update-member-submit:hover {
        background-color: #7f8c8d;
    }
    .update-member-cancel:hover {
        background-color: #34495e;
    }
    @media (max-width: 600px) {
        .update-member-container { padding: 15px; }
        .update-member-submit, .update-member-cancel { width: 100%; margin-right: 0; margin-bottom: 10px; }
    }
</style>
</head>
<body>
	<h1>Update Member Details</h1>
	<% Member member=(Member)request.getAttribute("member");
	String selectedGender= String.valueOf(member.getGender());%>
	<form action="ViewMembersServlet" method="post" id="member-form">
	<pre>
	<input type="hidden" name="MemberId" value="<%= member.getMember_Id()%>"/>
	<label for="name">Name: </label>  <input type="text" id="name" name="MemberName" value="<%= member.getMember_Name()%>" placeholder="Enter Member Name" required/>
	
	<label for="email">Email: </label><input type="email" id="email" name="email" value="<%= member.getEmail()%>" placeholder="Enter Email Address(abc@gmail.com)"  required/>
	
	<label for="number">Mobile Number: </label><input type="text" id="number" pattern="\d{10}" name="Mobile Number" value="<%= member.getMobile_No()%>" placeholder="Enter Ph-No (1234345467)" required/>
	
	<label for="gender">Gender: </label><select id="gender" name="gender" required>
	<option value="" disabled selected>Select Gender</option>
    <option value="M" <c:if test="${M == selectedGender}">selected</c:if>>M</option>
    <option value="F" <c:if test="${F == selectedGender}">selected</c:if>>F</option>
	</select>
	
	<label for="address">Address: </label><textarea rows="3"  id="address" name="address"  required><%= member.getAddress() %></textarea>
	
	<input type="submit" name="action" value="UpdateMember"/>    <input type="submit"  onclick="cancelForm(event)" name="action" value="Cancel"> 
	</pre>
	</form>
	<script>
		function cancelForm(event) {
		  const form = document.getElementById('member-form');
		  form.querySelectorAll('[required]').forEach(el => el.removeAttribute('required'));
		  window.location.href = "ViewMembersServlet";
		}
	</script>
</body>
</html>

