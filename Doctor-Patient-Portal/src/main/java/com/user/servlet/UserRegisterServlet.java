package com.user.servlet;

import java.io.IOException;

import com.dao.UserDAO;
import com.db.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/user_register")
public class UserRegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			// PrintWriter out = resp.getWriter();

			// get all data/value which is coming from signup.jsp page for new User
			// registration
			
			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			//Set all data to User Entity
			User u = new User(fullName, email, password);
			
			//Create Connection with DB
			UserDAO userDAO = new UserDAO(DBConnect.getConn());
			
			//get session
			HttpSession session = req.getSession();
			
			boolean f = userDAO.userRegister(u);
			
			if (f) {
				
				session.setAttribute("successMsg", "Register Successfully");
				resp.sendRedirect("signup.jsp");
				
			}else {
				
				session.setAttribute("errorMsg", "Something went wrong!");
				resp.sendRedirect("signup.jsp");
				
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	
}
