package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import bean.User;
import util.DBO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 5211524153383577052L;

	public LoginServlet() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	    String checkcode = request.getParameter("Checkcode");  
        String pickcode = (String) request.getSession().getAttribute("piccode"); 
		String name = request.getParameter("u_name");
		HttpSession session = request.getSession();
		String password = request.getParameter("u_password");
		DBO dbo = new DBO();
		List<User> users = dbo.getUsers();
		
		for (User user : users) {
			if (user.getName().equals(name) && user.getPassword().equals(password)&&checkcode==pickcode) {
				session.setAttribute("u_name",name);
				session.setAttribute("u_password",password);
				out.println("<script language='javascript'>");
				out.println("alert('Login Success!');");
				out.println("window.location.href='./index.jsp';");
				out.println("</script>");
				break;
			} 
		}
			out.println("<script language='javascript'>");
			out.println("alert('Login Fail!');");
			out.println("window.location.href='./index.jsp';");
			out.println("</script>");
		

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
		}
	public void init() throws ServletException {
		// Put your code here
	}

}
