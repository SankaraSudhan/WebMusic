package com.webmusic.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webmusic.DaoImpl.LibraryDao;
import com.webmusic.model.Library;

@WebServlet("/addSongs")
public class AddSongs extends HttpServlet {


	public void service(HttpServletRequest req, HttpServletResponse res) {

		try {
			LibraryDao libDao = new LibraryDao();
			int songId = Integer.parseInt(req.getParameter("SongId"));
			System.out.println(songId);
			
			String songTitle = req.getParameter("SongTitle");
			System.out.println(songTitle);
			
			String artist = req.getParameter("Artists");
			System.out.println(artist);
			
			String album = req.getParameter("Album");
			System.out.println(album);
			
			String genre = req.getParameter("Genre");
			System.out.println(genre);
            
			String language = req.getParameter("Language");
			System.out.println(language);
			
			
			Library library = new Library(songId, songTitle, artist, album, genre, language);
			LibraryDao sad = new LibraryDao();
				sad.insertLibrary(library);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			} 
			
		
	}
}


