<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-agent-tdbb-list">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right open-panel panel-right">
                筛选
            </a>
            <h1 class="title">团队报表</h1>
        </header>
        <div class="content pull-to-refresh-content infinite-scroll infinite-scroll-bottom">
            <!-- 默认的下拉刷新层 -->
            <div class="pull-to-refresh-layer">
                <div class="preloader"></div>
                <div class="pull-to-refresh-arrow"></div>
            </div>
            <div class="">
                <div class="no-right-record hide"></div>
                <div class="cl-327" id="dataList">
                    <div class="no-right-record hide"></div>
                    <div class="list-block no-margin">
                        <ul class="list-container">
                        </ul>
                    </div>
                </div>
                <!-- 加载提示符 -->
                <div class="infinite-scroll-preloader">
                    <div class="preloader"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel-overlay"></div>
    <div class="panel panel-right panel-reveal cl-208" id='panel-right'>
        <div class="content-block">
            <header class="bar bar-nav">
                <a class="button button-link button-nav pull-left close-panel">
                    <span class="icon icon-left"></span>
                </a>
                <!-- <button class="button button-link button-nav pull-right"> -->
                <a class="button button-link pull-right" id="btn-shaixuan">
                    筛选
                </a>
                <h1 class="title">筛选</h1>
            </header>
            <div class="content">
                <div class="list-block">
                    <ul class="list-container">
                        <li>
                            <div class="item-content item-link">
                                <div class="item-inner">
                                    <div class="item-input">
                                        <input type="text" placeholder="统计开始时间" id="startTime" class="cl-802">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content item-link">
                                <div class="item-inner">
                                    <div class="item-input">
                                        <input type="text" placeholder="统计结束时间" id="endTime" class="cl-802">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-inner">
                                    <div class="item-title label">账号</div>
                                    <div class="item-input">
                                        <input type="text" name="account" placeholder="任意" />
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="../../../common/commonJs.jsp"/>
<script type="text/html" id="template_item">
    <li class="item-content item-link cl-3004">
        <div class="cl-3001">
            <div class="cl-3002">
                用户：{{account}}
            </div>
            <div class="cl-3003">
                充值：{{totalDepositMoney}}
            </div>
        </div>
        <div class="cl-3001">
            <div class="cl-3002">
                提现：{{totalWithdrawMoney}}
            </div>
            <div class="cl-3003">
                派奖：{{totalGameProfitMoney}}
            </div>
        </div>
        <div class="cl-3001">
            <div class="cl-3002">
                活动：{{totalActivityMoney}}
            </div>
            <div class="cl-3003">
                返水：{{totalSscFanshuiMoney}}
            </div>
        </div>
        <div class="cl-3001">
            <div class="cl-3002">
                佣金：{{totalYjMoney}}
            </div>
            <div class="cl-3003">
                盈利：{{yingli}}
            </div>
        </div>
    </li>
</script>
<c:import url="../../../common/bodyEnd.jsp"/>