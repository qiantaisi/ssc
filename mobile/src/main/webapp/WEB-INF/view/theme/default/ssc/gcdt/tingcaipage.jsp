<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project28.api.common.utils.DateUtils" %>
<%@ page import="project28.api.common.utils.JSONUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-gcdt">
        <header class="bar bar-nav cl-1">
            <a class="button button-link button-nav pull-left open-panel" data-panel='#panel-left'>
                <font>彩种列表</font>
                <span class="icon icon-top-gcdt"></span>
            </a>
            <c:choose>
                <c:when test="${not empty userSession}">
                    <a class="button button-link pull-right open-panel" data-panel='#panel-right'>
                        菜单
                    </a>
                    <h1 class="title">
                        <span class="cl-800">余额：<font class="cl-316">${userSession.balance}</font>元</span>
                    </h1>
                </c:when>
                <c:otherwise>
                    <div class="pull-right cl-3">
                        <a href="<%=basePath%>login.html">登录</a>
                        <a href="<%=basePath%>register.html">注册</a>
                        <a href="javascript:void(0)" id="btn-shiwan">试玩</a>
                    </div>
                </c:otherwise>
            </c:choose>
        </header>
        <c:import url="../../common/bottomNav.jsp"/>
        <div class="content">
            <div class="tingcaipage">
                <span>sorry,该彩票暂停！</span>
                <a href="<%=basePath%>main.html">
                    返回
                </a>
            </div>


            <c:import url="../../common/copyright.jsp"/>
        </div>
    </div>

    <c:import url="../../common/leftSscPanel.jsp"/>
    <c:import url="../../common/rightPanel.jsp"/>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>
