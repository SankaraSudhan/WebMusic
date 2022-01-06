
    <%@page import="javax.swing.text.Document"%>
<%@page import="com.webmusic.model.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
               <%@page import="com.webmusic.model.Library"%>
    <%@page import="java.util.List"%>
            <%@page import="com.webmusic.DaoImpl.LibraryDao"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user home page</title>
<style>
#allsongs table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 10px;
        }
       body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
table.center{
margin-left:300px;
margin-right:auto;
}
 .SearchBar {
                position: absolute;
                top: 100px;
                left: 575px;
                height: 200px;
                width: 200px;
                }

</style>
</head>
<body>
<div class="sidebar">
  <a href="Showsong.jsp">SongList</a>
  <a href="AddPlaylist.jsp">Add Playlist</a>
  <a href="Wallet.jsp">Recharge Wallet</a>
  <a href="SwitchPremium.jsp">Switch to Premium</a>
  <a href="UpdateUser.jsp">Update Details</a>
</div> 
<div class="SearchBar">
<form action="Search" method="get" style="text-align: center;">

<input type="text" name = "Song_Title"  placeholder="search by songTitle,album,artist,genre,language">

<button type="submit">Search</button>
</form>
</div>
<% UserInfo uinfo =(UserInfo) session.getAttribute("currentUser");
%>
<p style="text-align: center;" id="user" >Welcome <%= uinfo.getFirstName() %></p>

<%		LibraryDao libraryDao = new   LibraryDao();
		List<Library> objsonglist = (List<Library>)request.getAttribute("allSongs");
		objsonglist=libraryDao.showAllSongs();
		%>
		
		
		<table border="2" id="allsongs" class="center">
			<h1 align="center"><b>Song List</b></h1>
			<thead>
				<tr>
				   <th >S.no</th>
					<th>Song_id</th>
					<th>Song_title</th>
					<th>Artists</th>
					<th>Album</th>
					<th>Genre</th>
					<th>Language</th>
					
					
					</tr>
			</thead>
			<br>
			<br>
			
						<tbody>
				<%
					int i = 0;
					for (Library objbook : objsonglist) {
						i++;
						
				%>
				<tr>
				
					
					<td><%=i%></td>
					<td><%=objbook.getSongId()%></td>
					<td><%=objbook.getSongTitle()%></td>				
					<td><%=objbook.getArtists()%></td>				
					<td> <%=objbook.getAlbum()%></td>
					<td> <%=objbook.getGenre()%></td>
					<td> <%=objbook.getLanguage()%></td>
					
					
					
			</tr>
					
					<%
				}
				%>
					</tbody>
		           </table>
			
</body>
</html>