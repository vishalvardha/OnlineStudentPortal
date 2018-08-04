package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StudentSecurity extends HttpServlet {
public void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	boolean flag=false;
	HttpSession session=request.getSession();
	PrintWriter out = response.getWriter();
	String sid=request.getParameter("t1").trim();
	String user=request.getParameter("t2").trim();
	String pass=request.getParameter("t3").trim();
	try{
		String msg = DBCon.studentSecurity(sid,user,pass);
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("Security.jsp");
			rd.forward(request, response);
		}
		else{
			response.sendRedirect("Security.jsp");
		}

	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
