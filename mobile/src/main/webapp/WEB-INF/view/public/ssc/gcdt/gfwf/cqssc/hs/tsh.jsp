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
<div class="wrap">
    <div class="cus_common">
        <div class="wan_top">
            <span class="wanwei">特殊号</span>
        </div>
    </div>
    <div class="wan_bottom">
        <div class="cus-flex-item">
            <span class="xz">豹子</span>
            <span class="pl">8.8</span>
        </div>
        <div class="cus-flex-item">
            <span class="xz">顺子</span>
            <span class="pl">8.8</span>
        </div>
        <div class="cus-flex-item">
            <span class="xz">对子</span>
            <span class="pl">8.8</span>
        </div>
    </div>
</div>