package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RegisterClass extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	boolean flag=false;
	HttpSession session=request.getSession();
	PrintWriter out = response.getWriter();
	String topic=request.getParameter("t1");
	String time=request.getParameter("t2");
	try{
		String user = session.getAttribute("user").toString();
		String subjects[] = (String[])session.getAttribute("subjects");
		StringBuilder sb = new StringBuilder();
		for(int i=0;i<subjects.length;i++){
			sb.append(subjects[i]+",");
		}
		if(sb.length() > 0)
			sb.deleteCharAt(sb.length()-1);
		String msg = DBCon.registerClass(user,sb.toString());
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("StudentScreen.jsp?t1=Class registration details added");
			rd.forward(request, response);
		}
		else{
			response.sendRedirect("StudentScreen.jsp?t1=Error in adding class registration details");
		}

	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
