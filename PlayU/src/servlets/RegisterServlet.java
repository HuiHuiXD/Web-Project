package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.User;
import util.DBO;

public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 182733467846269830L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("utf-8");
		if(request.getParameter("u_name")==""){
			out.println("<script language='javascript'>");
			out.println("alert('用户名不能为空！');");
			out.println("window.location.href='./register.jsp';");
			out.println("</script>");
		}
		if(request.getParameter("u_password")==""){
			out.println("<script language='javascript'>");
			out.println("alert('密码不能为空！');");
			out.println("window.location.href='./register.jsp';");
			out.println("</script>");
		}
		if (!request.getParameter("u_password").equals(request.getParameter("u_password2"))) {
			out.println("<script language='javascript'>");
			out.println("alert('您两次输入的密码不同！');");
			out.println("window.location.href='./register.jsp';");
			out.println("</script>");
		}
		DBO dbo = new DBO();
		User user = new User();
		String id = "" + dbo.getUsers().size() + 1;
		user.setId(id);
		user.setName(request.getParameter("u_name"));
		user.setPassword(request.getParameter("u_password"));
		if (dbo.addUser(user) != 0) {
			out.println("<script language='javascript'>");
			out.println("alert('恭喜你，注册 成功！');");
			out.println("window.location.href='./login.jsp';");
			out.println("</script>");
		} else {
			out.println("<script language='javascript'>");
			out.println("alert('用户名已存在！');");
			out.println("window.location.href='./register.jsp';");
			out.println("</script>");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
