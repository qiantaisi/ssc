<%@ page import="project38.ssc.mobile.interceptors.BasePathInterceptor" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<header class="h_bar-nav">
    <c:choose>
        <c:when test="${not empty userSession}">
            <a href="javascript:void(0)" class="h_cl-22" onclick="location.reload()">
                <img src="<%=basePath%>images/${logo.imageId}.png" alt="">
            </a>
            <div class="h_pull-right h_cl-328">
                <a href="<%=basePath%>member/index.html"><font class="timeInfo"></font>${userSession.account}
                </a>
                <a class="button button-link pull-right open-panel caidan" data-panel='#panel-right'>菜单</a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="h_cl-2">
                <a href="<%=basePath%>login.html">
                    <img src="${resPath}img/Header/index_01.png"/>
                    登录</a>
            </div>
            <div class="h_cl-3">
                    <%--<a href="<%=basePath%>login.html">登录</a>--%>
                <a href="<%=basePath%>register.html">
                    <img src="${resPath}img/Header/index_02.png"/>
                    注册</a>
                    <%--<a href="javascript:void(0)" id="btn-shiwan">试玩</a>--%>
            </div>
        </c:otherwise>
    </c:choose>
</header>