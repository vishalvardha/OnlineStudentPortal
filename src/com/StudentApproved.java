package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StudentApproved extends HttpServlet {
public void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	boolean flag=false;
	HttpSession session=request.getSession();
	PrintWriter out = response.getWriter();
	String sid=request.getParameter("t1");
	try{
		String msg = DBCon.studentApproved(sid.trim());
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("Authentication.jsp");
			rd.forward(request, response);
		}
		else{
			response.sendRedirect("Authentication.jsp");
		}

	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
