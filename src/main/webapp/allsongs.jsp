<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                <%@page import="com.webmusic.model.Library"%>
    <%@page import="java.util.List"%>
            <%@page import="com.webmusic.DaoImpl.LibraryDao"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color: black;}
.conatiner{
       
        width: fit-content;
        height: fit-content;
    }
.slideshow-container img{
    width: 300px;

    height: 200px;
}
.slideshow-container audio{
    width: 300px; 
  box-shadow: 5px 5px 20px rgba(0,0, 0, 0.4);
  border-radius: 90px;

  position: relative;
  bottom: -30px;
}
.songDetails{
    position: relative;
    top: -130px;
    color: white;
    left: 10px;
    font-style: italic;
}

.slideshow-container {
		  max-width: 1000px;
		  position: relative;
		  margin: auto;
		}
		
		.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}


</style>
</head>
<body>
<%
LibraryDao libraryDao = new   LibraryDao();
List<Library> objsonglist = (List<Library>)request.getAttribute("allSongs");
objsonglist=libraryDao.showAllSongs();

				 int i = 0;
					for (Library objbook : objsonglist) {
						i++;
						
						%>	

<div class="slideshow-container">



        <div class="mySlides fade">
        
    
        <img  src="Assets/<%=objbook.getSongImage() %>" > 
        <br>
        <audio id="ohhsanthi" src="Assets/<%=objbook.getSongFile() %>" controls></audio> 
        <div class="songDetails">
            <b><%=objbook.getSongTitle()%></b>
            <br>
            <b><%=objbook.getArtists()%></b>
            <br>
            <b><%=objbook.getLanguage()%></b>
        </div>
    <%} %>
        </div>
        
     <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>


</body>
</html>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>