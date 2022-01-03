package com.webmusic.controller;

import java.sql.SQLException;
import java.util.Scanner;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webmusic.DaoImpl.UserInfoDao;
import com.webmusic.model.UserInfo;


@WebServlet("/registerweb")
public class register extends HttpServlet {


	public void service(HttpServletRequest req, HttpServletResponse res) {

		try {
			UserInfoDao userDao = new UserInfoDao();
			
			String fname = req.getParameter("FirstName");
			System.out.println(fname);
			
			String lname = req.getParameter("LastName");
			System.out.println(lname);
			
			String email = req.getParameter("UserEmail");
			System.out.println(email);
			email = email.trim().toLowerCase();
			// System.out.println(email);
			String uname = req.getParameter("UserName");
			System.out.println(uname);
			
			String password = req.getParameter("UserPassword");
			System.out.println(password);
            
			String role = req.getParameter("Role");
			System.out.println(role);
			
			long mboNum = Long.parseLong(req.getParameter("MobileNumber"));
			System.out.println(mboNum);

			UserInfo userInfo=new UserInfo(fname,lname,email,uname,password,role,mboNum,0);
			UserInfoDao uid=new UserInfoDao();
		
				uid.insertUser(userInfo);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			} 
			
		
	}
}
//			HttpSession session = req.getSession();
//			
//				boolean verifi = true;
//				verifi = userDao.emailvalid(email);
//
//				if (verifi == false) {
//					userDao.reRegister(email);
//					System.out.println("your accout is activated! \n "
//							+ "if you want to change mobile no or password login and update your accout");
//					//res.sendRedirect("otp.jsp");
//					session.setAttribute("error", "your accout is activated! \n "
//							+ "if you want to change mobile no or password login and update your accout");
//					req.getRequestDispatcher("otp.jsp");
//					
//					//res.sendRedirect("login.jsp");
//
//				}
//			else {
//				System.out.println("enter a correct otp");
//				
//			UserInfo userinsert = new UserInfo(name, email, mboilNo, password);
//			System.out.println(userinsert);
//			boolean boo = userDao.insertUser(userinsert);
//			if (boo == true) {
//				System.out.println("Successfully Register");
//				res.sendRedirect("otp.jsp");
//				session.setAttribute("success", "Successfully Register");
//				req.getRequestDispatcher("otp.jsp");
//				
//				
//			}
//			}
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//	}



