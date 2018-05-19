<%@ page language="java"
         import="java.util.*,util.DBO,bean.Game,util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>PlayU:Cart</title>
<link href="css/cart.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Flash Registration Form  Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!--web-fonts-->
<link href='css/cartfont.css' rel='stylesheet' type='text/css'>
</head>
<link href='css/cartfont2.css' rel='stylesheet' type='text/css'>
<link href='css/cortfont3.css' rel='stylesheet' type='text/css'>
<script src="js/cart.js"></script>
<%@include file="../pagedesign/top.jsp" %>
<body>
	<%
		String name=request.getParameter("g_name");
		DBO dbo=new DBO();
		List<Game> games = dbo.searchGames(name);
	%>
	<!---header--->
	<div class="header">
		<h1>查询结果</h1>
	</div>
	<!---header--->
	<!---main--->
	<div class="main">
		<div class="main-section">

			<%
				for (int i = 0; i < games.size(); i++) {
			%>

			<div class="product-section">
				<div class=<%=i %>>
					<div class="product-top">
						<div class="product-left">
							<img src="<%=games.get(i).getImg()%>">
						</div>
						<div class="product-right">
							<h2><%=games.get(i).getName()%></h2>
							<ul class="size">
								<li><%=games.get(i).getType()%></li>
								<li>ID:<%=games.get(i).getId()%>
								</li>
							</ul>
						</div>
			
					</div>
			
				<div class="product-right1">
					<p>
						$&nbsp;<%=games.get(i).getPrice()%>
					<p>
					<div class="close"><a href="CartDelServlet?g_id=<%=games.get(i).getId() %>"><img src="">&nbsp;</a></div>
				</div>
				<div class="product-bottom2">			
				<a href="game_infor.jsp?g_id=<%=games.get(i).getId() %>">详情</a>
				<a href="pay.jsp">购买</a>
				<a href="CartServlet?g_id=<%=games.get(i).getId() %>">+购物车</a>
				<div class="clear"></div>
			</div>
				
				<div class="clear"></div>
			</div>
			</div>
		<br/>
			<%
			}
			%>

			
		</div>
		<div class="footer">
			<p>
				copy 2016 Products In Cart . All rights reserved | Design by <a
					href="index.jsp">PlayU</a>
			</p>
		</div>
	</div>
	<!---main--->
</body>
</html>
