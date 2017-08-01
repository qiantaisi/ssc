<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="eveb_nav_sub">
    <ul class="clearfix">
        <li <c:if test="${param.module == 'ckjl'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/lsjl.html?module=ckjl')">充值记录</a></li>
        <li <c:if test="${param.module == 'tkjl'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/lsjl.html?module=tkjl')">提现记录</a></li>
        <li <c:if test="${param.module == 'zjjl'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/lsjl.html?module=zjjl')">资金记录</a></li>
        <li <c:if test="${param.module == 'tzjl'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/lsjl.html?module=tzjl')">投注记录</a></li>
    </ul>
</div>