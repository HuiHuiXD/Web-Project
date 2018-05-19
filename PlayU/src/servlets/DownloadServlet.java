package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;


public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = -5904118168820538969L;

	public DownloadServlet() {
		super();
	}
	public void destroy() {
		super.destroy();
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		response.reset();  
		String id=request.getParameter("id");
		SmartUpload su = new SmartUpload();
		su.initialize(getServletConfig(), request, response);
		su.setContentDisposition(null);
		try {
			su.downloadFile("D:/dell/meworkspace/PlayU/WebRoot/images/"+id+".exe");
		} catch (SmartUploadException e) {
			out.println("<script language='javascript'>");
			out.println("alert('Caming Soon !!');");
			out.println("window.location.href='admin/add_game.jsp';");
			out.println("</script>");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
