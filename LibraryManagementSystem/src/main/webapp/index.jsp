<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Library Management System</title>
</head>
	
	
<body>
	<h1>Welcome to the Library Management System</h1>
    <p>Please select an option:</p>
    <form action="hitButton" method="POST">
    	<input type='submit' name="homeButton" value="Reports"/>
    	<input type='submit' name="homeButton" value="AddBook"/>
    	<input type='submit' name="homeButton" value="ViewBooks"/>
    	<input type='submit' name="homeButton" value="AddMember"/>
    	<input type='submit' name="homeButton" value="ViewMembers"/>
    	<input type='submit' name="homeButton" value="IssueBook"/>
    	<input type='submit' name="homeButton" value="ReturnBook"/>
    	<input type='submit' name="homeButton" value="IssuedRecords"/>
    	<input type='submit' name="homeButton" value="MembersBooks"/>
    	<input type='submit' name="homeButton" value="BooksMembers"/>
    </form>
    
    <% 
    	String fileToRender = (String) request.getAttribute("fileToRender");
    	out.println(fileToRender);
    	fileToRender = fileToRender == null ? "EmptyComponent.jsp" : fileToRender;
    %>
   	
	<jsp:include page="<%=fileToRender%>" />
	
    	
	
</body>

</html>