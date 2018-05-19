<%@ page language="java"
	import="java.util.*,util.*,connection.*,bean.*,java.io.*"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'game_infor.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<!-- <link rel="stylesheet" type="text/css" href="css/bus.css"> -->


</head>

<body>
	<%
	response.setCharacterEncoding("utf-8");
		DBO dbo = new DBO();
		String id = request.getParameter("g_id");
		Game game = dbo.searchGame(id);
		%>		
	<p align="center">
		<img src="<%=game.getImg()%>"><br />
	</p>		
		<%
		request.setCharacterEncoding("utf-8");
		String msgpath = game.getMsg();
		File file = new File(this.getServletContext().getRealPath("/" + msgpath));
		 FileInputStream fis = new FileInputStream(file);
		InputStreamReader fr = new InputStreamReader(fis,"utf-8");
		BufferedReader br = new BufferedReader(fr);
		StringBuffer strB = new StringBuffer();
		String temp = null;
		out.print("<p align='center'>");
	
		while ((temp = br.readLine()) != null) {
			strB.append(temp);				
		}
		out.print("</p>");
		out.print(strB);

		br.close();
		fr.close();
	%>
<p align="center">
<a href="index.jsp">回到首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="pay.jsp?g_id=<%=game.getId() %>">购买</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="DownloadServlet?id=<%=game.getId()%>">下载</a>
</p>

</body>
</html>
