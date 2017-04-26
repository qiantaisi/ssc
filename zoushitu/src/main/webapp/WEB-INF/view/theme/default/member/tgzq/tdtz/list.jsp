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
    <div class="page page-current" id="page-agent-tdtz-list">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">团队投注</h1>
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
                                    <div class="item-title label">彩种类型</div>
                                    <div class="item-input">
                                        <input type="text" id='inputCaizhong' value="任意" />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content item-link">
                                <div class="item-inner">
                                    <div class="item-title label">状态</div>
                                    <div class="item-input">
                                        <input type="text" id='inputStatus' value="任意" />
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
        <a href="<%=basePath%>member/tgzq/tdtz/detail.html?orderNumber={{orderNumber}}" class="item-content item-link">
            <div class="item-inner">
                <div class="item-after">
                    <div class="cl-210">
                        <%--<span>{{createTime | dateFormat:'yy-mm-dd'}}</span>--%>
                        <span>{{account}}</span>
                        <span>{{createTime | dateFormat:'HH:MM:ss'}}</span>
                    </div>
                    <div class="cl-210 caizhong-bg-{{playGroupId}}"></div>
                    <div class="cl-210">
                    <span>
                      <font>
                          {{if status == 0}}
                          <font>可赢：{{canWin}}元</font>
                          {{else if status == 1}}
                          {{if winOrLose > 0}}
                          <font style="color:green">输赢：+{{winOrLose}}元</font>
                          {{else}}
                          <font style="color:red">输赢：{{winOrLose}}元</font>
                          {{/if}}
                          {{/if}}
                      </font>
                      <i>
                          {{if status == 0}}
                          <font>等待开奖</font>
                          {{else if status == 1}}
                            {{if zjMoney > 0}}
                            <font>已中奖</font>
                            {{else}}
                            <font>未中奖</font>
                            {{/if}}
                          {{else if status == 1}}
                          <font>已撤单</font>
                          {{/if}}
                      </i>
                    </span>
                        <span>{{content}}</span>
                    </div>
                </div>
            </div>
        </a>
    </li>
</script>
<c:import url="../../../common/bodyEnd.jsp"/>