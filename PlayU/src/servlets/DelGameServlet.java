package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Game;

public class DelGameServlet extends HttpServlet {
	private static final long serialVersionUID = 2L;

	public DelGameServlet() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("g_id");
		DBO dbo = new DBO();
		Game game=new Game();
		game.setId(Integer.parseInt(id));
		if (dbo.delGame(game) > 0) {
			out.println("<script language='javascript'>");
			out.println("alert('删除成功！');");
			out.println("window.location.href='admin/manager.jsp';");
			out.println("</script>");
		} else {
			out.println("<script language='javascript'>");
			out.println("alert('删除失败！');");
			out.println("window.location.href='admin/manager.jsp';");
			out.println("</script>");
		}
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public void init() throws ServletException {

	}

}
