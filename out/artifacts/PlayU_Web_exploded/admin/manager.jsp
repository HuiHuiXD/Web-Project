<%@ page language="java"
	import="java.util.*,connection.*,util.*,bean.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>PlayU Manager</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/bus.css">

</head>

<body>

	<h1>PlayU Manager UI</h1>
	<a href="admin/manager_index.jsp">回到管理员菜单</a>&nbsp;&nbsp;
	<a href=admin/add_game.jsp>添加游戏</a>&nbsp;&nbsp;
    <a href=ExitServlet>退出</a>
	<p align="center">
		<%
			DBO dbo = new DBO();
			List<Game> games = dbo.getGames();//把所有游戏储存在games中；

			String spage = request.getParameter("page");
			int pageSize = 6;
			int maxPage;
			int currentPage;
			int count = 1;
			if (spage == null)
				currentPage = 1;
			else
				currentPage = Integer.parseInt(spage);
			maxPage = (int) Math.ceil(games.size() / 6.0);
			out.print("<table border=1>");
			for (int i = (currentPage - 1) * pageSize; i < games.size() && count <= pageSize; i++) {
				out.print("<tr>");
				out.print("<td><img src=" + games.get(i).getImg() + " width=230 height=100></td>");
				out.print("<td>" + games.get(i).getType() + "</td>");
				out.print("<td>" + games.get(i).getId() + "</td>");
				out.print("<td >" + games.get(i).getName() + "</td>");
				out.print("<td>" + games.get(i).getPrice() + "</td>");
				out.print("<td><a href=admin/edit_game.jsp?g_id=" + games.get(i).getId() + ">编辑</a><br/>");
				out.print("<a href=DelGameServlet?g_id=" + games.get(i).getId() + ">删除</a></td>");
				count++;

				if (i + 1 < games.size() && count <= pageSize) {
					i++;
					count++;
					out.print("<td><img src=" + games.get(i).getImg() + " width=230 height=100></td>");
					out.print("<td>" + games.get(i).getType() + "</td>");
					out.print("<td>" + games.get(i).getId() + "</td>");
					out.print("<td >" + games.get(i).getName() + "</td>");
					out.print("<td>" + games.get(i).getPrice() + "</td>");
					out.print("<td><a href=admin/edit_game.jsp?g_id=" + games.get(i).getId() + ">编辑</a><br/>");
					out.print("<a href=DelGameServlet?g_id=" + games.get(i).getId() + ">删除</a></td>");

				} else {
					out.print("<tr>");

					break;
				}
			}

			out.print("</table>");
			out.print("</br></br>");
			out.print("当前第" + currentPage + "页&nbsp;" + "共" + maxPage + "页&nbsp;");
			if (currentPage > 1) {
				out.print("<a href=admin/manager.jsp?page=1 style='text-decoration:none;'>首页</a>&nbsp;");
				out.print("<a href=admin/manager.jsp?page=" + (currentPage - 1) + " style='text-decoration:none;'>上一页</a>&nbsp;");
			}
			for (int i = 1; i <= maxPage; i++) {
				if (i == currentPage)
					out.print("<a href=admin/manager.jsp?page=" + i + "><b>" + i + "</b></a>&nbsp;");
				else
					out.print("<a href=admin/manager.jsp?page=" + i + " style='text-decoration:none;'>" + i + "</a>&nbsp;");
			}
			if (currentPage < maxPage) {
				out.print("<a class=\"a\" href=admin/manager.jsp?page=" + (currentPage + 1) + " style='text-decoration:none;'>下一页</a>&nbsp;");
				out.print("<a href=admin/manager.jsp?page=" + maxPage + " style='text-decoration:none;'>尾页</a>&nbsp;");
			}
		%>
	</p>
	  <%@ include file="../pagedesign/Footer.jsp" %>
</body>
</html>
