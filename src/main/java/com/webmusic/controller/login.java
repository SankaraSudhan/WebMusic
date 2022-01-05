package com.webmusic.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webmusic.DaoImpl.LoginDao;
import com.webmusic.model.Admin;
import com.webmusic.model.UserInfo;

@WebServlet("/login")
public class login extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
		UserInfo checkUser = null;
		String uname = req.getParameter("text");
		//System.out.println(uname);
		
		String password = req.getParameter("pass");
		//System.out.println(password);
			
		
		LoginDao loginDao = new LoginDao();
		try 
		{
			//Ad = loginDao.login(uname, password);
			
			
				Admin admin = loginDao.Checkadmin(uname, password);
				
				if(admin!=null)
				{   
					HttpSession session=req.getSession();
					session.setAttribute("Adminstaration", admin);
					System.out.println("admin");
				    res.sendRedirect("Admin.jsp");
				}
				else
				{
					System.out.println("user");
					UserInfo user=loginDao.login(uname,password);
					
					if(user.getRole().equals("Premium"))
					{
						
					HttpSession session=req.getSession();
					session.setAttribute("PremiumUser", user);
					res.sendRedirect("home.jsp");
					}
					else
					{
						HttpSession session=req.getSession();
						session.setAttribute("currentUser", user);
						res.sendRedirect("user.jsp");
						
					}
					
				}
				
					
				
//			}
//			else
//			{
//				res.getWriter().print("Please Register..!");
//			}
		}
				
	
	catch (Exception e) {
			// TODO Auto-generated catch block
		}
		
	}

}
