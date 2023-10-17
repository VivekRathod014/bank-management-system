package com.jsp.bankManager.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.jsp.service.BankManagerService;

@WebServlet("/ManagerSignUp")
public class bankManagerLogin extends HttpServlet {

	BankManagerService bankManagerService = new BankManagerService();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String managerIdStr = req.getParameter("manager_id");
		String username = req.getParameter("manager_username");
		String password = req.getParameter("manager_password");
		int managerId = Integer.parseInt(managerIdStr);

		if (bankManagerService.validateBankManager(managerId, username, password) == true) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("bank_manager_home.jsp");
			requestDispatcher.forward(req, resp);
		} else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("ManagerLogin.jsp");
			requestDispatcher.include(req, resp);
		}

	}
}





