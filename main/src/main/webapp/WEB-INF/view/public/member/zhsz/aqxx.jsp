<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="help_r_main">
<div class="eveb_content">
    <c:import url="common/nav.jsp" />
    <table class="eveb_setting_table">
        <tbody>
        <tr>
            <td class="tit">最后登录时间</td>
            <td class="wid"><fmt:formatDate value="${safeInfo.thisLoginTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
            <td class="tit">上一次登录时间</td>
            <td class="wid">
                <span class="ff"><fmt:formatDate value="${safeInfo.lastLoginTime}"
                                                 pattern="yyyy-MM-dd HH:mm:ss"/></span>
            </td>
        </tr>
        <tr>
            <td class="tit">最后登录IP</td>
            <td class="wid">${safeInfo.thisLoginIp}</td>
            <td class="tit">上一次登录IP</td>
            <td colspan="2" class="wid">
                <span class="ff">${safeInfo.lastLoginIp}</span>
            </td>
        </tr>
        <tr>
            <td class="tit">最后登录地点</td>
            <td class="ff wid">${safeInfo.thisLoginCity}</td>
            <td class="tit">上一次登录地点</td>
            <td class="ff wid">${safeInfo.lastLoginCity}</td>
        </tr>
        <tr>
            <td class="tit">注册时间</td>
            <td class="ff wid"><fmt:formatDate value="${safeInfo.registerTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
            <td class="tit">注册IP</td>
            <td class="ff wid">${safeInfo.registerIp}</td>
        </tr>
        </tbody>
    </table>
    <div class="eveb_tip light">
        如发现登录信息不是您本人操作，请立即修改您的密码。
    </div>
</div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>