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
<c:import url="../../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-gcdt-cqssc">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left open-panel" data-panel='#panel-left'>
                <font>彩种切换</font>
                <span class="icon icon-top-gcdt"></span>
            </a>
            <%--<a class="yxsm" href="<%=basePath%>ssc/kjjl/bqxq.html?playGroupId=1">--%>
            <%--游戏说明--%>
            <%--</a>--%>
            <a class="button button-link pull-right open-panel" data-panel='#panel-right'>
                菜单
            </a>
            <h1 class="title">重庆时时彩</h1>
        </header>






    </div>
    <c:import url="../../../common/leftSscPanel.jsp" />
    <c:import url="../../../common/rightPanel.jsp">
        <c:param name="playGroupId" value="1" />
    </c:import>
</div>

<c:import url="../../../common/bodyEnd.jsp"/>