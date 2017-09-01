<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-kjjl-list">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">开奖记录</h1>
        </header>
        <div class="content pull-to-refresh-content infinite-scroll infinite-scroll-bottom">
            <!-- 默认的下拉刷新层 -->
            <div class="pull-to-refresh-layer">
                <div class="preloader"></div>
                <div class="pull-to-refresh-arrow"></div>
            </div>
            <div class="buttons-tab rebuttons-tab" id="buttonsTabList">
                <c:choose>
                    <c:when test="${playGroupId == 4 || playGroupId == 5 || playGroupId == 6 || playGroupId == 12}">
                        <a href="#" class="tab-link button" data-id="btn-thisWeek"><span>本周</span></a>
                        <a href="#" class="tab-link button" data-id="btn-lastWeek"><span>上周</span></a>
                        <a href="#" class="tab-link button" data-id="btn-thisMonth"><span>本月</span></a>
                    </c:when>
                    <c:otherwise>
                        <a href="#" class="tab-link button" data-id="btn-today"><span>今日</span></a>
                        <a href="#" class="tab-link button" data-id="btn-yesterday"><span>昨日</span></a>
                        <a href="#" class="tab-link button" data-id="btn-preYesterday"><span>前日</span></a>
                    </c:otherwise>
                </c:choose>
                <a href="#" class="tab-link button" data-id="btn-zdy"><span>自定义</span></a>
            </div>
            <div class="content-block cl-8 cl-990">
                <div class="no-right-record hide"></div>
                <div class="list-block media-list" id="dataList">
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
                                    <div class="item-title label">开奖日期</div>
                                    <div class="item-input">
                                        <input type="text" placeholder="请选择开奖日期" id="inputOpenDate" >
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content item-link">
                                <div class="item-inner">
                                    <div class="item-title label">彩种</div>
                                    <div class="item-input">
                                        <input type="text" id='inputCaizhong' value="任意" />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content item-link no-link">
                                <div class="item-inner">
                                    <div class="item-title label">期号</div>
                                    <div class="item-input">
                                        <input type="text" name="number" placeholder="请输入期号" />
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
<c:import url="../../common/commonJs.jsp"/>
<script>
    var globalPlayGroupId = '${playGroupId}';
</script>
<c:import url="common/template.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>