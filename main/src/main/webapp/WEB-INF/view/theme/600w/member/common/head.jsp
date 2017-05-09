<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="head">
    <img src="${resPath}member/images/hpn/ic1.png"/>
    <div>
        <h5><span>北京时间：<i id="bjTime" data-time="<%=(new Date()).getTime()%>"></i></span></h5>
        <p>您的贵宾网址：${userSession.privateUrl}</p>
    </div>
</div>