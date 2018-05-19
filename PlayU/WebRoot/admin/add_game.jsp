<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>ADD BOOK PAGE</title>
    <style type="text/css">
        span{
            font-size: 13px;
            color: red;
            display: inline;
        }
    </style>

</head>

<body>
<span>${trip }</span><br>
添加游戏<br>
<s:form action = "saveGame">

    <s:textfield label = "编号" name = "id" />
    <s:textfield label = "名称" name = "name" />
    <s:textfield label = "类型" name = "type" />
    <s:textfield label = "价格" name = "price" />
    <s:textfield label = "图片" name = "img" />
    <s:textfield label = "简介" name = "msg" />
    <s:submit/>

</s:form>
</body>
</html>
