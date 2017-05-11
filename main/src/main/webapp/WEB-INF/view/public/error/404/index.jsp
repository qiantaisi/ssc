<%@ page import="java.util.Calendar" %>
<%@ page import="project38.api.result.CompanyShortNameResult" %>
<%@ page import="project38.api.utils.ApiUtils" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="org.apache.commons.logging.LogFactory" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";

    String resPath = basePath + "static/public/";
    request.setAttribute("resPath", resPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>404</title>
    <style type="text/css">blockquote,body,button,code,dd,div,dl,dt,em,fieldset,form,h1,h2,h3,h4,h5,h6,html,input,legend,li,ol,p,pre,td,textarea,th,ul{margin:0;padding:0}body{font-size:14px;font-family:Simsun,sans-serif;color:#333}fieldset,img{border:0 none}input,textarea{font-size:14px}textarea{resize:none}table{border-collapse:collapse;border-spacing:0}a{color:#003d7e}a,a:hover{text-decoration:none}h1,h2,h3,h4,h5,h6{font-family:"微软雅黑",Simsun}li,ol,ul{list-style:none outside none}dfn{font-style:normal}.fl{float:left}.fr{float:right}.org{background:#fa6200}.org:hover{background:#ff7c28}.green{background:#13b5b1}.green:hover{background:#2ce3de}.blue{background:#1aabee}.blue:hover{background:#3bc1ff}.w1000{width:750pt;margin:0 auto}.bg404{background:url(${resPath}error/404/images/bg.jpg) center top no-repeat;border-top:3px solid #fa6200}.header{height:75pt;line-height:75pt;vertical-align:middle;overflow:hidden}.header .logo{margin-top:20px}.btn{width:90pt;height:40px;line-height:40px;color:#fff;text-align:center;display:block;border-radius:5px;font-family:"微软雅黑"}.home{margin-top:30px}.main404{width:556px;height:21pc;margin:30px auto}.list_btn{width:6.6in;height:75pt;margin:0 auto}.list_btn li{float:left;margin-left:30px}.footer{height:90pt;background:url(${resPath}error/404/images/foot_bg.png) center top no-repeat;font-family:"微软雅黑";text-align:center;line-height:90pt;color:#999;padding-top:50px}</style>
    <script>
        // 防止被frame
        if (top.location != self.location) top.location = self.location;
    </script>
</head>
<body class="bg404">
<div class="w1000 header">
</div>
<div class="main404"><img class="logo" src="${resPath}error/404/images/404.png"></div>
<ul class="list_btn">
    <li><a href="<%=basePath%>" class="btn org">首页</a></li>
    <c:choose>
        <c:when test="${not empty kefuUrl}">
            <li><a href="${kefuUrl}" class="btn blue" target="_blank">在线客服</a></li>
        </c:when>
        <c:otherwise>
            <li><a href="#" class="btn blue">在线客服</a></li>
        </c:otherwise>
    </c:choose>
    <li><a href="<%=basePath%>ssc/index.html" class="btn org">购彩大厅</a></li>
    <li><a href="javascript:void(0)" onclick="history.go(-1)" class="btn org">返回上一页</a></li>
</ul>
<div class="footer">Copyright©<%=Calendar.getInstance().get(Calendar.YEAR)%> All Rights Reserved</div>
</body>
</html>