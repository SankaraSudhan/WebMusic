<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.webmusic.model.Playlist"%>
    <%@page import="java.util.*"%>
            <%@page import="com.webmusic.DaoImpl.PlaylistDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SHOW ALL PLAYLIST USER</title>
<style>
#allplaylist table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
         text-align: center;
        padding: 10px;
        }
           #allplaylist {    
        position: absolute;
        left:100px;
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


a {
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

#allsongs table{
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
 #logo {
width:130px;
position: absolute;
left:0px;
top:-25px;
}  
     
        
            
        
</style>
</head>
<body style="background-color: lightblue">

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
            <li><a href ="home.jsp">Home</a></li>
          
        </ul>
        <div id="search">
<form action="Search" method="get" style="text-align: center;">

<input type="text" name = "Song_Title"  placeholder="Search for Music which you love..">

<button type="submit">Search</button>
</form>
</div>
    </div>
 
<div><img id="logo" src="Assets/MWlogoo.png"></div>










<%		PlaylistDao playlistDao = new PlaylistDao();
        List<Playlist> showPlaylist = new ArrayList<Playlist>();

        showPlaylist = playlistDao.showAllPlaylist();

		%>
		
		
		<table border="2" id="allplaylist">
			<h1><b><center>All Users Playlist</center></b></h1>
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