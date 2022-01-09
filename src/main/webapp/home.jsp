

    <%@page import="javax.swing.text.Document"%>
<%@page import="com.webmusic.model.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
               <%@page import="com.webmusic.model.Library"%>
    <%@page import="java.util.List"%>
            <%@page import="com.webmusic.DaoImpl.LibraryDao"%>
 
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>premium user home page</title>
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
  background-color: #lightblue;
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
 #logo{
width:130px;
position: absolute;
right:0px;
top:0px;
}  
  

</style>
</head>
<body style="background-color: lightblue ">
<div class="sidebar">
<a href ="ShowSongPremium.jsp">SongList</a><br><br>
<a href ="AddPlaylist.jsp">Add Playlist</a><br><br>
<a href ="AddOnUser.jsp">AddOn User</a><br><br>
<a href ="DeletePlaylist.jsp">DeletePlaylist</a><br><br>
<a href ="ShowPlaylistUser.jsp"> AllPlaylist</a><br><br>
<a href ="UpdateUser.jsp">Update Details</a>
</div> 
<div><img id="logo" src="Assets/MWlogo.png"></div>
<div class="SearchBar">
<form action="Search" method="get" style="text-align: center;">

<input type="text" name = "Song_Title"  placeholder="search by songTitle,album,artist,genre,language">

<button type="submit">Search</button>
</form>
</div>
<% UserInfo uinfo =(UserInfo) session.getAttribute("PremiumUser");
%>
<p style="text-align: center;" id="user" >Welcome <%= uinfo.getFirstName() %></p>
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
			
	
			
</body>
</html> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Premium User home page</title>
<style>
ul {
            margin: 0;
            overflow: hidden;
            background-color:black;
            color: white;
            font-weight: bolder;
            padding:30px 150px;
            opacity: 0.5px;
        }

        li {
            float: left;
            color: black;
        }


#nav a{
color:white;
text-decoration: none;
}

#allsongs table{
        border: 1px solid black;
        border-collapse: collapse;
         text-align: center;
        padding: 10px;
        }
       body {
  margin: 0;
  font-family: "Lato", sans-serif;
}


table.center{
margin-left:300px;
margin-right:auto;
}
 #search {
	position: absolute;
	top: 15px;
	right:10px;
	border:2px solid white;
}

#search input {
	border: none;
	height: 30px;
	font-weight: bold;
	outline: none;
	background-color:transparent;
	font-size: 18px;
	color: white;
}

#search  button {
	position: relative;
	left: 0px;
	background-color: DodgerBlue;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	height: 38px;
}

::placeholder {
	color: white;
	font-size: 13px;
	height: 30px;
	font-style: italic;
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
 #logo{
width:130px;
position: absolute;
left:0px;
top:-25px;
}  
     

</style>
</head>
<body>
<body style="background-color: lightblue ">
<div id="nav">

        <ul type="none">
            
           
    
            <li><a href ="ShowSongPremium.jsp">SongList</a></li>
            <li>&nbsp;&nbsp;&nbsp;</li>
              <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="AddPlaylist.jsp">Add Playlist</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="AddOnUser.jsp">AddOn User</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="DeletePlaylist.jsp">DeletePlaylist</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="ShowPlaylistUser.jsp"> AllPlaylist</a></li>
            <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="UpdatePUser.jsp">Update Details</a></li>
              <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="login.jsp">Logout</a></li>
        </ul>
        <div id="search">
<form action="Search" method="get" style="text-align: center;">

<input type="text" name = "Song_Title"  placeholder="Search for Music which you love..">

<button type="submit">Search</button>
</form>
</div>
    </div>
 
<div><img id="logo" src="Assets/MWlogoo.png"></div>

<% UserInfo uinfo =(UserInfo) session.getAttribute("PremiumUser");
%>
<p style="text-align: center;" id="user" >Welcome <%= uinfo.getFirstName() %></p>

<%

LibraryDao libraryDao = new   LibraryDao();
List<Library> objsonglist = (List<Library>)request.getAttribute("allSongs");
objsonglist=libraryDao.showAllSongs();

%>		
 	
		<center><h1 id="songlisthead"><b> Premium User page</b></h1></center>
		<table border="2" id="allsongs">
			
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
			
	
			
</body>
</html>




