package admin;
import admin.Action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Voterlogin extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String user_name=request.getParameter("user_name");
		String password=request.getParameter("password");
		String status="0";
		Action o1= new Action();
		
		o1.setUser_name(user_name);
		o1.setPassword(password);
		o1.setStatus(status);
		
		if(o1.voterlogin(user_name, password,status))
			 
		  {
			HttpSession session=request.getSession();
			session.setAttribute("name", user_name);
			  
			response.sendRedirect("../voting.jsp");
			o1.updatedata("voter"," WHERE password="+password+""," status="+1+"");
			
		  }
		  else
		  {
			  response.sendRedirect("../admin/voterlogin.jsp");
		  }
		
	}

}
