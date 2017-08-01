<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("www.", "");
%>
<div class="nav_list">
    <ul>
        <li>
            <a href="<%=basePath%>main.html">
                <img src="${resPath}img/ico33.png" alt="首页">
                <p>首页 </p>
            </a>
        </li>
        <li>
            <%--<a href="<%=basePath%>ssc/gcdt/index.html" target="_blank">--%>
            <a href="JavaScript:void(0)" onclick="openGcdt('gcdt')" target="_blank">
                <img src="${resPath}img/ico34.png" alt="购彩大厅">
                <p>购彩大厅</p>
            </a>
        </li>
        <li>
            <a href="<%=basePath%>kjjg.html">
                <img src="${resPath}img/ico35.png" alt="">
                <p>开奖结果</p>
            </a>
        </li>
        <li>
            <a href="<%=basePath%>ssc/index.html?module=zstIndex" target="_blank">
                <img src="${resPath}img/ico36.png" alt="">
                <p>走势图表</p>
            </a>
        </li>
        <li>
            <a href="javascript:void(0)" onclick="openHyzx('member/jfmx.html?module=hylb')">
                <img src="${resPath}img/ico37.png" alt="">
                <p>代理合作</p>
            </a>
        </li>
        <li>
            <a href="<%=basePath%>yhhd.html">
                <img src="${resPath}img/ico38.png" alt="">
                <p>优惠活动</p>
            </a>
        </li>
        <li>
            <a href="<%=mHostName%>" target="_blank">
            <img src="${resPath}img/ico39.png" alt="">
                <p>手机购彩</p>
            </a>
        </li>
    </ul>
</div>
