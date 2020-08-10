 package admin;

import java.io.IOException;
import java.io.PrintWriter;
import admin.Action;
import connection.MasterConnect;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ad_user extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String candidatename=request.getParameter("username");
		String dob=request.getParameter("dob");
		String adhar=request.getParameter("adhar");
		String parti=request.getParameter("partiname");
		String cetegory=request.getParameter("cet");
		String gender=request.getParameter("gender");
		String vote="0";
		String pass=request.getParameter("pass");
		
		Action o1=new Action();
	
		if(o1.insert(" candidate ","(`user_name`,`dob`,`adhar`,`parti`,`cetegory`,`gender`,`password`,`vote`)",  
				"( '"+ candidatename +"','"+ dob +"','" + adhar  +"','" + parti +"','"+ cetegory +"','"+ gender +"','"+ pass +"','"+ vote +"')"))
		{
			System.out.println("inserted");
		}
		else
		{
			System.out.println(" not inserted");
		}
		
	}

}
