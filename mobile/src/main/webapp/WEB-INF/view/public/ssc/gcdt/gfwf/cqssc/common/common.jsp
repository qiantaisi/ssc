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
<div class="x_wrap">
    <div class="x_1">
        <span>五星直选</span>
    </div>
    <div class="x_2">
        <span><img src="${resPath}img/ico22.png"/></span>
    </div>
    <div class="x_3">
        <span>直选方式
            <div class="gfwf_triangle_down2">
                <%--画出一个向下的三角形图标--%>
            </div>
        </span>
    </div>
</div>
<div class="gfwf_xz gfwf_wh">
    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">五星</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <span class="staer1">直选复式</span>
        <span class="staer1">直选单式</span>
        <span class="staer1">任选二</span>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">四星</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <span class="staer1">直选复式</span>
        <span class="staer1">直选单式</span>
        <span class="staer1">任选二</span>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">三星</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <span class="staer1">直选复式</span>
        <span class="staer1">直选单式</span>
        <span class="staer1">任选二</span>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">二星</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <span class="staer1">直选复式</span>
        <span class="staer1">直选单式</span>
        <span class="staer1">任选二</span>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">一星</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <span class="staer1">直选复式</span>
        <span class="staer1">直选单式</span>
        <span class="staer1">任选二</span>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">五星</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <span class="staer1">直选复式</span>
        <span class="staer1">直选单式</span>
        <span class="staer1">任选二</span>
    </div>
</div>
