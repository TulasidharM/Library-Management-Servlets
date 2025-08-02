<%@page import="java.util.ArrayList"%>
<%@page import="com.lms.model.Issue_Records"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>View Issue_Records</title>
	
	<% 
		List<Issue_Records> issue_records = (List<Issue_Records>) request.getAttribute("isuueRecords"); 
		issue_records = issue_records==null ? new ArrayList<Issue_Records>() : issue_records;
		String return_date;
	%>
	
</head>
<body>
	<h1>View Issued_Records</h1>
	<div>
		<table>
			<tr>
			    <th>Issue Id</th>
			    <th>Book Id</th>
			    <th>Member Id</th>
			    <th>Status</th>
			    <th>Issued Date</th>
			    <th>Return Date</th>
			</tr>
			
			<% for(Issue_Records record : issue_records){ %>
				<tr>
					<td> <%= record.getIssueId()%></td>
					<td> <%= record.getBookId() %> </td>
				    <td> <%= record.getMemberId() %> </td>
				    <td> <%= record.getStatus() %> </td>
				    <td> <%= record.getIssueDate() %> </td>
				    <%
					if (record.getReturnDate() == null) {
   						return_date = "Not Yet Returned";
					} else {
    					return_date = record.getReturnDate().toString();
					}
					%>
				    <td><% out.println(return_date); %></td>
				</tr>
			<%}%>
			
		</table>
	</div>
</body>
</html>