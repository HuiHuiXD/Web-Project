package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.jspsmart.upload.*;

import util.*;
import bean.Game;

@SuppressWarnings("serial")
public class AddGameServlet extends HttpServlet {

	public AddGameServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		SmartUpload su = new SmartUpload();
		su.initialize(getServletConfig(), request, response);
		su.setMaxFileSize(1024 * 1024 * 10);
		su.setAllowedFilesList("gif,GIF,JPG,jpg,txt,TXT");
		DBO dbo = new DBO();
		Game game = new Game();
		try {
			su.upload();
			File file = su.getFiles().getFile(0);
			File file2 = su.getFiles().getFile(1);
			if (!file.isMissing()) {
				Request req = su.getRequest();
				game.setType(req.getParameter("type"));
				game.setId(Integer.parseInt(req.getParameter("id")));
				game.setName(req.getParameter("name"));
				game.setPrice(Double.parseDouble(req.getParameter("price")));
				game.setImg("images/" + file.getFileName());
				game.setMsg("images/" + file2.getFileName());
				dbo.addGame(game);
				String path = this.getServletContext().getRealPath("/images");
				System.out.println(path);
				String filePath = "images/" + file.getFileName();
				file.saveAs(this.getServletContext().getRealPath(filePath));
				out.println("<script language='javascript'>");
				out.println("alert('Add Game Success!');");
				out.println("window.location.href='admin/add_game.jsp';");
				out.println("</script>");
			} else {
				out.println("<script language='javascript'>");
				out.println("alert('Add Game Fail!');");
				out.println("window.location.href='admin/add_game.jsp';");
				out.println("</script>");
			}
		} catch (Exception e) {
			out.println("<script language='javascript'>");
			out.println("alert('Add Game Fail!');");
			out.println("window.location.href='admin/add_game.jsp';");
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
