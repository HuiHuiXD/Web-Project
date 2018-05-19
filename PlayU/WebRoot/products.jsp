<%@ page language="java"
         import="java.util.*,util.DBO,bean.Game,util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PlayU</title>
<meta name="g_name" content="" />
<meta name="description" content="" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "top_nav", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

</head>
<%@include file="pagedesign/top.jsp" %>
<body>

<div id="templatemo_body_wrapper">
<div id="templatemo_wrapper">

	<div id="templatemo_header">
    	<div id="site_title"><h1>PlayU</h1></div>
        <div id="header_right">
        	<p>
	        <a href="#">账号中心</a> | <a href="#">愿望单</a> | <a href="#">好友</a> | <a href="#">关于PlayU</a> | <a href="#">联系我们</a></p>
            <p>
            	 <a href="cart.jsp"><b>查看购物车</b></a> 
			</p>
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_header -->
    
    <div id="templatemo_menubar">
    	<div id="top_nav" class="ddsmoothmenu">
            <ul>
                <li><a href="index.jsp" class="selected">首页</a></li>
                <li><a href="products.jsp">商城</a>
                    <ul>
                        <li><a href="#submenu1">第一人称</a></li>
                        <li><a href="#submenu2">动作</a></li>
                        <li><a href="#submenu3">角色扮演</a></li>
                        <li><a href="#submenu4">虚拟现实</a></li>
                        <li><a href="#submenu5">解密</a></li>
                  </ul>
                </li>
                <li><a href="about.html">社区</a>
                    <ul>
                        <li><a href="#submenu1">市场</a></li>
                        <li><a href="#submenu2">库存</a></li>
                        <li><a href="#submenu3">创意工坊</a></li>
                  </ul>
                </li>
                <li><a href="cart.jsp">联系我们</a></li>
                <li><a href="checkout.html">电子邮箱</a></li>
                <li><a href="contact.html"></a>客服热线</li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of ddsmoothmenu -->
        <div id="templatemo_search">
            <form action="SearchGNameServlet" method="get">
              <input type="text" value=" " name="g_name" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
              <input type="submit" name="Search" value=" " alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
            </form>
        </div>
    </div> <!-- END of templatemo_menubar -->
    
    <div id="templatemo_main">
    	<div id="sidebar" class="float_l">
        	<div class="sidebar_box"><span class="bottom"></span>
            	<h3>游戏分类</h3>   
                <div class="content"> 
                	<ul class="sidebar_list">
                    	<li class="first"><a href="#">第一人称射击</a></li>
                        <li><a href="#">动作</a></li>
                        <li><a href="#">冒险</a></li>
                        <li><a href="#">解迷</a></li>
                        <li><a href="#">多人在线</a></li>
                        <li><a href="#">即时战略</a></li>
                        <li><a href="#">恐怖惊悚</a></li>
                        <li><a href="#">虚拟现实</a></li>
                        <li><a href="#">抢先体验</a></li>
                        <li><a href="#">第三人称射击</a></li>
                        <li><a href="#">剧情丰富</a></li>
                        <li><a href="#">竞技</a></li>
                        <li><a href="#">模拟</a></li>
                        <li><a href="#">竞速</a></li>
                        <li class="last"><a href="#">Sed eget purus</a></li>
                    </ul>
                </div>
            </div>
            <div class="sidebar_box"><span class="bottom"></span>
            	<h3>Bestsellers </h3>   
                <div class="content"> 
                	<div class="bs_box">
                    	<a href="#"><img src="images/templatemo_image_01.jpg" alt="image" /></a>
                        <h4><a href="#">Donec nunc nisl</a></h4>
                        <p class="price">$10</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="images/templatemo_image_01.jpg" alt="image" /></a>
                        <h4><a href="#">Lorem ipsum dolor sit</a></h4>
                        <p class="price">$12</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="images/templatemo_image_01.jpg" alt="image" /></a>
                        <h4><a href="#">Phasellus ut dui</a></h4>
                        <p class="price">$20</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="images/templatemo_image_01.jpg" alt="image" /></a>
                        <h4><a href="#">Vestibulum ante</a></h4>
                        <p class="price">$8</p>
                        <div class="cleaner"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="content" class="float_r">
        	
            <script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
            <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
            <script type="text/javascript">
            $(window).load(function() {
                $('#slider').nivoSlider();
            });
            </script>
        	<h1>游戏商城</h1>
        	<%DBO dbo=new DBO();
        	List<Game> games =dbo.getGames(); 
        	for(int i=0;i<games.size();i++){
        	%>
            <div class="product_box">
	            <h3><%=games.get(i).getName() %></h3>
            	<a href="game_infor.jsp?g_id=0001"><img src="<%=games.get(i).getImg() %>" width="120px" height="160px" /></a>
                <p><%=games.get(i).getType() %></p>
                <p class="product_price">$ <%=games.get(i).getPrice() %></p>
                <a href="AddCartServlet?g_id=<%=games.get(i).getId()%>" class="addtocart"></a>
                <a href="game_infor.jsp?g_id=<%=games.get(i).getId()%>" class="detail"></a>
            </div>    
            <%} %>    	
            <div class="product_box">
            	<h3>传送门2</h3>
            	<a href="game_infor.jsp?g_id=0002"><img src="images/02.jpg" width="120px" height="160px"/></a>
                <p>"It's been a loooong time." </p>
              <p class="product_price">$ 20</p>
                <a href="AddCartServlet?g_id=0002" class="addtocart"></a>
                <a href="game_infor.jsp?g_id=0002" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<h3>巫师3:狂猎</h3>
            	<a href="game_infor.jsp?g_id=0003"><img src="images/03.jpg" width="120px" height="160px" /></a>
                <p>一起来打昆特牌吧！</p>
              <p class="product_price">$ 60</p>
                <a href="AddCartServlet?g_id=0003" class="addtocart"></a>
                <a href="game_infor.jsp?g_id=0003" class="detail"></a>
            </div>   
               <div class="product_box no_margin_right">
            	<h3>巫师3:狂猎</h3>
            	<a href="game_infor.jsp?g_id=0003"><img src="images/03.jpg" width="120px" height="160px" /></a>
                <p>一起来打昆特牌吧！</p>
              <p class="product_price">$ 60</p>
                <a href="AddCartServlet?g_id=0003" class="addtocart"></a>
                <a href="game_infor.jsp?g_id=0003" class="detail"></a>
            </div>  
            <div class="cleaner"></div>     	
        </div> 
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_main -->
    
    <div id="templatemo_footer">
    	<p><a href="#">Home</a> | <a href="#">Products</a> | <a href="#">About</a> | <a href="#">FAQs</a> | <a href="#">Checkout</a> | <a href="#">Contact Us</a>
		</p>

    	Copyright 2017 <a href="#">PlayU</a> </div>
    
</div> <!-- END of templatemo_wrapper -->
</div> <!-- END of templatemo_body_wrapper -->

</body>
</html>