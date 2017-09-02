<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String u = request.getParameter("u");
    if (StringUtils.isBlank(u)) {
        u = basePath + "main.html";
    }
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script>if (window.top !== window.self) {top.location.href = "<%=basePath%>";}</script>
    <script src="${commonResPath}js/mobile-detect.min.js"></script>
    <script>
        var md = new MobileDetect(window.navigator.userAgent);
        if (!md.mobile()) {
            window.location.href = "<%=basePath%>app.html"
        }

        if (!window.navigator.cookieEnabled) {
            alert("请检查您的浏览器是否禁用了COOKIE");
        }
    </script>
    <title>${webTitle}</title>
    <jsp:include page="../../../common/commonMeta.jsp" />
    <jsp:include page="../../../common/commonCss.jsp" />
    <meta name="keywords" content="${webKeywords}"/>
    <meta name="description" content="${webDescription}"/>
    <link href="<%=basePath%>images/logo3.png" rel="apple-touch-icon">
    <link rel="icon" href="<%=basePath%>images/ico.png" type="image/x-icon">
    <link rel="shortcut icon" href="<%=basePath%>images/ico.png" mce_href="<%=basePath%>images/ico.png" type="image/x-icon">

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
      //  if (top.location != self.location) top.location = self.location;
        // 屏蔽右键
        document.oncontextmenu = false;
    </script>
</head>
<body>
    <iframe src="<%=u%>" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm" name="ifm" width="100%"></iframe>

    <jsp:include page="../../../common/commonJs.jsp" />
    <script>
        $(document).ready(function () {
            var p = Tools.parseInt('${param.p}');
            if (!isNaN(p)) {
                Tools.setCookie("agentId", p, {path: "/"});
            }
        });
    </script>
    <c:import url="../../../common/checkOnline.jsp"/>
    <script>${webTjjs}</script>
</body>
</html>