<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="com.petsathall.project.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-agent-tdls-list">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">团队流水</h1>
        </header>
        <div class="content pull-to-refresh-content infinite-scroll infinite-scroll-bottom">
        <!-- 默认的下拉刷新层 -->
            <div class="pull-to-refresh-layer">
                <div class="preloader"></div>
                <div class="pull-to-refresh-arrow"></div>
            </div>
            <div class="buttons-tab" id="buttonsTabList">
                <a href="#" class="tab-link active button" data-id="btn-today"><span>今日</span></a>
                <a href="#" class="tab-link button" data-id="btn-yesterday"><span>昨日</span></a>
                <a href="#" class="tab-link button" data-id="btn-month"><span>本月</span></a>
                <a href="#" class="tab-link button" data-id="btn-zdy"><span>自定义</span></a>
            </div>
            <div class="content-block cl-209">
                <div class="no-right-record hide"></div>
                <div class="list-block" id="dataList">
                    <ul class="list-container">
                    </ul>
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
                                    <div class="item-title label">开始时间</div>
                                    <div class="item-input">
                                        <input type="text" placeholder="开始时间" id="startTime" value="<%=DateUtils.getTodayStart()%>">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content item-link">
                                <div class="item-inner">
                                    <div class="item-title label">结束时间</div>
                                    <div class="item-input">
                                        <input type="text" placeholder="结束时间" id="endTime" value="<%=DateUtils.getTodayEnd()%>">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content item-link">
                                <div class="item-inner">
                                    <div class="item-title label">类型</div>
                                    <div class="item-input">
                                        <input type="text" id='inputType' value="任意" />
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
    <li>
        <div class="item-content">
            <div class="item-inner">
                <div class="item-after">
                    <div class="cl-806">
                        <%--<span>{{createTime | dateFormat:'yy-mm-dd'}}</span>--%>
                        <span>{{account}}</span>
                        <span>{{createTime | dateFormat:'HH:MM:ss'}}</span>
                    </div>
                    <div class="cl-806">
                    <span>
                      <font>
                          {{if money > 0}}
                          <font style="color:green">+{{money}}元</font>
                          {{else}}
                          <font style="color:red">{{money}}元</font>
                          {{/if}}
                      </font>
                      <i class="cl-804">
                        {{if coinOperType == 9}}
                        彩金/入款优惠
                        {{else if coinOperType == 3}}
                        充值/用户入款
                        {{else if coinOperType == 2}}
                        提现/用户出款
                        {{else if coinOperType == 11}}
                        投注/投注扣款
                        {{else if coinOperType == 12}}
                        派奖/投注派奖
                        {{else if coinOperType == 13}}
                        撤单/投注撤单
                        {{else if coinOperType == 14}}
                        手动扣款
                        {{else if coinOperType == 15}}
                        手动存款
                        {{else if coinOperType == 16}}
                        提现/用户出款（拒绝）
                        {{else if coinOperType == 17}}
                        彩票返水
                        {{else if coinOperType == 18}}
                        彩票返点
                        {{else if coinOperType == 19}}
                        代理佣金
                        {{/if}}
                      </i>
                    </span>
                        <span>余额：{{leftCoin}}元</span>
                    </div>
                </div>
            </div>
        </div>
    </li>
</script>
<c:import url="../../../common/bodyEnd.jsp"/>