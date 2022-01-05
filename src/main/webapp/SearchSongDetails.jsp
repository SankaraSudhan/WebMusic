<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
               <%@page import="com.webmusic.model.Library"%>
    <%@page import="java.util.*"%>
            <%@page import="com.webmusic.DaoImpl.LibraryDao"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search page</title>
</head>
<body>

		<table border="2" id="allsongs">
			<h1><b>Search Result:</b></h1>
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
			<%
				         List<Library> songlist  =  (List<Library>) session.getAttribute("songname");
					for (int i=0; i<songlist.size();i++) 
					{
						Library objbook = songlist.get(i);
						//System.out.println(objbook);
				%>			
						<tbody>
				         
				<tr>
				
					
					<td><%= i%></td>
		            <td><%= objbook.getSongId()%></td> 
					<td><%= objbook.getSongTitle()%></td>				
					<td><%= objbook.getArtists()%></td>				
					<td> <%= objbook.getAlbum()%></td>
					<td> <%= objbook.getGenre()%></td>
					<td> <%= objbook.getLanguage()%></td>
					
					
					
			</tr>
					
					<%
				}
				%>
					</tbody>
		           </table>
			
	
</body>
</html>