<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%@ page import="project38.api.utils.ApiUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = RequestUtils.getScheme(request) + "://" + "m." + request.getServerName().replace("m.", "").replace("www.", "");
    String pcHostName = RequestUtils.getScheme(request) + "://" + "www." + request.getServerName().replace("m.", "").replace("www.", "");
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1,  user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${resPath}app/css/init.css?v=20170811"/>
    <link rel="stylesheet" href="${resPath}app/css/main.css?v=20170811"/>
    <title>${data.webTitle}</title>
    <script>if (window.top !== window.self) {top.location.href = "<%=basePath%>";}</script>
    <script src="${commonResPath}js/mobile-detect.min.js"></script>
    <script>
        var md = new MobileDetect(window.navigator.userAgent);
        if (!md.mobile()) {
            window.location.href = "<%=pcHostName%>/app.html" + "<c:if test="${not empty param.p}">/?p=${param.p}</c:if>";
        }

        if (!window.navigator.cookieEnabled) {
            alert("请检查您的浏览器是否禁用了COOKIE");
        }
    </script>
</head>
<body>
<div class="yd_head clearfix">
    <a href="javascript:void(0)" class="left logo">
        <img src="${basePath}images/${data.logoImageId}.png" alt="${data.webTitle}">
    </a>
    <div class="right clearfix yd_head_rt">
        <a href="${data.androidURL}" class="left" style="color:#8fc31f; border: 1px solid #8fc31f;" target="_blank">
            <img src="${resPath}app/imgaes/yind_09.png" class="img_q"/>
            <img src="${resPath}app/imgaes/yind_099.png" class="img_h"/>
            安卓下载
        </a>
        <a href="${data.iosURL}" class="left" style="color:#e73030;border: 1px solid #e73030;" target="_blank">
            <img src="${resPath}app/imgaes/yind_088.png" class="img_q"/>
            <img src="${resPath}app/imgaes/yind_08.png" class="img_h"/>
            iOS下载
        </a>
    </div>
</div>
<div class="yd_banner">
    <a href="javascript:void(0)">
        <img src="${resPath}app/imgaes/yind_14.png"/>
    </a>
</div>
<div class="main">
    <div class="yd1 clearfix">
        <a href="<%=mHostName%>" class="yd1_img left">
            <img src="<%=basePath%>images/${data.phoneIconId}.png"/>
        </a>
        <div class="yd1_rt">
            <p class="yd1_rt_tl">
                <a href="<%=basePath%>">${data.appName}</a>
                <span class="star"></span>
                <span class="star"></span>
                <span class="star"></span>
                <span class="star"></span>
                <span class="star"></span>
            </p>
            <div class="yd1_rt_text">
                更新日期：2017年07月21日<br/>
                版本：${data.iosVersion}<br/>
                大小：30.0MB<br/>
                语言：简体中文
            </div>
        </div>
    </div>
    <div class="yd2 clearfix">
        <a class="left" style="background: #fa3500;" href="${data.iosURL}" target="_blank">
            <img src="${resPath}app/imgaes/yind_26.png"/>
            IOS下载
        </a>
        <a class="right" style="background: #8fc31f;" href="${data.androidURL}" target="_blank">
            <img src="${resPath}app/imgaes/yind_28.png"/>
            安卓下载
        </a>
    </div>
    <div class="yd3">
        <a href="<%=basePath%>">WAP继续访问</a>
    </div>
</div>
<img src="${resPath}app/imgaes/img_01.jpg" style="width: 100%;vertical-align: middle;margin-bottom: 15px;"/>
<img src="${resPath}app/imgaes/img_03.jpg" style="width: 100%;vertical-align: middle;margin-bottom: 15px;"/>
<div class="pl_tl">
    <div class="pl_tl_main">
        用户评价<span>USER EVALUATION</span>
    </div>
</div>
<ul class="pinglun">
    <li>
        <p class="pj_con">
            特别好
        </p>
        <p class="pj_per">
            评论人：<span>小二的毛巾</span>
        </p>
        <p>
            喜欢玩彩票，推荐大家使用，无意间发现这个好用，开奖和投注都
            随时随地可以查看
        </p>
    </li>
    <li>
        <p class="pj_con">
            特别好
        </p>
        <p class="pj_per">
            评论人：<span>小二的毛巾</span>
        </p>
        <p>
            喜欢玩彩票，推荐大家使用，无意间发现这个好用，开奖和投注都
            随时随地可以查看
        </p>
    </li>
    <li>
        <p class="pj_con">
            特别好
        </p>
        <p class="pj_per">
            评论人：<span>小二的毛巾</span>
        </p>
        <p>
            喜欢玩彩票，推荐大家使用，无意间发现这个好用，开奖和投注都
            随时随地可以查看
        </p>
    </li>
</ul>
<div class="footer">
    ${data.webBottom}
</div>
</body>
</html>