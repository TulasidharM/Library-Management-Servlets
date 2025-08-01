<%@page import="java.util.ArrayList"%>
<%@page import="com.lms.model.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>View Books</title>
	
	<% 
		List<Book> books = (List<Book>) request.getAttribute("booksList"); 
		books = books==null ? new ArrayList<Book>() : books;
	%>
	
</head>
<body>
	<h1>View Books</h1>
	<p><% out.print(books.isEmpty()); %></p>
	<div>
		<table>
			<tr>
			    <th>Book ID</th>
			    <th>Title</th>
			    <th>Author</th>
			    <th>Category</th>
			    <th>Status</th>
			    <th>Availability</th>
			    <th>Action</th>
			</tr>
			
			<% for(Book book : books){ %>
				<tr>
					<td> <%= book.getBook_Id() %></td>
					<td> <%= book.getBook_Title() %> </td>
				    <td> <%= book.getBook_Author() %> </td>
				    <td> <%= book.getBook_Category() %> </td>
				    <td> <%= book.getBook_Status() %> </td>
				    <td> <%= book.getBook_Availability() %> </td>
				    <td> <button>Update</button> </td>
				</tr>
			<%}%>
			
		</table>
	</div>
</body>
</html>