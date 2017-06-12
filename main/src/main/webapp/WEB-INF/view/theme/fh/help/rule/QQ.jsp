<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        #inbox{
            margin:auto;
            width:960px;
            margin-bottom: 30px;
        }
        body{
            background:#FFFFF0;
        }
    </style>
</head>
<body>
<div id="inbox">
    <h1 style="text-align: center;">（代理QQ）</h1>
    <h1 style="text-align: center; color: red;"><a href=tencent://message/?uin=97185551&Site=在线客服&Menu=yes>点击此链接<span style="color: red">添加 qq</span>:97185551以客服取得联系</a></h1>
    <h1>1、如果您还未登录 QQ ，点击此链接后将会自动帮您启动您的 QQ。</h1>  <h1>2、如果您的QQ是已经在线的了，点击此链接后，按照提示接着选择方可。</h1>
</div>
</body>
</html>