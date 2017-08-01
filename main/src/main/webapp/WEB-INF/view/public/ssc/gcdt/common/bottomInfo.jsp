<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="Betting wid1" id="bottomInfo">
    <div class="tabs">
        <ul>
            <li class="hy-info" data-opertype="wdtz">我的投注</li>
            <li class="hy-info" data-opertype="wdzj">我的中奖</li>
            <li class="hy-info" data-opertype="kjhm">今日开奖号码</li>
            <li class="hy-info" data-opertype="jjsm">奖金计算说明</li>

        </ul>
    </div>
    <div class="list_wrap wdtz-list-rewith wdtz"></div>
    <div class="list_wrap wdtz-list-rewith wdzj"></div>
    <div class="list_wrap kjhm"></div>
    <div class="list_wrap jjsm"></div>
</div>





