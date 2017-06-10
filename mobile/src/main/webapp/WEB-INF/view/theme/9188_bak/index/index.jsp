<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String u = request.getParameter("u");
    if (StringUtils.isBlank(u)) {
        u = basePath + "main.html";
    }
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script src="${resPath}js/mobile-detect.min.js"></script>
    <script>
        var md = new MobileDetect(window.navigator.userAgent);
        if (!md.mobile()) {
            window.location.href = "<%=basePath%>pc.html"
        }

        if (!window.navigator.cookieEnabled) {
            alert("请检查您的浏览器是否禁用了COOKIE");
        }
    </script>
    <title>${webTitle}</title>
    <meta name="keywords" content="${webKeywords}"/>
    <meta name="description" content="${webDescription}"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="${resPath}img/apple_touch_icon.png" rel="apple-touch-icon">
    <link rel="icon" href="<%=basePath%>images/${icoData.imageId}" type="image/x-icon">
    <link rel="shortcut icon" href="<%=basePath%>images/${icoData.imageId}"
          mce_href="<%=basePath%>images/${icoData.imageId}" type="image/x-icon">


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="${resPath}sui/css/sm.min.css?v=201702280308">
    <link rel="stylesheet" href="${resPath}sui/css/sm-extend.min.css?v=201702280308">
    <link rel="stylesheet" href="${resPath}swiper/css/swiper.min.css?v=201702280308">
    <link rel="stylesheet" href="${resPath}css/style.css?v=201702280308">
    <style>html {
        height: 100%;
        width: 100%;
    }

    iframe {
        width: 100%;
        height: 100%;
        overflow-x: hidden;
        overflow-y: hidden;
        padding: 0;
        margin: 0;
    }

    body {
        margin: 0;
        padding: 0;
        height: 100%;
        overflow: hidden;
    }</style>
    <script>
        // 防止被frame
        if (top.location != self.location) top.location = self.location;
        // 屏蔽右键
        document.oncontextmenu = false;
    </script>
</head>
<body>
<iframe src="<%=u%>" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm"
        name="ifm" width="100%"></iframe>

<script type="text/javascript" src="${resPath}js/zepto.min.js?v=201702280308"></script>
<script>
    //打开自动初始化页面的功能
    //建议不要打开自动初始化，而是自己调用 $.init 方法完成初始化
    $.config = {
        autoInit: false,
    }
</script>
<script type="text/javascript" src="${resPath}sui/js/sm.min.js?v=201702280308"></script>
<script src="${resPath}js/zepto.cookie.min.js?v=201702280308"></script>
<script src="${resPath}js/global.js?v=201702280308"></script>
<script>
    config.basePath = '<%=basePath%>';
</script>
<script>
    $(document).ready(function () {
        var p = Tools.parseInt('${param.p}');
        if (!isNaN(p)) {
            Tools.setCookie("agentId", p, {path: "/"});
        }
//        else {
//            Tools.setCookie("agentId", '', {path: "/", expires: -1});
//        }
    });
</script>
<script>${webTjjs}</script>
<c:import url="../common/checkOnline.jsp"/>
</body>
</html>