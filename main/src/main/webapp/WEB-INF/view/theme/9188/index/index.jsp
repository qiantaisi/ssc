<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String u = request.getParameter("u");
//    System.out.println(u + "-----------");
    if (StringUtils.isBlank(u)) {
        u = basePath + "main.html";
    }
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("www.", "");
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>${webTitle}</title>
    <meta name="keywords" content="${webKeywords}" />
    <meta name="description" content="${webDescription}" />
    <link rel="icon" href="<%=basePath%>images/${icoData.imageId}" type="image/x-icon">
    <link rel="shortcut icon" href="<%=basePath%>images/${icoData.imageId}" mce_href="<%=basePath%>images/${icoData.imageId}" type="image/x-icon">
    <style>html{height:100%;width:100%;}iframe{width:100%;height:100%;overflow-x:hidden;overflow-y:hidden;padding:0;margin:0;}body{margin:0;padding:0;height:100%;overflow:hidden;}</style>
    <script>
        // 防止被frame
        if (top.location != self.location) top.location = self.location;
        // 屏蔽右键
        document.oncontextmenu = false;
    </script>
    <c:import url="../common/commonHeader.jsp" />
    <script type="text/javascript">
        <c:if test="${empty param.z || param.z != 1}">
        // 检查浏览器
        var md = new MobileDetect(window.navigator.userAgent);
        if (md.mobile()) {
            window.location.href = "<%=mHostName%>" + "<c:if test="${not empty param.p}">/?p=${param.p}</c:if>";
        }

        // 检查兼容
        var browser=navigator.appName
        var b_version=navigator.appVersion
        var version=b_version.split(";");
        var trim_Version=version[1].replace(/[ ]/g,"");
        if(browser == "Microsoft Internet Explorer" && trim_Version == "MSIE6.0") {
            window.location.href = "<%=basePath%>error/incompatible.html"
        } else if(browser=="Microsoft Internet Explorer" && trim_Version=="MSIE7.0") {
            window.location.href = "<%=basePath%>error/incompatible.html"
        } else if(browser=="Microsoft Internet Explorer" && trim_Version=="MSIE8.0") {
            window.location.href = "<%=basePath%>error/incompatible.html"
        } else if(browser=="Microsoft Internet Explorer" && trim_Version=="MSIE9.0") {
        }
        </c:if>
    </script>
</head>
<body>
    <iframe src ="<%=u%>" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm" name="ifm"  width="100%"></iframe>
    <script>${webTjjs}</script>
    <c:import url="../common/commonJs.jsp" />

    <script>
        $(document).ready(function() {
            var p = Tools.parseInt('${param.p}');
            if (!isNaN(p)) {
                $.cookie("agentId", p, {path: "/"});
            }
//            else {
//                $.cookie("agentId", '', {path: "/", expires: -1});
//            }
        });
    </script>

    <c:import url="../common/checkOnline.jsp" />
</body>
</html>