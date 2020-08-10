package admin;
import admin.Action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Adminlog extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		
		String user_name=request.getParameter("user_name");
		String password=request.getParameter("password");
		
		Action o1= new Action();
		
		o1.setUser_name(user_name);
		o1.setPassword(password);
		
		if(o1.adminlogin(user_name, password))
			 
		  {
			HttpSession session=request.getSession();
			
			session.setAttribute("user", user_name);
			 response.sendRedirect("../admin/home.jsp");
			 
		  }
		  else
		  {
			  response.sendRedirect("../admin/login.jsp");
		  }
		
	}

}
