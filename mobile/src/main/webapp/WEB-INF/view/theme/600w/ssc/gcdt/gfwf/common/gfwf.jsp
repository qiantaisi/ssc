<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="consele">
    <div class="selects">
        <div class="selects-one">
         <a href="<%=basePath%>ssc/gcdt/gfwf/cpssc.html">官方玩法</a>
        </div>
    </div>
    <div class="selects">
        <div class="selects-two Bcolor">
            <a href="<%=basePath%>ssc/gcdt/cqssc.html">快捷玩法</a>
        </div>
    </div>
</div>
<div class="bott">
    <%--半透明--%>
</div>