<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="help_l_menu fl">
    <h2 class="title clearfix">
        <span class="account_img fl"><img src="${resPath}member/images/account/account_img.png"></span>
        <p class="fl">
            <span class="name">${userSession.account}</span>
            <span class="sum money">￥${userSession.balance}</span>
        </p>
    </h2>
    <ul class="account_list" data-on="#nav_2" id="leftNav">
        <li>
            <a id="nav_1" class="t home_page" href="javascript:void(0)" data-module="main"><span></span>会员首页</a>
        </li>

        <li>
            <a id="nav_2" class="t deposit" href="javascript:void(0)" data-module="zhcz/yhzz"><span></span>账户充值</a>
        </li>

        <li>
            <a id="nav_3" class="t withdraw" href="javascript:void(0)" data-module="withdraw"><span></span>快速提现</a>
        </li>

        <li>
            <a id="nav_5" class="t letter" href="javascript:void(0)" data-module="letter"><span></span>站内信件</a>
        </li>

        <li>
            <a id="nav_7" class="t record" href="javascript:void(0)" data-module="lsjl/ckjl"><span></span>历史记录</a>
        </li>

        <li>
            <a id="nav_8" class="t setting" href="javascript:void(0)" data-module="zhsz/grzl"><span></span>账户设置</a>
        </li>
        <li>
            <a id="nav_9" class="t jifen" href="javascript:void(0)" data-module="jfmx/hylb"><span></span>代理赚钱</a>
        </li>
    </ul>

    <a href="${kefu.kefuUrl}" class="onlineService" target="_blank">联系在线客服</a>
</div>