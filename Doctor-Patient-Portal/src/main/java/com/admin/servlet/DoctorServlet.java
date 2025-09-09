package com.admin.servlet;

import java.io.IOException;

import com.dao.DoctorDAO;
import com.db.DBConnect;
import com.entity.Doctor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/addDoctor")
public class DoctorServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String fullName = req.getParameter("fullName");
			String dateOfBirth = req.getParameter("dateOfBirth");
			String qualification = req.getParameter("qualification");
			String specialist = req.getParameter("specialist");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String password = req.getParameter("password");
			
			Doctor doctor = new Doctor(fullName, dateOfBirth, qualification, specialist, email, phone, password);
			
			DoctorDAO docDAO = new DoctorDAO(DBConnect.getConn());
			
			

			HttpSession session = req.getSession();
			
			if(docDAO.registerDoctor(doctor)) {
				session.setAttribute("successMsg", "Doctor added Successfully");
				resp.sendRedirect("admin/view_doctor.jsp");
				
			}
			else {
				session.setAttribute("errorMsg", "Something went wrong on server!");
				resp.sendRedirect("admin/doctor.jsp");
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
		
		
	

	

