<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="type1">
    <div class="pict">
        <img src="${resPath}img/ico202.png" alt="">
    </div>
    <div class="step">
        <ul>
            <li><a href="<%=basePath%>ssc/register.html"><img src="${resPath}img/ico203.png" alt="">免费注册</a></li>
            <li><a href="javascript:void(0)" onclick="openHyzx('zhcz/yhzz')"><img src="${resPath}img/ico204.png" alt="">账户充值</a></li>
            <li><a href="javascript:void(0)" onclick="openGcdt()"><img src="${resPath}img/ico205.png" alt="">购买彩票</a></li>
            <li><img src="${resPath}img/ico206.png" alt="">中大奖</li>
            <li><a href="javascript:void(0)" onclick="openHyzx('withdraw')"><img src="${resPath}img/ico207.png" alt="">提款</a></li>
        </ul>
        <div class="bor_box">
            <p><span></span></p>
            <p><span></span></p>
            <p><span></span></p>
            <p><span></span></p>
            <p><span></span></p>
        </div>
    </div>
</div><!--五步-->