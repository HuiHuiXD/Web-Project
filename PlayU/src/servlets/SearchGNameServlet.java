package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Game;
import util.DBO;

public class SearchGNameServlet extends HttpServlet {
	private static final long serialVersionUID = 3740567163220215105L;
	public SearchGNameServlet() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();	
		String name = request.getParameter("g_name");
		DBO dbo = new DBO();
		List<Game> games=dbo.searchGames(name);
		out.println("   <link rel='Stylesheet' type='text/css' href='../css/cart.css'/>");
		out.println("   <link rel='Stylesheet' type='text/css' href='../css/cartfont.css'/>");
		out.println("   <link rel='Stylesheet' type='text/css' href='../css/cartfont2.css'/>");
		out.println("   <link rel='Stylesheet' type='text/css' href='../css/cartfont3.css'/>");
		out.println("   <link rel='Stylesheet' type='text/css' href='../css/cart.css'/>");
		out.print("<table border=1 style='word-break: keep-all;'>");
		for (int i = 0; i < games.size(); i++) {
			out.print("<tr>");
			out.print("<td><img src=" + games.get(i).getImg() + " width=230 height=100></td>");
			out.print("<td>" + games.get(i).getType() + "</td>");
			out.print("<td>" + games.get(i).getId() + "</td>");
			out.print("<td >" + games.get(i).getName() + "</td>");
			out.print("<td>" + games.get(i).getPrice() + "</td>");
			out.print("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=game_infor.jsp?g_id=" + games.get(i).getId() + ">详情</a><br/>");
			out.print("<a href=AddCartServlet?g_id=" + games.get(i).getId() + ">+购物车</a><br/>");
			out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=pay.jsp?g_id=" + games.get(i).getId() + ">购买</a></td>");
		
		}
				out.print("</tr>");
				out.print("<p align='center'><a href=index.jsp>返回首页</a></p>");
	  out.flush();
	  out.close();
}	
	// out.println("<script language='javascript'>");
	// out.println("window.location.href='search_result.jsp';");
	// out.println("</script>");


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public void init() throws ServletException {

	}

}
