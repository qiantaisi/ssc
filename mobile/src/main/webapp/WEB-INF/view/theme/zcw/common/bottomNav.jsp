<%@ page import="project38.ssc.mobile.interceptors.BasePathInterceptor" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<nav class="bar bar-tab c1-101 rebar-tab">
    <a class="tab-item external active" href="<%=basePath%>" data-name="index">
        <span class="icon re-icon-home"></span>
        <span class="tab-label tab-indx">首页</span>
    </a>
    <a class="tab-item external" href="<%=basePath%>ssc/gcdt.html" data-name="gcdt">
        <span class="icon icon-gc"></span>
        <span class="tab-label tab-gcdt">购彩大厅</span>
    </a>
    <a class="tab-item external" href="<%=basePath%>ssc/kjjl/all.html" data-name="kj">
        <span class="icon icon-kj"></span>
        <span class="tab-label tab-kj">开奖</span>
    </a>
    <a class="tab-item external" href="<%=basePath%>ssc/zst/ffssc/jbzst.html" data-name="zst">
        <span class="icon icon-zst"></span>
        <span class="tab-label tab-zst">走势图</span>
    </a>
    <a class="tab-item external" href="<%=basePath%>member/index.html" data-name="grzx">
        <span class="icon icon-info"></span>
        <span class="tab-label tab-info">个人中心</span>
    </a>
</nav>