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
		  color: blue
		  font-weight: bold;
		  font-size: 18px;

		}
		.next {
		  right: -210px;
	
		}
		
		.prev:hover, .next:hover ,.numbertext:hover{
			font-weight: bolder;
		  background-color:white;
		  color: black;
		}


</style>
</head>
<body>
<%
LibraryDao libraryDao = new   LibraryDao();
List<Library> objsonglist = (List<Library>)request.getAttribute("allSongs");
objsonglist=libraryDao.showAllSongs();

					%>		

<div class="slideshow-container">

<div class="conatiner">
<% int i = 0;
					for (Library objbook : objsonglist) {
						i++;
						
						%>
        <div class="mySlides fade">
        
    
        <img  src="<%=objbook.getSongImage() %>" > 
        <br>
        <audio id="ohhsanthi" src="<%=objbook.getSongFile() %>" controls></audio> 
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


      if (n > slides.length) {slideIndex = 1}    
      if (n < 1) {slideIndex = slides.length}
      for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";  
      }
   
      slides[slideIndex-1].style.display = "block";  
 
    }
  