<%@ page language="java"
	import="java.util.*,java.sql.*,bean.Game,util.DBO"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'edit_game.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/bus.css">

</head>

<body>
    <a href="admin/manager_index.jsp">回到管理员菜单</a>
	<%
		DBO dbo = new DBO();
		String id = request.getParameter("g_id");
		Game game = dbo.searchGame(id);
	%>
	<h3>游戏信息编辑</h3>
	<form action="UpdateGameServlet" method="post" enctype="multipart/form-data">
		游戏编号：<%=id%><br> <input type="hidden" name="g_id" value="<%=id%>">
		游戏类别： <input type="text" name="g_type" value="<%=game.getType()%>"><br>
		游戏名称： <input type="text" name="g_name" value="<%=game.getName()%>"><br>
		游戏图片： <input type="file" name="g_image"><br>
		游戏详情： <input type="file" name="g_msg"><br>
		游戏单价： <input type="text" name="g_price" value="<%=game.getPrice()%>"><br>
		<input type="submit" value="确定修改">
	</form>
	   <%@ include file="../pagedesign/Footer.jsp" %>
</body>
</html>
