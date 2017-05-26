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
        .cl-102 .cl-103,.buttons-tab .button.active span,.page .bar-nav{background:#${fengge_1}!important}
        .gonggao_title,.cl-801,.cl-306 .list-block ul li a .item-inner .cl-307:first-child span:last-child,.cl-330 a,.edit_color,.cl-952,.cl-318 .info,.glxq{color:#${fengge_1}!important}
        .cl-102 .cl-103.yhkgl_moren{background-color:#009df7!important}
        <%--.eveb_nav_sub .on,.game_name .box2_stage p span{border:1px solid #${fengge_1}!important;}--%>
        <%--.eveb_nav_sub .on,.game_name .box2_stage p span i.acti{color:#fff!important;}--%>
        <%--.eveb_nav_sub .on a{border-top:1px #${fengge_1} solid!important;}--%>
        <%--.eveb_nav_sub ul{border-bottom:1px #${fengge_1} solid!important;}--%>
    </style>
</c:if>
<c:if test="${not empty fengge_2}">
    <style>
        <%--.head div h5,.Betting .tabs ul li,.top .nav h1{background:#${fengge_2}!important}--%>
        <%--.jf_box .url a,.eveb_form label.error,.eveb_transfer_box .center_wallet .money,.eveb_transfer_box .wallet_list li p{color:#${fengge_2}!important}--%>
        <%--.Betting .tabs ul li.acti{background:#fff!important}--%>
        <%--.button_1, .button_1:link, .button_1:visited{border:1px solid #${fengge_2}!important;}--%>
    </style>
</c:if>