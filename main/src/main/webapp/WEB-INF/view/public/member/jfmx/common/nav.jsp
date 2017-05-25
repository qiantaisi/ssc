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
        <li class="<c:if test="${param.module == 'hylb'}">on</c:if>"><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/jfmx.html?module=hylb')">会员列表</a></li>
        <li class="<c:if test="${param.module == 'tjhy'}">on</c:if>"><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/jfmx.html?module=tjhy')">添加会员</a></li>
        <li class="<c:if test="${param.module == 'cwbb'}">on</c:if>"><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/jfmx.html?module=cwbb')">财务报表</a></li>
        <li class="<c:if test="${param.module == 'tdls'}">on</c:if>"><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/jfmx.html?module=tdls')">团队流水</a></li>
        <li class="<c:if test="${param.module == 'tdbb'}">on</c:if>"><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/jfmx.html?module=tdbb')">团队报表</a></li>
        <li class="<c:if test="${param.module == 'tdtz'}">on</c:if>"><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/jfmx.html?module=tdtz')">团队投注</a></li>
        <li class="<c:if test="${param.module == 'yjjl'}">on</c:if>"><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/jfmx.html?module=yjjl')">佣金记录</a></li>
    </ul>
</div>