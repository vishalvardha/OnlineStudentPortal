package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Iterator;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
public class UpdateClass extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	boolean flag=false;
	String uname = null;String topic = null;String time = null;
	String file = null;
	byte b[]=null;
	PrintWriter out = response.getWriter();
	DiskFileItemFactory factory = new DiskFileItemFactory();
	factory.setSizeThreshold(10*1024*1024);
	factory.setRepository(new File("C:/usr"));
    ServletFileUpload upload = new ServletFileUpload(factory);
	upload.setSizeMax(10*1024*1024);
	try{
		List fileItems = upload.parseRequest(request);
		Iterator itr = fileItems.iterator();
		while(itr.hasNext()) {
			FileItem item = (FileItem) itr.next();
			if(item.isFormField()){
				String name = item.getFieldName();
		        String value = item.getString();
				if(name.equals("t1")){
					topic=value;
				}
				if(name.equals("t2")){
					time=value;
				}
			}else{
				file = item.getName();
				InputStream in=item.getInputStream();
				b = new byte[in.available()];
				in.read(b,0,b.length);
			}
		}
		HttpSession session=request.getSession();
		String user=session.getAttribute("user").toString();
		String input[]={user,topic,time};
		String res = DBCon.updateClass(input,file,b);
		if(res.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("ProfessorScreen.jsp?t1=Material uploaded");
			rd.forward(request, response);
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("ProfessorScreen.jsp?t1=Error in material uploading");
			rd.forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
}

}
