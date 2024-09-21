package com.varun.controllers;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.varun.modals.DAO;

/**
 * Servlet implementation class GetCarPhoto
 */
@WebServlet("/GetCarPhoto")
public class GetCarPhoto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String reg_no=request.getParameter("reg_no");
			DAO db=new DAO();
			byte photo[]=db.getCarPhoto(reg_no);
			db.closeConnection();
			response.getOutputStream().write(photo);
		}catch(Exception e) {
			response.sendRedirect("ExpPage.jsp");
			e.printStackTrace();
		}
	}

}
