package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.OutputStream;
public class Download extends HttpServlet {
public void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	try{
		String s1 = request.getParameter("t1").trim();
		byte b[] = DBCon.download(s1);
		response.setContentType("application/octet-stream");
		response.setContentLength((int)b.length);
        response.setHeader("Content-Disposition","attachment; filename=\""+s1+"\"");
		OutputStream os = response.getOutputStream();
		os.write(b,0,b.length);
		os.flush();
		os.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
