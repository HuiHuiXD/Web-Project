<%@ page language="java" import="java.util.*,bean.*,util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manage_user.jsp' starting page</title>
    
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
        List<User> users = dbo.getUsers();
    	out.print("<table border=1>");
		out.print("<tr><td>用户ID</td><td>用户名称</td><td>用户密码</td></tr>");
		for(User user :users){
		out.print("<tr>");
		out.print("<td>"+ user.getId()+"</td>");
		out.print("<td>"+ user.getName()+"</td>");
		out.print("<td>"+ user.getPassword()+"</td>");
		out.print("<td><a href=admin/del_user.jsp?id="+ user.getId()+">删除</a></td>");
		out.print("</tr>");
  	}
		out.print("</table>");
		
		 %>
		 <%@ include file="../pagedesign/Footer.jsp" %>
  </body>
</html>
