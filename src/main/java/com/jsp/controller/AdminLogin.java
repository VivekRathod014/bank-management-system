package com.jsp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.dto.Admin;
import com.jsp.service.AdminService;

@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminService adminService=new AdminService();
		String id = req.getParameter("a_id");
		String username = req.getParameter("a_username");
		String password = req.getParameter("a_password");

		int idNo = Integer.parseInt(id);

		Admin admin = new Admin();
		admin.setA_name(username);
		admin.setA_password(password);

		boolean a = adminService.validateAdmin(idNo, username, password);

		if (a == true) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminHomePage.jsp");
			requestDispatcher.forward(req, resp);
		} else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminlogin.jsp");
			requestDispatcher.include(req, resp);
		}

		
	}
	
}
