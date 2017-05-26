<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="common/bodyStart.jsp" />
<style>body{width:100%;}</style>
<div class="wid-1200 helpCont clearfix">
    <div class="head">
        <img src="<%=basePath%>images/${logoData.imageId}" alt="">
        <div>
            <h5><span>北京时间：<i id="bjTime" data-time="<%=(new Date()).getTime()%>"></i></span></h5>
            <p>您的贵宾网址：${userSession.privateUrl}</p>
        </div>
    </div>
    <div class="clean"></div>
    <div style="overflow:hidden;">
        <div class="help_l_menu fl">
            <h2 class="title clearfix">
                <span class="account_img fl"><img src="${resPath}member/images/account/account_img.png"></span>
                <p class="fl">
                    <span class="name">${userSession.account}</span>
                    <span class="sum money">￥${userSession.balance}</span>
                </p>
            </h2>
            <ul class="account_list" id="leftNav">
                <li><a class="t home_page" href="javascript:void(0)" data-url="<%=basePath%>member/main.html"><span></span>会员首页</a></li>
                <li><a class="t deposit" href="javascript:void(0)" data-url="<%=basePath%>member/zhcz.html?module=yhzz"><span></span>账户充值</a></li>
                <li><a class="t withdraw" href="javascript:void(0)" data-url="<%=basePath%>member/withdraw.html"><span></span>快速提现</a></li>
                <li><a class="t letter" href="javascript:void(0)" data-url="<%=basePath%>member/letter.html"><span></span>站内信件</a></li>
                <li>
                    <a class="t record" href="javascript:void(0)" data-url="<%=basePath%>member/lsjl.html?module=ckjl"><span></span>历史记录</a>
                </li>
                <li><a class="t setting" href="javascript:void(0)" data-url="<%=basePath%>member/zhsz.html?module=grzl"><span></span>账户设置</a></li>
                <li><a class="t jifen" href="javascript:void(0)" data-url="<%=basePath%>member/jfmx.html?module=hylb"><span></span>代理赚钱</a></li>
            </ul>
            <a href="${kefu.kefuUrl}" class="onlineService" target="_blank">联系在线客服</a>
        </div>
        <iframe id="ifm" class="ifm" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" name="ifm"  width="100%"></iframe>
    </div>
    <div class="clean"></div>
    <div class="bottom ">
        <p class="webDbxx"></p>
    </div>
    <div class="alert">
        <div class="alert_col"><span></span></div>
    </div>
</div>

<c:import url="common/commonJs.jsp"/>
<script src="${resPath}member/js/index.js?v=<%=(new Date()).getTime()%>"></script>
<c:import url="../common/checkOnline.jsp" />
<c:import url="common/bodyEnd.jsp"/>