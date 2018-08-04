package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Approve extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	String student=request.getParameter("t1").trim();
	String subjects=request.getParameter("t2").trim();
	String comments=request.getParameter("t3").trim();
	String status=request.getParameter("t4").trim();
	try{
		String input[]={student,subjects,comments,status};
		String res = DBCon.approve(input);
		if(res.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("AdvisorScreen.jsp?t1=Student Request is "+status);
			rd.forward(request, response);
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("AdvisorScreen.jsp?t1=Internal Error");
			rd.forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
}

}
