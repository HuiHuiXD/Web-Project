<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head lang="en">
    <meta charset="UTF-8">
    <title>注册界面</title>
    <style>
         body{
             margin: 0;
             padding: 0;
             list-style: none;

            background-repeat: space;
         }
         *{
                      background-image:url("images/meihao.jpg") ;}
         h1{
             text-align: center;
         }
        .register{
            float: right;
            width:360px;
            height: 500px;

            margin-right: 350px;
            margin-top: 210px;
            opacity: 0.8;
        }
        .input1{
            width: 250px;
            height: 25px;
            line-height: 28px;
            font-size: 16px;
            border:2px solid #ffffff;
        }

        .font{
            font-size: 18px;
        }
        .button{
            width: 66px;
            height: 40px;
            font-size: 18px;
            text-align: center;
        }

    </style>
</head>
<body>

<%request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
%>
<div class="register">
    <h1>欢迎注册PlayU</h1>
<form action="RegisterServlet" name="form" method="post">
        <tr>
            <td><b class="font">用&nbsp;户&nbsp;名&nbsp;&nbsp;：</td>
            <td><input type="text" name="u_name" class="input1"></td>
        </tr><br/><br/>
        <tr>
            <td><b class="font">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;：</td>
            <td><input type="password" name="u_password" class="input1"></td>
        </tr><br/><br/>
         <tr>
            <td><b class="font">确认密码：</b></td>
            <td><input type="password" name="u_password2" class="input1"></td>
        </tr><br/><br/>
        <tr>
        <tr>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <td><input type="submit" value="注册" class="button"></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <td><input type="reset" value="重置" class="button"></td>
        </tr>

    <br />
    <a href="login.jsp">注册过了，点击登陆</a>
</form>
</div>
</body>
</html>
