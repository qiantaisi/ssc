<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = RequestUtils.getScheme(request) + "://" + "m." + request.getServerName().replace("www.", "");
%>
<div class="head_top">
    <div class="container clearfix">
        <div class="left head_top_lf">
            <marquee scrollamount="3" scrolldelay="100" direction="left" onmouseover="this.stop();"
                     onmouseout="this.start();" onclick="HotNewsHistory();">
                <c:forEach items="${webPopUpNoticeResult.webNoticeList}" var="item" varStatus="status">
                   ${item.title}：${item.content}&nbsp;&nbsp;&nbsp;&nbsp;
                </c:forEach>
            </marquee>
        </div>
        <c:choose>
            <c:when test="${not empty userSession}">
                <div class="pull-right cl-328 login-true">
                    <a href="<%=basePath%>main.html" class="left index-text">首页</a>
                    &nbsp;<span onclick="openHyzx()" class="login-name" style="color: #247fdd; cursor:pointer;">${userSession.account}</span>&nbsp;
                    <a href="javascript:void(0)" class="left head_top_lottery">我的彩票</a>
                    <span class="left">|&nbsp;</span>
                </div>
            </c:when>
            <c:otherwise>
                <div class="right head_top_rt clearfix">
                    <a href="<%=basePath%>main.html" class="left">首页</a>
                    <a href="javascript:void(0)" class="loginbtn left blink" data-color="#ff4800|#333">登录</a>
                    <a href="<%=basePath%>register.html" class="left head_top_reg">免费注册</a>
                    <span class="left">|</span>
                    <a href="javascript:void(0)" class="left head_top_lottery">我的彩票</a>
                    <span class="left">|</span>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>
