package com.github.elizabetht.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.elizabetht.repository.LeaveManagement;


public class LeaveManagementController extends HttpServlet  {
	private LeaveManagement LeaveManagement;
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		
		String forward = null;
		RequestDispatcher view = request.getRequestDispatcher(forward);;
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pageName = request.getParameter("pageName");
		String forward = "";		
		
		
			if (pageName.equals("signup")) {
							

				LeaveManagement.save(request.getParameter("CL"),
						request.getParameter("EL"),
						request.getParameter("RH"),
						request.getParameter("ML"),
						request.getParameter("CCL"));
						
				
			} 
			
		}

}
