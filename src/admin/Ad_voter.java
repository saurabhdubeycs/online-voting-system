package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ad_voter extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String votername=request.getParameter("username");
		String dob=request.getParameter("dob");
		String voterid=request.getParameter("voterid");
		String cetegory=request.getParameter("cet");
		String gender=request.getParameter("gender");
		String pass=request.getParameter("password");
		
		Action o1=new Action();
		
		if(o1.insert(" voter ","(`user_name`,`dob`,`voterid`,`cetegory`,`gender`,`password`)",  
				"( '" + votername +"','"+ dob +"','" + voterid + "','"+ cetegory +"','"+ gender +"','"+ pass +"')"))
		{
			System.out.println("inserted");
		}
		else
		{
			System.out.println(" not inserted");
		}
	}

}
