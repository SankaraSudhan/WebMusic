<%@page import="javax.swing.text.Document"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.webmusic.model.UserInfo"%>
    <%@page import="java.util.*"%>
            <%@page import="com.webmusic.DaoImpl.UserInfoDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>
<style>
#allusers table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 10px;
        }
</style>
</head>
<body>
<p>Welcome SUDHAN</p>
<form action="Search" method="get">

<input type="text" name = "Song_Title" placeholder="search by songTitle,album,artist,genre,language">

<button type="submit">Search</button>
</form>
<a href ="ShowUsers.jsp">UsersList</a><br><br>
<a href ="Showsong.jsp">SongList</a><br><br>
<a href ="ShowPlaylist.jsp"> AllPlaylist</a><br><br>
<%		UserInfoDao UserInfoDao = new UserInfoDao();
        List<UserInfo> userList = new ArrayList<UserInfo>();
        userList = UserInfoDao.showAllUsers();

		%>
		
		
		<table border="2" id="allusers">
			<h1><b>All User List</b></h1>
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
					</tr>
			</thead>
			<br>
			<br>
			
						<tbody>
				<%
					int i = 0;
					for (UserInfo showUser :userList ) {
						i++;
						
				%>
				<tr>
				
					
					<td><%=i%></td>
					<td><%=showUser.getFirstName()%></td>
					<td><%=showUser.getLastName()%></td>				
					<td><%=showUser.getEmailId()%></td>				
					<td> <%=showUser.getUserName()%></td>
					<td> <%=showUser.getPassword()%></td>
					<td> <%=showUser.getRole()%></td>
					<td> <%=showUser.getMobileNumber()%></td>
					<td> <%=showUser.getWallet()%></td>
					
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