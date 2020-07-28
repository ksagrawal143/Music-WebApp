package com.JavaWebApplication.Controller;

import java.io.*;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.JavaWebApplication.Beans.RegisterBean;
import com.JavaWebApplication.Model.UserDBAct;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: Local Server of MyTunes").append(request.getContextPath());
//		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		RequestDispatcher req=null;
		String name=request.getParameter("username");
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		String repass=request.getParameter("repassword");
		RegisterBean rb=new RegisterBean();
		rb.setName(name);
		rb.setEmail(email);
		rb.setPass(pass);
		UserDBAct ud=new UserDBAct();
		boolean exist=false;
		try {
			exist = ud.existUser(rb);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(!exist) {
			response.setContentType("text/html");
			PrintWriter pw=response.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Username or Email-ID already registered.');");
			pw.println("</script>");
			req = request.getRequestDispatcher("./index.jsp");
		}
		else
		{	
			response.setContentType("text/html");
			PrintWriter pw=response.getWriter();
			if(!pass.equals(repass)) {
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Passwords dont match');");
				pw.println("</script>");
				req = request.getRequestDispatcher("./index.jsp");
			}
			else {
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('User registered successfully');");
				pw.println("</script>");
				ud.insertUser(rb);
				req = request.getRequestDispatcher("./jsp/Login.jsp");
			}
		
		}
		req.include(request, response);
		
	}

}
