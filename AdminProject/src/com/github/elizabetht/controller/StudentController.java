package com.github.elizabetht.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.elizabetht.repository.StudentRepository;

/**
 * Servlet implementation class StudentController
 */

@SuppressWarnings("serial")
public class StudentController extends HttpServlet {
	private StudentRepository studentRepository;

	private static String STUDENT_SIGNUP = "JSP/signup.jsp";
	private static String STUDENT_LOGIN = "JSP/login.jsp";
	private static String LOGIN_FACULTY = "JSP/success.jsp";
	private static String LOGIN_FAILURE = "JSP/failure.jsp";
	private static String LOGIN_ADMIN = "JSP/AdminDashBoard.jsp";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StudentController() {
		super();
		studentRepository = new StudentRepository();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		String forward = STUDENT_SIGNUP;
		RequestDispatcher view = request.getRequestDispatcher(forward);
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
		
		if (studentRepository != null) {
			if (pageName.equals("signup")) {
				if (studentRepository.findByUserName(request
						.getParameter("userName"))) {
					request.setAttribute("message", "User Name exists. Try another user name");
					forward = STUDENT_SIGNUP;
					RequestDispatcher view = request
							.getRequestDispatcher(forward);
					view.forward(request, response);
					return;
				}

				studentRepository.save(request.getParameter("userName"),
						request.getParameter("password"),
						request.getParameter("firstName"),
						request.getParameter("lastName"),
						request.getParameter("dateOfBirth"),
						request.getParameter("emailAddress"));
				forward = STUDENT_LOGIN;
			} else if (pageName.equals("login")) {
				String result = studentRepository.findByLogin(
						request.getParameter("userName"),
						request.getParameter("password"));
				System.out.println("Type"+result);
				if (result == "admin") {
					forward = LOGIN_ADMIN;
				} else if (result == "faculty") {
					forward = LOGIN_FACULTY;
				}else {
					forward = LOGIN_FAILURE;
				}
				
			}
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
}
