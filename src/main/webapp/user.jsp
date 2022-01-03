
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
</style>
</head>
<body>
<form action="Search" method="get">

<input type="text" name = "Song_Title" placeholder="search by songTitle,album,artist,genre,language">

<button type="submit">Search</button>
</form>
<% UserInfo uinfo =(UserInfo) session.getAttribute("currentUser");
%>
<p id="user" >Welcome <%= uinfo.getFirstName() %></p>
<a href ="Showsong.jsp">SongList</a><br><br>
<a href ="AddPlaylist.jsp">Add Playlist</a>
<%		LibraryDao libraryDao = new   LibraryDao();
		List<Library> objsonglist = (List<Library>)request.getAttribute("allSongs");
		objsonglist=libraryDao.showAllSongs();
		%>
		
		
		<table border="2" id="allsongs">
			<h1><b>Song List</b></h1>
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