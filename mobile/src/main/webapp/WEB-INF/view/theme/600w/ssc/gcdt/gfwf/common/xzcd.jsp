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
<div class="cover1 hw">
    <%--蒙版--%>
</div>
<div class="coveron1 hw">
    <div class="consele1">
        <div class="cus-area-box">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">五星</div>
                <div class="xuan1"></div>
            </div>
            <div class="staer">
                <span class="active one">直选复式</span>
                <span class="two">直选单式</span>
                <span class="three">任选二</span>
            </div>
        </div>
    </div>

    <div class="consele1">
        <div class="cus-area-box">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">四星</div>
                <div class="xuan1"></div>
            </div>
            <div class="staer">
                <span class="active one">直选复式</span>
                <span class="two">直选单式</span>
                <span class="three">任选二</span>
            </div>
        </div>
    </div>
</div>