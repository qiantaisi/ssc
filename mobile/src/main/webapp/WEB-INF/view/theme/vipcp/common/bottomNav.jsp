<%@ page import="project38.ssc.mobile.interceptors.BasePathInterceptor" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<nav class="bar bar-tab c1-101">
    <a class="tab-item external active" href="<%=basePath%>">
        <span class="icon re-icon-home"></span>
        <span class="tab-label">首页</span>
    </a>
    <a class="tab-item external" href="<%=basePath%>ssc/gcdt.html">
        <span class="icon icon-gc"></span>
        <span class="tab-label">购彩大厅</span>
    </a>
    <a class="tab-item external" href="<%=basePath%>ssc/kjjl/all.html">
        <span class="icon icon-kj"></span>
        <span class="tab-label">开奖</span>
    </a>
    <a class="tab-item external" href="<%=basePath%>ssc/zst/lhc/jbzst.html">
        <span class="icon icon-zst"></span>
        <span class="tab-label">走势图</span>
    </a>
    <a class="tab-item external" href="<%=basePath%>member/index.html">
        <span class="icon icon-info"></span>
        <span class="tab-label">个人中心</span>
    </a>
</nav>