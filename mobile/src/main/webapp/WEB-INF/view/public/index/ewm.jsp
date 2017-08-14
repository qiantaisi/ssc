<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%@ page import="project38.api.utils.ApiUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = RequestUtils.getScheme(request) + "://" + "m." + request.getServerName().replace("www.", "");
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
    <title>下载中心</title>
    <style type="text/css">
        .tip{position:absolute;z-index:100;top:0;left:0;display:none}
    </style>
</head>
<body>
<div class="tip" id="tip">
    <img id="tip_id" width="100%" height="100%" src="${resPath}app/imgaes/android_tips.png">
</div>
</body>
<script language="JavaScript">function is_weixin(){var i=navigator.userAgent.toLowerCase();return"micromessenger"==i.match(/MicroMessenger/i)?!0:!1}function init(){document.getElementById("ios_l").href=ios_pc_url}var ios_img="${resPath}app/imgaes/ios_tips.png",android_tip="${resPath}app/imgaes/android_tips.png",ios_url="/app.html",ios_pc_url="/app.html",android_ulr="/app.html";/android/i.test(navigator.userAgent)?is_weixin()?(document.getElementById("tip_id").src=android_tip,document.getElementById("tip").style.display="block"):document.location.href=android_ulr:/ipad|iphone|mac/i.test(navigator.userAgent)?is_weixin()?(document.getElementById("tip_id").src=ios_img,document.getElementById("tip").style.display="block"):document.location.href=ios_url:document.location.href=ios_pc_url;</script>
</html>