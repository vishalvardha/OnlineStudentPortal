package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class ProfessorRegister extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	String pid=request.getParameter("t1").trim();
	String pname=request.getParameter("t2").trim();
	String course=request.getParameter("t3").trim();
	String contact=request.getParameter("t4").trim();
	String email=request.getParameter("t5").trim();
	String user=request.getParameter("t6").trim();
	String password=request.getParameter("t7").trim();
	String usertype=request.getParameter("t8").trim();
	try{
		String input[]={pid,pname,course,contact,email,user,password,usertype};
		String res = DBCon.professorRegister(input);
		if(res.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("Permission.jsp?t1=Professor registration process completed");
			rd.forward(request, response);
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("Permission.jsp?t1=Error in registration");
			rd.forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
}

}
