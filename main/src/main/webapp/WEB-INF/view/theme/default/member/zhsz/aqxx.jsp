<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="help_r_main">
<div class="eveb_content">
    <!-- 账户设置 -->
    <div class="eveb_nav_sub">
        <ul class="clearfix">
            <li><a href="javascript:void(0)" onclick="parent.getPage('zhsz/grzl')">个人资料</a></li>
            <li><a href="javascript:void(0)" onclick="parent.getPage('zhsz/dlmm')">登录密码</a></li>
            <!--<li><a href="javascript:void(0)" onclick="parent.getPage('zhsz/tkmm')">提款密码</a></li>-->
            <li><a href="javascript:void(0)" onclick="parent.getPage('zhsz/yhkgl')">银行卡管理</a></li>
            <li class="on"><a href="javascript:void(0)" onclick="parent.getPage('zhsz/aqxx')">安全信息</a></li>
        </ul>
    </div>
    <table class="eveb_setting_table">
        <tbody>
        <tr>
            <td class="tit">最后登陆时间</td>
            <td class="wid"><fmt:formatDate value="${safeInfo.thisLoginTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
            <td class="tit">上一次登陆时间</td>
            <td class="wid">
                <span class="ff"><fmt:formatDate value="${safeInfo.lastLoginTime}"
                                                 pattern="yyyy-MM-dd HH:mm:ss"/></span>
            </td>
        </tr>
        <tr>
            <td class="tit">最后登陆IP</td>
            <td class="wid">${safeInfo.thisLoginIp}</td>
            <td class="tit">上一次登陆IP</td>
            <td colspan="2" class="wid">
                <span class="ff">${safeInfo.lastLoginIp}</span>
            </td>
        </tr>
        <tr>
            <td class="tit">最后登陆地点</td>
            <td class="ff wid">${safeInfo.thisLoginCity}</td>
            <td class="tit">上一次登陆地点</td>
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
        如发现登陆信息不是您本人操作，请立即修改您的密码。
    </div>
</div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>