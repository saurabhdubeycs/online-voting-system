package admin;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		HttpSession session=request.getSession();
		session.getAttribute("admin_name");
		session.invalidate();
		session=null;
		
		if(session==null)
		{
			//out.println("you lagout");
			response.sendRedirect("../admin/login.jsp?msg=logout");
		}
		else
		{
			response.sendRedirect("../home.jsp?msg=login");
		}
	}

}
