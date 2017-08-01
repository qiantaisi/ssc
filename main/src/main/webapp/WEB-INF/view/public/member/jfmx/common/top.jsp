<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="jf_box">
    <p class="fl">您好，${userSession.account}！您当前账户余额为：<span>${userSession.balance}</span>元  </p>
    <a href="javascript:void(0)" onclick="parent.getPage('zhcz/yhzz')" class="fl c1">充值</a>
    <a href="javascript:void(0)" onclick="parent.getPage('withdraw')" class="fl c2">提款</a>
    <p class="fl url">推广链接：<%=request.getScheme() + "://" + request.getServerName() + path + "/"%>?p=${userSession.id}<a href="javascript:void(0)" id="copyTglj" data-tglj="<%=request.getScheme() + "://" + request.getServerName() + path + "/"%>?p=${userSession.id}">复制链接</a></p>
</div>