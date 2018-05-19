<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'games.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/Goods.css">
	

  </head>
  
  <body>
 
	 <div class="top">
            <div class="top-l">嗨，欢迎来到新生报到 &nbsp;&nbsp;&nbsp;&nbsp;<span><a href="denglu.jsp">请登陆</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="zhuce.jsp">免费注册</a></span></div>
            <div class="top-r"><span> <a href="">我的订单</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                    href="AddGoods.jsp">商品上传</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="">客户服务</a></span></div>
        </div>
    <div class="body1">
        <h1>轮滑精品</h1>
        <ul class="body11">
            <li>
                <a href=""><header>轮滑鞋</header></a>
                <ul class="cont" style="display:block;">
                    <li><div class="shose">
                        <img src="image/shose.png" alt="图片加载失败" title="">
                        <span>￥1999</span>
                        <div class="describe">
                      	
                        </div>
                        <input type="submit" value="加入购物车">
                        <input type="submit" value="立即购买">
                    </div>
                    <li><div class="shose">
                        <img src="image/shose.png" alt="图片加载失败" title="">
                        <span>￥1999</span>
                        <div class="describe">
                      	
                        </div>
                        <input type="submit" value="加入购物车">
                        <input type="submit" value="立即购买">
                    </div>
                    <li><div class="shose">
                        <img src="image/shose.png" alt="图片加载失败" title="">
                        <span>￥1999</span>
                        <div class="describe">
                      	
                        </div>
                        <input type="submit" value="加入购物车">
                        <input type="submit" value="立即购买">
                    </div>
                    <li><div class="shose">
                        <img src="image/shose.png" alt="图片加载失败" title="">
                        <span>￥1999</span>
                        <div class="describe">
                      	
                        </div>
                        <input type="submit" value="加入购物车">
                        <input type="submit" value="立即购买">
                    </div>
                </ul>
            </li>
            <li>
                <a href=""><header>轮子</header></a>
                <ul class="cont">
                    <li><a href="#">这是另一篇文章内容</a></li>
                    <li><a href="#">这是另一篇文章内容</a></li>
                    <li><a href="#">这是另一篇文章内容</a></li>
                    <li><a href="#">这是另一篇文章内容</a></li>
                    <li><a href="#">这是另一篇文章内容</a></li>
                </ul>
            </li>
            <li>
                <a href=""><header>轮滑包</header></a>
                <ul class="cont">
                    <li><a href="#">第三篇内容</a></li>
                    <li><img src="img/movie.jpg" alt=""/></li>
                </ul>
            </li>
            <li>
                <a href=""><header>护具</header></a>
                <ul class="cont">
                    <li><a href="#">这是另一篇文章内容</a></li>
                    <li><a href="#">这是另一篇文章内容</a></li>
                    <li><a href="#">这是另一篇文章内容</a></li>
                    <li><a href="#">这是另一篇文章内容</a></li>
                    <li><a href="#">这是另一篇文章内容</a></li>
                </ul>
            </li>
        </ul>

    </div>
  </body>
</html>
