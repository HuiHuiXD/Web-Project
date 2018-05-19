<%@ page language="java" import="java.util.*,bean.*,util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manage_edit.jsp' starting page</title>
    
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
        List<Manager> managers = dbo.getManagers(); 
    	out.print("<table border=1>");
		out.print("<tr><td>管理员ID</td><td>管理员名称</td><td>管理员密码</td></tr>");
		for(Manager manager:managers){
		out.print("<tr>");
		out.print("<td>"+manager.getId()+"</td>");
		out.print("<td>"+manager.getName()+"</td>");
		out.print("<td>"+manager.getPassword()+"</td>");
		out.print("<td><a href=admin/add_manager.jsp?id="+manager.getId()+">添加</a>&nbsp;&nbsp;");
		out.print("<a href=admin/del_manager.jsp?id="+manager.getId()+">删除</a></td>");
		out.print("</tr>");
  	}
		out.print("</table>");
		
		 %>
		 <%@ include file="../pagedesign/Footer.jsp" %>
  </body>
</html>
