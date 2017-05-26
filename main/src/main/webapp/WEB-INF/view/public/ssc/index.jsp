<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>购彩大厅</title>
    <link rel="icon" href="<%=basePath%>images/${icoData.imageId}" type="image/x-icon">
    <link rel="shortcut icon" href="<%=basePath%>images/${icoData.imageId}" mce_href="<%=basePath%>images/${icoData.imageId}" type="image/x-icon">
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
        if (top.location != self.location) {
            top.location = self.location;
        }
        // 屏蔽右键
        document.oncontextmenu = false;
    </script>
    <script>
        <!--
        window.onerror = function () {
            return true;
        }
        // -->
    </script>
</head>
<body>
<c:choose>
    <%--<c:when test="${not empty param.zst}">--%>
        <%--<iframe src="<%=basePath%>ssc/main.html?module=zstType&zst=${param.zst}&type=${param.type}" frameborder="0"--%>
                <%--marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm" name="ifm"--%>
                <%--width="100%"></iframe>--%>
    <%--</c:when>--%>
    <c:when test="${not empty param.caizhong && not empty param.nums && not empty param.money && not empty param.navIndex}">
        <iframe src="<%=basePath%>ssc/main.html?module=xyxh&caizhong=${param.caizhong}&nums=${param.nums}&money=${param.money}&navIndex=${param.navIndex}"
                frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm" name="ifm"
                width="100%"></iframe>
    </c:when>
    <c:when test="${not empty param.navIndex}">
        <iframe src="<%=basePath%>ssc/main.html?module=xyxh_shou&caizhong=${param.caizhong}&navIndex=${param.navIndex}"
                frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm" name="ifm"
                width="100%"></iframe>
    </c:when>
    <c:otherwise>
        <iframe src="<%=basePath%>ssc/main.html?module=<%=request.getParameter("module")%>" frameborder="0"
                marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm" name="ifm"
                width="100%"></iframe>
    </c:otherwise>
</c:choose>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/checkOnline.jsp"/>
</body>
</html>