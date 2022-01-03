<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.webmusic.model.Playlist"%>
    <%@page import="java.util.*"%>
            <%@page import="com.webmusic.DaoImpl.PlaylistDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SHOW ALL PLAYLIST</title>
<style>
#allplaylist table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 10px;
        }
</style>
</head>
<body>
<%		PlaylistDao playlistDao = new PlaylistDao();
        List<Playlist> showPlaylist = new ArrayList<Playlist>();

        showPlaylist = playlistDao.showAllPlaylist();

		%>
		
		
		<table border="2" id="allusers">
			<h1><b>All Users Playlist</b></h1>
			<thead>
				<tr>
				   <th >S.no</th>
					<th>Song_Details</th>
					<th>Playlist_Name</th>
					<th>Email_Id</th>					
					</tr>
			</thead>
			<br>
			<br>
			
						<tbody>
				<%
					int i = 0;
					for (Playlist showPlayList :showPlaylist ) {
						i++;
						
				%>
				<tr>
				
					
					<td><%=i%></td>
					<td><%=showPlayList.getSong()%></td>
					<td><%=showPlayList.getPlaylistTitle()%></td>				
					<td><%=showPlayList.getEmailId()%></td>				
					
					
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