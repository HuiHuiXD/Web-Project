package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.Manager;
import util.DBO;

public class ManagerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 8773605918975809229L;

	public ManagerLoginServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("m_name");
		String password = request.getParameter("m_password");
		HttpSession session = request.getSession();
		DBO dbo = new DBO();
		List<Manager> managers = dbo.getManagers();
		
		for (Manager manager : managers) {
			if (manager.getName().equals(name) && manager.getPassword().equals(password)) {
				session.setAttribute("m_name",name);
				session.setAttribute("m_password",password);
				out.println("<script language='javascript'>");
				out.println("alert('Login Success!');");
				out.println("window.location.href='./admin/manager_index.jsp';");
				out.println("</script>");
				break;
			} 
		}
			out.println("<script language='javascript'>");
			out.println("alert('Login Fail!');");
			out.println("window.location.href='./manager_login.jsp';");
			out.println("</script>");
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
	}

	public void init() throws ServletException {
	
	}

}
