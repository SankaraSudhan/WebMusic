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
		
		
		<table border="2" id="allusers">
			<h1><b>Delete Playlist</b></h1>
			<thead>
				<tr>
				   <th >S.no</th>
					<th>Song_Details</th>
					<th>Playlist_Name</th>
					<th>Email_Id</th>
					<th>Delete</th>					
					</tr>
			</thead>
			<br>
			<br>
			
						<tbody>
				<%
					PlaylistDao playlistDao = new PlaylistDao();
		            List<Playlist> deletePlaylist = new ArrayList<Playlist>();
                    deletePlaylist = playlistDao.showAllPlaylist();


						
						for (int i = 0; i<deletePlaylist.size(); i++){
							Playlist playlist = deletePlaylist.get(i);
							
						
				%>
				<tr>
				
					
					<td><%=i%></td>
					<td><%=playlist.getSong()%></td>
					<td name="playlist_title"><%=playlist.getPlaylistTitle()%></td>				
					<td name="email_id"><%=playlist.getEmailId()%></td>				
					<td> <a href="deleteplaylist?plname=<%=playlist.getPlaylistTitle()%>">Delete</a>
				
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