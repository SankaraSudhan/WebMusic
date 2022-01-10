
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
<title>user home page</title>
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
<body style="background-color: lightblue">
<div class="sidebar">
  <a href="ShowSongUser.jsp">SongList</a>
  <a href="Wallet.jsp">Recharge Wallet</a>
  <a href="SwitchPremium.jsp">Switch to Premium</a>
  <a href="UpdateUser.jsp">Update Details</a>
</div> 
<div><img id="logo" src="Assets/MWlogo.png"></div>
<div class="SearchBar">
<form action="Search" method="get" style="text-align: center;">

<input type="text" name = "Song_Title"  placeholder="search by songTitle,album,artist,genre,language">

<button type="submit">Search</button>
</form>
</div>
<% UserInfo uinfo =(UserInfo) session.getAttribute("currentUser");
%>
<p style="text-align: center;" id="user" >Welcome <%= uinfo.getFirstName() %></p>
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
<title>User's home page</title>
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


a{
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




/* 

*style{
margin:0;
padding:0;
}
body{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-image: url("image/");
    font-size:13.5px;
}
  ul
  {
        list-style: none;
        background-color: #1c1c1c;
        margin:0;
    }
  li{
      display:inline-block;
      padding-top: 13px;
      padding-bottom: 13px;
      text-align: center;
      font-size: 15px;
  }
  li a{
      text-decoration: none;
      font-weight:bold;
      color:white;
      display:block;
      padding-right: 7px;
      padding-left: 7px;
  }
  li button{
      margin-right: 500px;
  }
  .text{
        margin-right: 20px;
  }
img 
{
height:210px;
width:250px;
overflow:hidden;
padding-top:60px;
padding-bottom:33px;
}
.names{
position : relative;
top:180px;
left: -250px;
width: 200%;
padding-bottom:30px;
}


 */

     

</style>
</head>
<body>
<body style="background: url(Assets/resul-mentes-DbwYNr8RPbg-unsplash.jpg)">
<div id="nav">

        <ul type="none">
            
           
    
            <li> <a href ="ShowSongUser.jsp" class="gl" >SongList</a></li>
            <li>&nbsp;&nbsp;&nbsp;</li>
              <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="Wallet.jsp"    class="gl" >Recharge Wallet</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="SwitchPremium.jsp"  class="gl" >Switch to Premium</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="UpdateUser.jsp"   class="gl" >Update Details</a></li>
             <li>&nbsp;&nbsp;&nbsp;</li>
               <li>&nbsp;&nbsp;&nbsp;</li>
            <li><a href ="login.jsp"   class="gl" >Logout</a></li>
          
        </ul>
        <div id="search">
<form action="Search" method="get" style="text-align: center;">

<input type="text" name = "Song_Title"  placeholder="Search for Music which you love..">

<button type="submit">Search</button>
</form>
</div>
    </div>
 
<div><img id="logo" src="Assets/MWlogoo.png"></div>

<% UserInfo uinfo =(UserInfo) session.getAttribute("currentUser");
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
 	
 	
 	
 	<!-- 
		<h1 id="songlisthead"><b>User page</b></h1>   -->
		<table border="2" id="allsongs">
	
	
	
	
			
			<thead>
				<tr>
				  
		<!-- 			<th>Song_id</th> -->
					<th>Song_title</th>
	<!-- 				<th>Artists</th>
					<th>Album</th>
					<th>Genre</th>
					<th>Language</th>
				 -->	<th>Play_Song</th>
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
				
					
					
	<%-- 				<td><%=objbook.getSongId()%></td> --%>
					<td><%=objbook.getSongTitle()%></td>				
		<%-- 			<td><%=objbook.getArtists()%></td>				
					<td> <%=objbook.getAlbum()%></td>
					<td> <%=objbook.getGenre()%></td>
					<td> <%=objbook.getLanguage()%></td>
			 --%>		<td>
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
			
	
	
 	<%-- 
		
	
		 <table id="allsongs">
				<% 
					int count = 0;
					for (Library objbook : objsonglist) {
											
						%>
				
				 
                       
                            <tbody>
				
			<tr>
					<td>					
					<audio  controls>
					<source src="Assets/<%=objbook.getSongFile() %>" >
					</audio></td>
					
					<td><img id="img" src="Assets/<%=objbook.getSongImage() %>"></td>
			</tr>
					</tbody>
					</table>
					 </td>
                       <% count ++;
                       if(count==2){ %>
                      
                      </tr>              
                     <%count=0; }}%> 
					</tr>
	               </tbody>
		           </table>
			 --%>
	
			
</body>
</html>
			
			
			
			
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



