package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.CartData;

public class CartDelServlet extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public CartDelServlet() {
		super();
	}

	/**
		 * Destruction of the servlet. <br>
		 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
		 * The doGet method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to get.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session= request.getSession();
		String g_id = request.getParameter("g_id");
		String u_id=(String)session.getAttribute("u_name");
		CartData dbo = new CartData();	
		if (dbo.delCart(dbo.getId(g_id, u_id)) > 0) {
			out.println("<script language='javascript'>");
			out.println("alert('删除成功！');");
			out.println("window.location.href='cart.jsp';");
			out.println("</script>");
		} else {
			out.println("<script language='javascript'>");
			out.println("alert('删除失败！');");
			out.println("window.location.href='cart.jsp';");
			out.println("</script>");
		}
		out.flush();
		out.close();
	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request,response);
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
