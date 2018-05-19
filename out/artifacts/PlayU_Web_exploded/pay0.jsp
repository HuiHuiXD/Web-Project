<%@ page language="java" import="java.util.*,util.*,bean.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>PlayU:Pay</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/pay.css">
</head>

<body style="float:center;text-align:center">
<%
    String id=request.getParameter("g_id");
    String price=request.getParameter("g_price");
 %>
<div>
	<form>
		<div class="product-middle2">
			<select class="sel">
				<option value="">支付宝</option>
				<option value="">微信</option>
				<option value="">财付通</option>
				<option value="">VISA</option>
				<option value="">银联</option>
			</select>
		
		</div>
		<%DBO dbo =new DBO();
		Game game= dbo.searchGame(id);		
		 %>
		<div class="product_box">
	            	<div class="product-bottom">
				<h3>
					<%=game.getName() %></span>
				</h3>
				<div class="clear"></div>
			</div>	
            	<a href="game_infor.jsp?g_id=0001"><img src="<%=game.getImg() %>" width="120px" height="160px" /></a>
                <p><%=game.getType() %></p>
                <p class="product_price">$ <%=game.getPrice() %>></p>
                <a href="AddCartServlet?g_id=0001" class="addtocart"></a>
                <a href="game_infor.jsp?g_id=0001" class="detail"></a>
            </div>  
		<div class="product-bottom">
				<h3>
					summary : <span> $&nbsp;&nbsp;<%=game.getPrice() %></span>
				</h3>
				<a href="AddOrder?g_id=<%=id %>">Checkout</a>
				<div class="clear"></div>
			</div>		
	</form>
	</div>
</body>
</html>