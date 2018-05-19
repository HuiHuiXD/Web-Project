package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Filter implements javax.servlet.Filter {

	public void destroy() {

	}

	public void doFilter(ServletRequest arg0, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) arg0;
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		if (session.getAttribute("m_name") == null) {
			PrintWriter out = response.getWriter();
			out.print("<script language=javascript>");
			out.print("window.location.href('/PlayU/index.jsp')");
			out.print("</script>");
		} else {
			chain.doFilter(request, response);
		}

	}

	public void init(FilterConfig arg0) throws ServletException {

	}
}
