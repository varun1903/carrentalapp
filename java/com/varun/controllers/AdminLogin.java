package com.varun.controllers;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.varun.modals.DAO;


/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(); // declare session here
		
		try {

			String id=request.getParameter("id");
			String password=request.getParameter("password");
			DAO db=new DAO();
			String name=db.adminLogin( id,password);
			db.closeConnection();
			//make a session for sending message it is valid or invalid
//			HttpSession session=request.getSession();
			if(name!=null)
			{
				session.setAttribute("name", name);
				response.sendRedirect("AdminHome.jsp");
			}
			else {
				session.setAttribute("msg", "Invalid Entries");
				response.sendRedirect("index.jsp");
			}}

			catch(Exception e) {
				System.out.println("Exception: " + e.getMessage()); // print the exception message
				session.setAttribute("msg", "An error occurred. Please try again.");
				response.sendRedirect("ExpPage.jsp");



		}
		}

	}