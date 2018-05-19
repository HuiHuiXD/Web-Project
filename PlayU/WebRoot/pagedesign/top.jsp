<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/top.css">
  </head>
  
  <body>
	<%
		if (session.getAttribute("u_name") != null) {
	%><div class="top">
            <div class="top-l">嗨，欢迎来到PlayU &nbsp;&nbsp;<span><%=(String) session.getAttribute("u_name")%>，欢迎您！<a href="ExitServlet">安全退出</a></span></div>
            <div class="top-r"><span> <a href="index.jsp">回到首页</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                    href="order.jsp">我的订单</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="">客户服务</a></span></div>
        </div>
	
	
	<%
		} else {
	%>
	 <div class="top">
            <div class="top-l">嗨，欢迎来到PlayU &nbsp;&nbsp;&nbsp;&nbsp;<span><a href="login.jsp">请登陆</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="register.jsp">注册</a></span></div>
            <div class="top-r"><span> <a href="index.jsp">回到首页</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                    href="AddGoods.jsp">商品上传</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="">客户服务</a></span></div>
        </div>

	<%
		}
	%>

  </body>
</html>
