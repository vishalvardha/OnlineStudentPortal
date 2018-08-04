package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Register extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	String sid=request.getParameter("t1").trim();
	String sname=request.getParameter("t2").trim();
	String course=request.getParameter("t3").trim();
	String bdate=request.getParameter("t4").trim();
	String gender=request.getParameter("t5").trim();
	String contact=request.getParameter("t6").trim();
	String email=request.getParameter("t7").trim();
	String address=request.getParameter("t8").trim();
	String user=request.getParameter("t9").trim();
	String password=request.getParameter("t10").trim();
	try{
		java.util.Date dd = new java.util.Date(bdate.trim());
		java.sql.Date sdate = new java.sql.Date(dd.getTime());
		String input[]={sid,sname,course,sdate.toString(),gender,contact,email,address,user,password};
		String res = DBCon.register(input);
		if(res.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp?t1=Registration process completed");
			rd.forward(request, response);
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp?t1=Error in registration");
			rd.forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
}

}
