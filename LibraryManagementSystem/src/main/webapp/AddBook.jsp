<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
</head>
<body>
	<h1>Add Book</h1>	
	<form action='AddBookServlet' method='POST'>

		<label>Enter book title</label>
		<input type='text' name='bookTitle' />
		
		<label>Enter book's Author</label>
		<input type='text' name='author'/>
		
		<label>Select book category</label>
		<select name="category" id="category">
		  <option value="Fiction">Fiction</option>
		  <option value="Non-Fiction">Non-Fiction</option>
		  <option value="Science">Science</option>
		  <option value="Technology">Technology</option>
		  <option value="History">History</option>
		  <option value="Biography">Biography</option>
		</select>
		
		<input type='submit'>
	</form>
</body>
</html>