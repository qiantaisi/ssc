<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="eveb_nav_sub">
    <ul class="clearfix">
        <li class="<c:if test="${param.type == 1}">on</c:if>"><a href="javascript:void(0)" onclick="parent.getPage('jfmx/hylb')">会员列表</a></li>
        <li class="<c:if test="${param.type == 2}">on</c:if>"><a href="javascript:void(0)" onclick="parent.getPage('jfmx/tjhy')">添加会员</a></li>
        <li class="<c:if test="${param.type == 3}">on</c:if>"><a href="javascript:void(0)" onclick="parent.getPage('jfmx/cwbb')">财务报表</a></li>
        <li class="<c:if test="${param.type == 4}">on</c:if>"><a href="javascript:void(0)" onclick="parent.getPage('jfmx/tdls')">团队流水</a></li>
        <li class="<c:if test="${param.type == 5}">on</c:if>"><a href="javascript:void(0)" onclick="parent.getPage('jfmx/tdbb')">团队报表</a></li>
        <li class="<c:if test="${param.type == 6}">on</c:if>"><a href="javascript:void(0)" onclick="parent.getPage('jfmx/tdtz')">团队投注</a></li>
        <li class="<c:if test="${param.type == 7}">on</c:if>"><a href="javascript:void(0)" onclick="parent.getPage('jfmx/yjjl')">佣金记录</a></li>
    </ul>
</div>