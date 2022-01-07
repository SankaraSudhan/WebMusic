
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
<title>Admin page</title>
<style>
#allsongs table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
         text-align: center;
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
  background-color: lightblue;
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
  background-color: lightblue;
  color: lightblue;
}

.sidebar a:hover:not(.active) {
  background-color: lightblue;
  color: white;
}

div.content {
  margin-left: 200px;
  margin-top:0px;
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

#allsongs table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 2px;
        
        }
        
  #allsongs {    
        position: absolute;
        left:200px;
        }
 #img{
 height: 80px;
 width: 80px;
 }       

</style>
</head>
<body style="background-color: lightblue">
<div class="sidebar">
 <a href ="ShowUsers.jsp">ManageUsers</a><br><br>
<a href ="Showsong.jsp">AllSongsList</a><br><br>
<a href ="AddSong.jsp">AddSong</a><br><br>
<a href ="UpdateSong.jsp">UpdateSong</a><br><br>
<a href ="DeleteSong.jsp">ManageSongs</a><br><br>
<a href ="ShowPlaylist.jsp">AllPlaylist</a><br><br>
  
</div> 
<div class="SearchBar">
<form action="Search" method="get" style="text-align: center;">

<input type="text" name = "Song_Title"  placeholder="search by songTitle,album,artist,genre,language">

<button type="submit">Search</button>
</form>
</div>
<p><center>Welcome Sudhan</center></p>
<h1><center>Music World</center></h1>
<%
LibraryDao libraryDao = new   LibraryDao();
List<Library> objsonglist = (List<Library>)request.getAttribute("allSongs");
objsonglist=libraryDao.showAllSongs();

%>		
 	
		<h1 id="songlisthead"><b>-  </b></h1>
		<table border="2" id="allsongs">
			
			<thead>
				<tr>
				   <th >S.no</th>
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
				
					
					<td><%=i%></td>
					<td><%=objbook.getSongId()%></td>
					<td><%=objbook.getSongTitle()%></td>				
					<td><%=objbook.getArtists()%></td>				
					<td> <%=objbook.getAlbum()%></td>
					<td> <%=objbook.getGenre()%></td>
					<td> <%=objbook.getLanguage()%></td>
					<td>
					<audio  controls>
					<source src="<%=objbook.getSongFile() %>" >
					</audio>
					</td>
					<td><img id="img" src="<%=objbook.getSongImage() %>"></td>
			</tr>
					
					<%
				}
				%>
					</tbody>
		           </table>
			
	
			
</body>
</html>