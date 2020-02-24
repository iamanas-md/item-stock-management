package com.anas.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anas.data.UserDAOImpl;
import com.anas.model.*;

@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UserDAOImpl userUtil = null;

	
	public void init() throws ServletException {
		userUtil = new UserDAOImpl();
		super.init();
	}

	public UserController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String command = request.getParameter("command");
			switch(command){
				
				case "ADD":
				addUser(request,response);
				break;
				
				case "USER":
				getUser(request,response);
				break;
				case "LOGOUT":
				Logout(request, response);
				break;
			}
			
			
		}
		catch(Exception e) {
			throw new ServletException(e);
		}

	}
	
	
	private void Logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();
		String message = "Logout Successfully";
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		request.setAttribute("msg", message);
		rd.forward(request, response);
	}

	private void getUser(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		System.out.println(userId);
		System.out.println(password);
		
		String message = null;
		String resource = "login.jsp";
		try {
			User user = userUtil.getUser(userId);
			System.out.println(user);
			if(user.getPassword().equals(password)) {
				System.out.println("password :"+password);
				
				resource = "ItemController";
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				
			}
			else {
				message = "Wrong Password : Please try again ";
				System.out.println("wrong"+message);
			}
		}
		catch (Exception e){
			message = e.getMessage();
			System.out.println("exce:"+message);
		}
		request.setAttribute("msg", message);
		RequestDispatcher rd = request.getRequestDispatcher(resource);
		rd.forward(request, response);
	}

	private void addUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
	String userId=request.getParameter("userId");
	String password=request.getParameter("password");
	String firstName=request.getParameter("firstName");
	String lastName=request.getParameter("lastName");
	String address=request.getParameter("address");
	String city=request.getParameter("city");
	
	String messege = null;
	String resource = "signup.jsp";
	
	User user = new User(userId, password, firstName, lastName, address, city);
	
	try {
		userUtil.addUser(user);
		messege="Record Inserted Successfully: Please Login";
		resource = "login.jsp";
		
	}
	catch (Exception e) {
		messege = e.getMessage();
	}
	request.setAttribute("msg", messege);
	RequestDispatcher rd = request.getRequestDispatcher(resource);
	rd.forward(request, response);
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
