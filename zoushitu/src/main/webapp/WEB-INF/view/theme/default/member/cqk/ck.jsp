<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-ck">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">在线充值</h1>
        </header>
        <div class="content cl-700">
            <div class="buttons-tab cl-701">
                <a href="<%=basePath%>member/cqk/ck.html" class="active button"><span>充值</span></a>
                <a href="<%=basePath%>member/cqk/qk.html" class="button"><span>提款</span></a>
            </div>
            <div class="" style="margin:10px 5px;font-size:0.7rem">请选择充值方式</div>
            <div class="buttons-tab buttons-tab-type cl-701">
                <c:if test="${not empty wxzfInfoList}"><a href="javascript:void(0)" class="active button" data-type="weix"><span>微信</span></a></c:if>
                <c:if test="${not empty zfbzfInfoList}"><a href="javascript:void(0)" class="button" data-type="zhifb"><span>支付宝</span></a></c:if>
                <c:if test="${not empty zxzfInfoList}"><a href="javascript:void(0)" class="button" data-type="zaixzf"><span>在线支付</span></a></c:if>
                <c:if test="${not empty yhzzList || not empty zfbzzList || not empty wxzzList || not empty cftzzList}"><a href="javascript:void(0)" class="button" data-type="yinhzz"><span>汇款</span></a></c:if>
            </div>
            <div class="list-block re-list-block media-list hide ckList" id="weix" style="margin-top:0">
                <ul>
                    <c:forEach items="${wxzfInfoList}" var="item">
                        <li>
                            <a href="javascript:void(0)" class="item-link item-content zxzf" data-payonlineid="${item.id}" data-payurl="${item.payUrl}" data-minmoney="${item.minMoney}" data-maxmoney="${item.maxMoney}">
                                <div class="item-media">
                                    <img src="<%=basePath%>images/${item.imageId}">
                                </div>
                                <div class="item-inner">
                                    <div class="item-title-row">
                                        <div class="item-title">${item.name}</div>
                                    </div>
                                    <div class="item-text">${item.description}</div>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="list-block re-list-block media-list hide ckList" id="zhifb" style="margin-top:0">
                <ul>
                    <c:forEach items="${zfbzfInfoList}" var="item">
                        <li>
                            <a href="javascript:void(0)" class="item-link item-content zxzf" data-payonlineid="${item.id}" data-payurl="${item.payUrl}" data-minmoney="${item.minMoney}" data-maxmoney="${item.maxMoney}">
                                <div class="item-media">
                                    <img src="<%=basePath%>images/${item.imageId}">
                                </div>
                                <div class="item-inner">
                                    <div class="item-title-row">
                                        <div class="item-title">${item.name}</div>
                                    </div>
                                    <div class="item-text">${item.description}</div>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="list-block re-list-block media-list hide ckList" id="zaixzf" style="margin-top:0">
                <ul>
                    <c:forEach items="${zxzfInfoList}" var="item">
                        <li>
                            <a href="javascript:void(0)" class="item-link item-content zxzf" data-payonlineid="${item.id}" data-payurl="${item.payUrl}" data-minmoney="${item.minMoney}" data-maxmoney="${item.maxMoney}">
                                <div class="item-media">
                                    <img src="<%=basePath%>images/${item.imageId}">
                                </div>
                                <div class="item-inner">
                                    <div class="item-title-row">
                                        <div class="item-title">${item.name}</div>
                                    </div>
                                    <div class="item-text">${item.description}</div>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="list-block re-list-block media-list hide ckList" id="yinhzz" style="margin-top:0">
                <ul>
                    <c:if test="${not empty yhzzList}">
                        <li>
                            <a href="<%=basePath%>member/cqk/zz/yhzz.html" class="item-link item-content">
                                <div class="item-media">
                                    <img src="${resPath}img/yhk.png">
                                </div>
                                <div class="item-inner">
                                    <div class="item-title-row">
                                        <div class="item-title">银行转账</div>
                                    </div>
                                    <div class="item-text">强烈推荐，<%--返利1%，--%>大额安全无忧。</div>
                                </div>
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${not empty zfbzzList}">
                        <li>
                            <a href="<%=basePath%>member/cqk/zz/zfbzz.html" class="item-link item-content">
                                <div class="item-media">
                                    <img src="${resPath}img/zfb.png">
                                </div>
                                <div class="item-inner">
                                    <div class="item-title-row">
                                        <div class="item-title">支付宝转账</div>
                                    </div>
                                    <div class="item-text">支付宝转账</div>
                                </div>
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${not empty wxzzList}">
                        <li>
                            <a href="<%=basePath%>member/cqk/zz/wxzz.html" class="item-link item-content">
                                <div class="item-media">
                                    <img src="${resPath}img/wx.png">
                                </div>
                                <div class="item-inner">
                                    <div class="item-title-row">
                                        <div class="item-title">微信转账</div>
                                    </div>
                                    <div class="item-text">微信转账</div>
                                </div>
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${not empty cftzzList}">
                        <li>
                            <a href="<%=basePath%>member/cqk/zz/cftzz.html" class="item-link item-content">
                                <div class="item-media">
                                    <img src="${resPath}img/wx.png">
                                </div>
                                <div class="item-inner">
                                    <div class="item-title-row">
                                        <div class="item-title">财付通转账</div>
                                    </div>
                                    <div class="item-text">财付通转账</div>
                                </div>
                            </a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script type="text/html" id="template_popup">
    <div class="cl-702 item-input">
        <input type="text" placeholder="请输入充值金额" id="inputMoney" style="font-size:0.8rem">
        <div class="cl-707">温馨提示</div>
        <div class="cl-708">
            <p><span>支付单笔下限：</span><span style="color:red">{{minMoney}}</span></p>
            <p><span>支付单笔上限：</span><span style="color:red">{{maxMoney}}</span></p>
        </div>
    </div>
</script>
<c:import url="../../common/bodyEnd.jsp"/>