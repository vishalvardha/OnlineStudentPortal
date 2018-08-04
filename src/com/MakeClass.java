package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class MakeClass extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	String cname=request.getParameter("t1").trim();
	String course=request.getParameter("t2").trim();
	String date=request.getParameter("t3").trim();
	String desc=request.getParameter("t4").trim();
	HttpSession session = request.getSession();
	try{
		String user = session.getAttribute("user").toString();
		java.util.Date dd = new java.util.Date(date.trim());
		java.sql.Timestamp time = new java.sql.Timestamp(dd.getTime());
		String input[]={cname,course,time.toString(),desc,user};
		String res = DBCon.makeClass(input);
		if(res.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("ProfessorScreen.jsp?t1=New class details added");
			rd.forward(request, response);
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("ProfessorScreen.jsp?t1=Error in adding class details");
			rd.forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
}

}
