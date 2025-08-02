<%@ page language="java" import="java.util.*,com.lms.model.Member" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book's Members</title>
</head>
<body>
	<h1>Books Members</h1>
	<%  
		List<Member> membersList = (List<Member>) request.getAttribute("membersList");
		List<String> booksList = (List<String>) request.getAttribute("booksList");
	%>
	
	<form action="BooksMembersServlet" method="post">
		<label for="books">Select Book: </label><select id="books" name="books">
			<option value="" disabled selected>Select a Book</option>
		    <c:forEach var="book" items="${booksList}">
		        <option value="${book}" <c:if test="${book == selectedBook}">selected</c:if>>${book}</option>
		    </c:forEach>
		</select>  &nbsp;&nbsp; &nbsp;  <input type="submit" name="action" value="GetMembers"/>	

	</form>
	<br/><br/>
	<table>
		<tr>
		<th>Member Id</th>
		<th>Name</th>
	    <th>Email Id</th>
	    <th>Mobile No</th>
	</tr>	
		    
	<% if(!(membersList==null) && !(membersList.size()==0)){
		for(Member member : membersList){%>
		<tr>
			<td> <%= member.getMember_Id()%></td>
			<td> <%= member.getMember_Name() %> </td>
		    <td> <%= member.getEmail()%> </td>
		    <td> <%= member.getMobile_No() %>
		</tr>
	<%} 
	}
	else{%>
	<tr>
		<td colSpan="4"><%out.println("No Content In Table"); %></td>
	</tr>
	<%}%>				
	</table>	
</body>
</html>