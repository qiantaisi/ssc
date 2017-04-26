<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-qk">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">在线提款</h1>
        </header>
        <div class="content cl-700">
            <div class="buttons-tab cl-701">
                <a href="<%=basePath%>member/cqk/ck.html" class="button"><span>充值</span></a>
                <a href="<%=basePath%>member/cqk/qk.html" class="active button"><span>提款</span></a>
            </div>
            <div class="list-block cl-708">
                <ul>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" placeholder="请输入取款金额" id="inputMoney">
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="cl-709">
                    <span>单笔下限：</span><span style="color:red">${minMoney}</span>
                    <span>单笔上限：</span><span style="color:red">${maxMoney}</span>
                </div>
                <ul>
                    <li>
                        <div class="item-content item-link">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" id="inputQk" placeholder="请选择银行卡" readonly>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="cl-709 cl-710">
                    <span><a href="<%=basePath%>member/yhkgl/index.html">前往管理银行卡→</a></span>
                </div>
            </div>
            <div class="cl-102">
                <a href="javascript:void(0)" id="btn-submit" class="cl-103" data-minmoney="${minMoney}" data-maxmoney="${maxMoney}">确认</a>
            </div>
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script>
    var userBankList = ${userBankList};
</script>
<c:import url="../../common/bodyEnd.jsp"/>