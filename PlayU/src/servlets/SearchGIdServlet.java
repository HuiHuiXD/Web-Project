package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DBO;

public class SearchGIdServlet extends HttpServlet {
	private static final long serialVersionUID = -8962470927757177739L;

	public SearchGIdServlet() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("g_id");
		DBO dbo = new DBO();
		dbo.searchGame(id);
		out.println("<script language='javascript'>");
		out.println("window.location.href='Search_Result.jsp';");
		out.println("</script>");
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	public void init() throws ServletException {

	}

}
