<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="bar bar-footer-secondary cl-606">
    <div class="cl-608 gfwf-cl-608">
        <a class="tab-item tab-item-clear" href="javascript:void(0)" id="btn-reset">
            <span class="tab-label cl-953">&nbsp;清除&nbsp;</span>
        </a>

        <span class="zs-span">
            已选
            <font id="zhushu">0</font>
            注&nbsp;
        </span>
            共
            <span id="nowMoney">10000000</span>
            元

        <a class="tab-item tab-item-touzhu" href="javascript:void(0)" id="btn-submit">
            <span class="tab-label cl-952">&nbsp;投注&nbsp;</span>
        </a>
    </div>
</div>