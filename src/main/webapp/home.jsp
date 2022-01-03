<%@page import="javax.swing.text.Document"%>
<%@page import="com.webmusic.model.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% UserInfo uinfo =(UserInfo) session.getAttribute("PremiumUser");

%>
<p id="user" >Welcome <%= uinfo.getFirstName() %></p>

<a href ="Showsong.jsp">SongList</a><br><br>
<a href ="AddPlaylist.jsp">Add Playlist</a>
<form action="Search" method="get">

<input type="text" name = "Song_Title" placeholder="search by songTitle,album,artist,genre,language">

<button type="submit">Search</button>
</form>
</body>
</html>