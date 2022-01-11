

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
<title>Premium User home page</title>
<style>
/* ul {
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

        
        
 height: 100px;
 width: 100px;
 }   
 #logo{
width:130px;
position: absolute;
left:0px;
top:-25px;
}  

   #image{
position: relative;
left: 145px;

}

#image img {
            width: 60%;
            height: 200px;
        }
        .prev{
            position: absolute;
            top: 150px;
            left: 10px;
            font-size: x-large;
        }
        .next {
            position: absolute;
            top: 150px;
            right: 20px;
            font-size: x-large;
        }
        .next:hover,.prev:hover{
            height: 10x;
            background-color: gray;
        }





   .gl:hover{
            background: rgb(109, 216, 235);
           
        }
      */


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


a {
color:white;
text-decoration: none;
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
	background-color: skyBlue;
	border: none;
	color: black;
	padding: 15px 32px;
	text-align: center;
	height: 38px;
	font-family: bold;
	font-size:15px;
}

::placeholder {
	color: white;
	font-size: 13px;
	height: 30px;
	font-style: italic;
}


        
  #allsongs {    
        position: absolute;
        left:400px;
        }
 #img{

        
 height: 100px;
 width: 100px;
 }   
 #logo{
width:130px;
position: absolute;
left:0px;
top:-25px;
}  
    
    #image{
position: relative;
left: 145px;

}

#image img {
            width: 60%;
            height: 200px;
        }
        .prev{
            position: absolute;
            top: 150px;
            left: 10px;
            font-size: x-large;
        }
        .next{
            position: absolute;
            top: 150px;
            right: 20px;
            font-size: x-large;
        }
        .next:hover,.prev:hover{
            height: 10x;
            background-color: gray;
        }

          .gl:hover{
            background: rgb(109, 216, 235);
           
        }

















</style>
</head>
<body>
<body style="background: url(Assets/resul-mentes-DbwYNr8RPbg-unsplash.jpg)">
<div id="nav">

        <ul type="none">
            
           
    
            <li><a href ="ShowSongPremium.jsp"  class="gl">SongList</a></li>
            <li>&nbsp;&nbsp;&nbsp;</li>
              <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="AddPlaylist.jsp"  class="gl">Add Playlist</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="AddOnUser.jsp"  class="gl">AddOn User</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="DeletePlaylist.jsp"  class="gl">DeletePlaylist</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="ShowPlaylistUser.jsp"  class="gl"> AllPlaylist</a></li>
            <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="UpdatePUser.jsp"  class="gl">Update Details</a></li>
              <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="login.jsp"  class="gl">Logout</a></li>
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


<%

LibraryDao libraryDao = new   LibraryDao();
List<Library> objsonglist = (List<Library>)request.getAttribute("allSongs");
objsonglist=libraryDao.showAllSongs();

%>		
 		<div id="image">

        <div class="slideshow-container">
    
            <div class="mySlides fade">
         
              <img src="Assets/okk3.jpg" style="width:80%">
            </div>
            
            
         <div class="mySlides fade">
                <img src="Assets/wp2009638-avicii-wallpapers.jpg" style="width:80%">
            </div>
           
            <div class="mySlides fade">
        
         
            
               <img src="Assets/unnamed.jpg" style="width:80%">
            </div>
            
            
            <div class="mySlides fade">
            
                <img src="Assets/AW.jpg" style="width:80%">
              </div>
              
               <div class="mySlides fade">
                <img src="Assets/suriya.jpg" style="width:80%">
            </div>
              
              <div class="mySlides fade">
            
                <img src="Assets/marshmello.jpg" style="width:80%">
              </div>
    
     
    
        
            </div>
    </div>
    
    <p style="text-align: center;" id="user" >Welcome <%= uinfo.getFirstName() %></p>
		
		<table border="2" id="allsongs">
			
			<thead>
				<tr>
				  
		<!-- 			<th>Song_id</th> -->
					<th>Song_title</th>
			<!-- 		<th>Artists</th>
					<th>Album</th>
					<th>Genre</th>
					<th>Language</th> -->
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
				
					
					
			<%-- 		<td><%=objbook.getSongId()%></td> --%>
					<td><%=objbook.getSongTitle()%></td>				
			<%-- 		<td><%=objbook.getArtists()%></td>				
					<td> <%=objbook.getAlbum()%></td>
					<td> <%=objbook.getGenre()%></td>
					<td> <%=objbook.getLanguage()%></td> --%>
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
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");

  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    

  slides[slideIndex-1].style.display = "block";  
  
  setTimeout(showSlides, 2500); // Change image every 2 seconds
}
</script>




