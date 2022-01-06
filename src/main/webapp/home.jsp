<%@page import="javax.swing.text.Document"%>
<%@page import="com.webmusic.model.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Premium user home</title>
</head>
<body>

<% UserInfo uinfo =(UserInfo) session.getAttribute("PremiumUser");

%>
<p id="user" >Welcome <%= uinfo.getFirstName() %></p>
<form action="Search" method="get">

<input type="text" name = "Song_Title" placeholder="search by songTitle,album,artist,genre,language">

<button type="submit">Search</button>
</form>
<br><br>
<a href ="Showsong.jsp">SongList</a><br><br>
<a href ="AddPlaylist.jsp">Add Playlist</a><br><br>
<a href ="AddOnUser.jsp">AddOn User</a><br><br>
<a href ="DeletePlaylist.jsp">DeletePlaylist</a><br><br>
<a href ="ShowPlaylist.jsp"> AllPlaylist</a><br><br>
<a href ="UpdateUser.jsp">Update Details</a>
</form>
</body>
</html>