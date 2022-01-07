<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="com.webmusic.model.Library"%>
    <%@page import="java.util.List"%>
            <%@page import="com.webmusic.DaoImpl.LibraryDao"%>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Song page</title>
<style>
#allsongs table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
         text-align: center;
        padding: 10px;
        }
         #allsongs {    
        position: absolute;
        left:230px;
        }
</style>
</head>
<body style="background-color: lightblue">
		
		<table border="2" id="allsongs">
			<h1><b><center>Manage songs</center></b></h1>
			<thead>
				<tr>
				   
					<th>Song_id</th>
					<th>Song_title</th>
					<th>Artists</th>
					<th>Album</th>
					<th>Genre</th>
					<th>Language</th>
					<th>DeleteSong</th>
															
					
					</tr>
			</thead>
			<br>
			<br>
			
						<tbody>
				<% 
				LibraryDao libraryDao = new   LibraryDao();
				List<Library> objsonglist = (List<Library>)request.getAttribute("allSongs");
				objsonglist=libraryDao.showAllSongs();

						
				for (int i = 0; i<objsonglist.size(); i++){
					
					Library library = objsonglist.get(i);
					
						
						%>
				<tr>
				
					
				
					<td><%=library.getSongId()%></td>
					<td><%=library.getSongTitle()%></td>				
					<td><%=library.getArtists()%></td>				
					<td> <%=library.getAlbum()%></td>
					<td> <%=library.getGenre()%></td>
					<td> <%=library.getLanguage()%></td>
					<td> <a href="deletesong?songTitle=<%=library.getSongTitle()%>" %>In Active</a>
					
					
					
			</tr>
					
					<%
				}
				%>
					</tbody>
		           </table>
			
	
</body>
</html>