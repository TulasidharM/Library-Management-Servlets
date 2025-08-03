<%@ page language="java" import="com.lms.model.Member" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Update Member Details</h1>
	<% Member member=(Member)request.getAttribute("member");
	String selectedGender= String.valueOf(member.getGender());%>
	<form action="ViewMembersServlet" method="post">
	<pre>
	<input type="hidden" name="MemberId" value="<%= member.getMember_Id()%>"/>
	<label for="name">Name: </label>  <input type="text" id="name" name="MemberName" value="<%= member.getMember_Name()%>" placeholder="Enter Member Name"/>
	
	<label for="email">Email: </label><input type="email" id="email" name="email" value="<%= member.getEmail()%>" placeholder="Enter Email Address(abc@gmail.com)"/>
	
	<label for="number">Mobile Number: </label><input type="text" id="number" pattern="\d{10}" name="Mobile Number" value="<%= member.getMobile_No()%>" placeholder="Enter Ph-No (1234345467)"/>
	
	<label for="gender">Gender: </label><select id="gender" name="gender">
	<option value="" disabled selected>Select Gender</option>
    <option value="M" <c:if test="${M == selectedGender}">selected</c:if>>M</option>
    <option value="F" <c:if test="${F == selectedGender}">selected</c:if>>F</option>
	</select>
	
	<label for="address">Address: </label><textarea rows="3"  id="address" name="address"><%= member.getAddress() %></textarea>
	
	<input type="submit" name="action" value="UpdateMember"/>    <input type="submit" name="action" value="Cancel"> 
	</pre>
	</form>
</body>
</html>