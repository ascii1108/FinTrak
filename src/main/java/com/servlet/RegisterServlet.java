package com.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.HibernateUtil;
import com.entity.User;

@WebServlet("/userRegister")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username=req.getParameter("username");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		User u = new User(username, email, password );
		//System.out.println(u);
		
		UserDao dao = new UserDao(HibernateUtil.getSessionFactory());
		boolean f = dao.saveuser(u);
		
		HttpSession session = req.getSession();
		
		if(f) {
			session.setAttribute("msg", "Register Successfully");
			//System.out.println("Register Succesfully");
			resp.sendRedirect("login.jsp");
		}else {
			session.setAttribute("msg", "Server Error");
			resp.sendRedirect("signup.jsp");
		}
		
		
	}
	

	
}
