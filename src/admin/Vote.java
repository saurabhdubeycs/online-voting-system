package admin;
import admin.Action;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.commons.beanutils.Converter;

public class Vote extends HttpServlet {


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String id=request.getParameter("id");
		String vote=request.getParameter("vote");
		
        Action o1=new Action();
		
		String fields = "`vote`='" +vote+ "'";
		String condi = " WHERE `id`='" +id+ "'";
		
		
			if (o1.updatedata("candidate", condi, fields)) {
				response.sendRedirect("../index.jsp");
				} else {
					response.sendRedirect("../admin/voterlogin.jsp");
					}

		
		
	}

}
