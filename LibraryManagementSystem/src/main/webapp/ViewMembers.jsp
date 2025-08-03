<%@ page language="java" import="java.util.List,java.util.ArrayList,com.lms.model.Member" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Members</title>
<% 
		List<Member> members = (List<Member>) request.getAttribute("membersList"); 
		members = members==null ? new ArrayList<Member>() : members;
%>
</head>
<body>
	<h1>View Members</h1>
	<div>
		<table>
			<tr>
			    <th>Member ID</th>
			    <th>Name</th>
			    <th>Email Id</th>
			    <th>Mobile_Number</th>
			    <th>Gender</th>
			    <th>Address</th>
			    <th>Action</th>
			</tr>
			<%if (members.isEmpty()) {%>
			<tr> 
				<td colspan="7"><% out.println("No Items To Display"); %></td>
			</tr>
			<%}
			else {
				for(Member member : members){ %>
				<tr>
					<td> <%= member.getMember_Id()%></td>
					<td> <%= member.getMember_Name() %> </td>
				    <td> <%= member.getEmail() %> </td>
				    <td> <%= member.getMobile_No() %> </td>
				    <td> <%= member.getGender() %> </td>
				    <td> <%= member.getAddress() %> </td>
				    <td><form action="ViewMembersServlet">
				    		<input type="hidden" name="memberId" value="<%= member.getMember_Id() %>" />
   							<input type="hidden" name="name" value="<%= member.getMember_Name() %>" />
    						<input type="hidden" name="email" value="<%= member.getEmail() %>" />
    						<input type="hidden" name="mobile" value="<%= member.getMobile_No() %>" />
    						<input type="hidden" name="gender" value="<%= member.getGender() %>" />
    						<input type="hidden" name="address" value="<%= member.getAddress() %>" />
    						<input type="submit" name="action" value="Update"/>
    					</form>
    				</td>
				</tr>
				<%}} %>
		</table>
	</div>
</body>
</html>