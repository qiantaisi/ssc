<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("www.", "");
    String p = (String) request.getParameter("p");
    if (StringUtils.isNotBlank(p)) {
        mHostName += "/?p=" + p;
    }
%>
<script>
    <!--
    // 屏蔽JS错误
//    window.onerror = function(){return true;}
    // -->
</script>
<script>
    var CONFIG = {
        BASEURL: "<%=basePath%>",    // 根路径
        RESURL: "${resPath}"         // 资源路径
    };
</script>
<script src="${resPath}js/mobile-detect.min.js"></script>