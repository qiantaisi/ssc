<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="Betting wid1" id="zhInfo">
    <div class="tabs">
        <ul>
            <li class="hy-info acti" data-opertype="tbzh">同倍追号</li>
            <li class="hy-info" data-opertype="fbzh">翻倍追号</li>

        </ul>
    </div>
    <div class="list_wrap_zh wdtz-list-rewith tbzh" style="display: block"></div>
    <div class="list_wrap_zh wdtz-list-rewith fbzh"></div>
</div>





