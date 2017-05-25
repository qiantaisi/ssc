<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="eveb_nav_sub">
    <ul class="clearfix">
        <li <c:if test="${param.module == 'yhzz'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhcz.html?module=yhzz')">银行转账</a></li>

        <c:if test="${not empty zxzfInfo.systemPayOnlineList}">
            <li <c:if test="${param.module == 'zxzf'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhcz.html?module=zxzf')">在线支付</a></li>
        </c:if>

        <c:if test="${not empty zfbzfInfo.systemPayOnlineList}">
            <li <c:if test="${param.module == 'zfbzf'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhcz.html?module=zfbzf')">支付宝支付</a></li>
        </c:if>

        <c:if test="${not empty wxzfInfo.systemPayOnlineList}">
            <li <c:if test="${param.module == 'wxzf'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhcz.html?module=wxzf')">微信支付</a></li>
        </c:if>

        <c:if test="${not empty qqzfInfo.systemPayOnlineList}">
            <li <c:if test="${param.module == 'qqzf'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhcz.html?module=qqzf')">QQ支付</a></li>
        </c:if>

        <c:if test="${not empty wxzzInfo.skInfoList}">
            <li <c:if test="${param.module == 'wxzz'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhcz.html?module=wxzz')">微信转账</a></li>
        </c:if>

        <c:if test="${not empty zfbzzInfo.skInfoList}">
            <li <c:if test="${param.module == 'zfbzz'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhcz.html?module=zfbzz')">支付宝转账</a></li>
        </c:if>

        <c:if test="${not empty cftzzInfo.skInfoList}">
            <li <c:if test="${param.module == 'cftzz'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhcz.html?module=cftzz')">财付通转账</a></li>
        </c:if>

        <c:if test="${not empty qqzzList.skInfoList}">
            <li <c:if test="${param.module == 'qqzz'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhcz.html?module=qqzz')">QQ转账</a></li>
        </c:if>
    </ul>
</div>