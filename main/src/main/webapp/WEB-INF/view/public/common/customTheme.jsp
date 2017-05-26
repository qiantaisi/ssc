<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%--自定义风格--%>
<c:if test="${not empty fengge_1}">
    <style>
        .layui-layer-popup .layui-layer-title,.xzqd,.game_name .box2_stage p span i.acti,.Betting,.Single,.list_ject ul li .Result p a.acti,.list_ject ul li .Result p a.acti:hover,.top{background:#${fengge_1}!important}
        .game_name .box2_stage p span i,.game_name .box1_name  p i,.Account p a.red{color:#${fengge_1}!important}
        .game_name .box2_stage p span{border:1px solid #${fengge_1}!important;}
        .game_name .box2_stage p span i.acti{color:#fff!important;}
    </style>
</c:if>
<c:if test="${not empty fengge_2}">
    <style>
        .Betting .tabs ul li,.top .nav h1{background:#${fengge_2}!important}
        .Betting .tabs ul li.acti{background:#fff!important}
    </style>
</c:if>