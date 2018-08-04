package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PLogin extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	boolean flag=false;
	HttpSession session=request.getSession();
	PrintWriter out = response.getWriter();
	String user=request.getParameter("t1");
	String pass=request.getParameter("t2");
	try{
		String input[] = {user,pass};
		String msg = DBCon.plogin(input);
		if(msg.equals("Professor")){
			session.setAttribute("user",user);
			RequestDispatcher rd=request.getRequestDispatcher("ProfessorScreen.jsp?t1=Welcome "+user);
			rd.forward(request, response);
		}
		else if(msg.equals("Advisor")){
			session.setAttribute("user",user);
			RequestDispatcher rd=request.getRequestDispatcher("AdvisorScreen.jsp?t1=Welcome "+user);
			rd.forward(request, response);
		}
		else{
			response.sendRedirect("PLogin.jsp?t1=Invalid User");
		}

	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
