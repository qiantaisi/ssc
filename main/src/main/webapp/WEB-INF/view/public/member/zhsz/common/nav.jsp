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
        <li <c:if test="${param.module == 'grzl'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhsz.html?module=grzl')">个人资料</a></li>
        <li <c:if test="${param.module == 'dlmm'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhsz.html?module=dlmm')">登录密码</a></li>
        <li <c:if test="${param.module == 'yhkgl'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhsz.html?module=yhkgl')">银行卡管理</a></li>
        <li <c:if test="${param.module == 'aqxx'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhsz.html?module=aqxx')">安全信息</a></li>
        <c:if test="${needWithdrawPassword == true && FisrtWithdrawPasswd.userIsFirstWithdrawPasswd == true}"><li <c:if test="${param.module == 'setqkmm'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhsz.html?module=setqkmm')">设置取款密码</a></li></c:if>
        <c:if test="${needWithdrawPassword == true && FisrtWithdrawPasswd.userIsFirstWithdrawPasswd != true}"><li <c:if test="${param.module == 'reqkmm'}">class="on"</c:if>><a href="javascript:void(0)" onclick="parent.goSubUrl('<%=basePath%>member/zhsz.html?module=reqkmm')">修改取款密码</a></li></c:if>
    </ul>
</div>