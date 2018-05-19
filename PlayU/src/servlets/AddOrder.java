package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import util.OrderData;

public class AddOrder extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 22222L;

	/**
		 * Constructor of the object.
		 */
	public AddOrder() {
		super();
	}

	/**
		 * Destruction of the servlet. <br>
		 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		String u_id=(String) session.getAttribute("u_name");
		if(u_id==null){
			out.println("<script language='javascript'>");
			out.println("alert('请先登陆！');");
			out.println("window.location.href='login.jsp';");
			out.println("</script>");
		}
		String g_id=request.getParameter("g_id");
		OrderData cart=new OrderData();
		String c_id=cart.getId(g_id, u_id);
		if(c_id==null&&cart.add(g_id, u_id)!=-1){	
    	out.println("<script language='javascript'>");
    	out.println("alert('购买成功！');");
	    out.println("window.history.go(-1);");
	    out.println("</script>");
	    }else{
	    	out.println("<script language='javascript'>");
	    	out.println("alert('您已拥有此游戏！');");
		    out.println("window.history.go(-1);");
		    out.println("</script>");}
	}

	public void init() throws ServletException {
		
	}

}
