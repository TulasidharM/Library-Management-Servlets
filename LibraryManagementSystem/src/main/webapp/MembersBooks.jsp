<%@ page language="java" import="java.util.*,com.lms.model.Book" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MembersBooks</title>
</head>
<body>
	<h1>MembersBooks</h1>
	<%  
		List<String> membersList = (List<String>) request.getAttribute("membersList");
		List<Book> booksList = (List<Book>) request.getAttribute("booksList");
		String email=request.getAttribute("email").toString();
	%>
	
	<form action="MembersBooksServlet" method="post">
<pre>
<label for="members">Select Member: </label><select id="members" name="members">
			<option value="" disabled selected>Select a Member</option>
		    <c:forEach var="member" items="${membersList}">
		        <option value="${member}" <c:if test="${member == selectedMember}">selected</c:if>>${member}</option>
		    </c:forEach>
		</select>
		
<label for="email">Or Email of Member: </label><input id="email" name="email" type="text" value="${email}"/>	<input type="submit" name="action" value="Search"/>	<br>		
</pre>	
	</form>
	<table>
		<tr>
		<th>Book Id</th>
		<th>Title</th>
	    <th>Author</th>
	</tr>	
		    
	<% if(!(booksList==null) && !(booksList.size()==0)){
		for(Book book : booksList){%>
		<tr>
			<td> <%= book.getBook_Id()%></td>
			<td> <%= book.getBook_Title() %> </td>
		    <td> <%= book.getBook_Author() %> </td>
		</tr>
	<%} 
	}
	else{%>
	<tr>
		<td colSpan="3"><%out.println("No Content In Table"); %></td>
	</tr>
	<%}%>				
	</table>	
</body>
</html>