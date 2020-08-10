package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Up_voter extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String id=request.getParameter("id");
		String user_name=request.getParameter("name");
		String dob=request.getParameter("dob");
		String voterid=request.getParameter("voterid");
		String cetegory=request.getParameter("cet");
		String gender=request.getParameter("gender");
		String password=request.getParameter("password");
		String status=request.getParameter("status");
		
		Action o1=new Action();
		
		String fields = "`user_name`='" + user_name + "',`dob`='"
		+ dob + "',`voterid`='" + voterid
		+ "',`cetegory`='" + cetegory + "',`gender`='" + gender + "'," +
				"`password`='" + password + "',`status`='"+status+"'";
			String condi = " WHERE `id`='" + id + "'";

			if (o1.updatedata("voter", condi, fields)) {
				out.print("<h1 style='color:green'>update successfull </h1>");
				} else {
					out.print("<h1 style='color:red'>error</h1>");

}
		
	}

}
