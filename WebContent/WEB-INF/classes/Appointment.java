package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Appointment extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	String professor=request.getParameter("t1").trim();
	String date=request.getParameter("t2").trim();
	String desc=request.getParameter("t3").trim();
	HttpSession session = request.getSession();
	try{
		String user = session.getAttribute("user").toString();
		java.util.Date dd = new java.util.Date(date.trim());
		java.sql.Timestamp time = new java.sql.Timestamp(dd.getTime());
		String input[]={user,professor,time.toString(),desc};
		String res = DBCon.appointment(input);
		if(res.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("StudentScreen.jsp?t1=Appointment request sent to professor");
			rd.forward(request, response);
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("StudentScreen.jsp?t1=Error in sending appointment request");
			rd.forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
}

}
