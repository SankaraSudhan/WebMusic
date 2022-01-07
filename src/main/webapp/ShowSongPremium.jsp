<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="com.webmusic.model.Library"%>
    <%@page import="java.util.List"%>
            <%@page import="com.webmusic.DaoImpl.LibraryDao"%>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SONG LIST PAGE PREMIUM</title>
<style>
#allsongs table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
        text-align: center;
        padding: 10px;
        
        }
        #allsongs {    
        position: absolute;
        left:110px;
        }
        
 #img{
 height: 80px;
 width: 80px;
 }    
 function goBack() {
  window.history.back()
}  
  
</style>
</head>
<body style="background-color: lightblue">

<%
LibraryDao libraryDao = new   LibraryDao();
List<Library> objsonglist = (List<Library>)request.getAttribute("allSongs");
objsonglist=libraryDao.showAllSongs();

%>		
 	
		
		<table border="2" id="allsongs">
			<h1><b><center>All Songs List</center></b></h1>
			<thead>
				<tr>
				  
					<th>Song_id</th>
					<th>Song_title</th>
					<th>Artists</th>
					<th>Album</th>
					<th>Genre</th>
					<th>Language</th>
					<th>Play_Song</th>
					<th>Image_Song </th>
										
					
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
				
					
					
					<td><%=objbook.getSongId()%></td>
					<td><%=objbook.getSongTitle()%></td>				
					<td><%=objbook.getArtists()%></td>				
					<td> <%=objbook.getAlbum()%></td>
					<td> <%=objbook.getGenre()%></td>
					<td> <%=objbook.getLanguage()%></td>
					<td>
					<audio  controls>
					<source src="Assets/<%=objbook.getSongFile() %>" >
					</audio>
					</td>
					<td><img id="img" src="Assets/<%=objbook.getSongImage() %>"></td>
			</tr>
					
					<%
				}
				%>
					</tbody>
		           </table>
			<button onclick="goBack()">Go Back</button>
	
</body>
</html>

