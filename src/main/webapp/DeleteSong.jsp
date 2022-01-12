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
        
        ul {
            margin: 0;
            overflow: hidden;
            background-color:black;
            color: white;
            font-weight: bolder;
            padding:30px 150px;
            opacity: 0.5px;
                position: absolute;
            top: 0px;
            left:0px;
            width: 1065px;
        }

        li {
            float: left;
            color: black;
        }


#nav a {
color:white;
text-decoration: none;
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

#allsongs table{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 2px;
        
        }
        
  #allsongs {    
        position: absolute;
        left:300px;
        }
 #img {

        
 height: 80px;
 width: 80px;
 }   
 #logo {
width:130px;
position: absolute;
left:0px;
top:-25px;
}  
           
</style>
</head>
<body style="background: url(Assets/joanna-kosinska-dka5C8Ct2Fw-unsplash.jpg)">
	<div id="nav">

        <ul type="none">
            
           
    
            <li><a href ="ShowUsers.jsp">ManageUsers</a></li>
            <li>&nbsp;&nbsp;&nbsp;</li>
              <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="Showsong.jsp">AllSongsList</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="AddSong.jsp">AddSong</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="UpdateSong.jsp">UpdateSong</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="DeleteSong.jsp">ManageSongs</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="ShowPlaylist.jsp">AllPlaylist</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="Admin.jsp">Home</a></li>
          
        </ul>
        <div id="search">
<form action="Search" method="get" style="text-align: center;">

<input type="text" name = "Song_Title"  placeholder="Search for Music which you love..">

<button type="submit">Search</button>
</form>
</div>
    </div>
 
<div><img id="logo" src="Assets/MWlogoo.png"></div>

		
		
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