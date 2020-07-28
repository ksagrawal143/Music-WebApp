package com.JavaWebApplication.Service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.JavaWebApplication.Beans.RegisterBean;
import com.JavaWebApplication.Model.UserDBAct;

/**
 * Servlet implementation class DashboardLogin
 */
public class DashboardLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DashboardLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		 RequestDispatcher req = request.getRequestDispatcher("./jsp/Login.jsp");
		 }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		RequestDispatcher req=null;
		String name=request.getParameter("username");
		String pass=request.getParameter("pass");
		RegisterBean rb=new RegisterBean();
		rb.setName(name);
		rb.setPass(pass);
		UserDBAct ud=new UserDBAct();
		String alert="";
		PrintWriter pw=null;
		try {
			alert = ud.verifyUser(rb);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(alert.equals("Login successful.")){
			HttpSession session=request.getSession();
			session.setAttribute("username",name);
			/*pw=response.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('"+alert+"');");
			pw.println("</script>");*/
			req = request.getRequestDispatcher("./jsp/Dashboard.jsp");
		}
		else
		{	
			response.setContentType("text/html");
			pw=response.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('"+alert+"');");
			pw.println("</script>");
			req = request.getRequestDispatcher("./jsp/Login.jsp");
		}
		req.include(request, response);
	}

}
