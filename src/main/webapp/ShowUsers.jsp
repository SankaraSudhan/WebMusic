<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.webmusic.model.UserInfo"%>
    <%@page import="java.util.*"%>
            <%@page import="com.webmusic.DaoImpl.UserInfoDao"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USERS LIST PAGE</title>
<style>
#allusers table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 10px;
        }
</style>
</head>
<body>

		
		
		<table border="2" id="allusers">
			<h1><b>Manage Users</b></h1>
			<thead>
				<tr>
				   <th >S.no</th>
					<th>First_Name</th>
					<th>Last_Name</th>
					<th>Email_Id</th>
					<th>User_Name</th>
					<th>Password</th>
					<th>Role</th>
					<th>Mobile_Number</th>
					<th>Wallet</th>
					<th>DeleteUser</th>
					</tr>
			</thead>
			<br>
			<br>
			
						<tbody>
				<%
					
						
				UserInfoDao UserInfoDao = new UserInfoDao();
				        List<UserInfo> userList = new ArrayList<UserInfo>();
				        userList = UserInfoDao.showAllUsers();

						
				for (int i = 0; i<userList.size(); i++){
					UserInfo userinfo = userList.get(i);
					
				%>
				<tr>
				
					
					<td><%=i%></td>
					<td><%=userinfo.getFirstName()%></td>
					<td><%=userinfo.getLastName()%></td>				
					<td><%=userinfo.getEmailId()%></td>				
					<td> <%=userinfo.getUserName()%></td>
					<td> <%=userinfo.getPassword()%></td>
					<td> <%=userinfo.getRole()%></td>
					<td> <%=userinfo.getMobileNumber()%></td>
					<td> <%=userinfo.getWallet()%></td>
					<td> <a href="deleteuser?uname=<%=userinfo.getUserName()%>" %>Delete</a>
					
					
			</tr>
					
					<%
				}
				%>
					</tbody>
		           </table>
			

</body>
</html>
 
</body>
</html>