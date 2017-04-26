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
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-agent-hylb">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link button-nav pull-right" href="<%=basePath%>member/tgzq/tjhy.html">
                <span class="icon icon-add"></span>
                添加
            </a>
            <h1 class="title">会员列表</h1>
        </header>
        <div class="bar bar-header-secondary cl-1352">
            <div class="searchbar">
                <div class="search-input">
                    <p id="block-search">
                        <img src="${resPath}img/ico63.png" alt="">
                        点击搜索
                    </p>
                    <input type="search" id="search" />
                </div>
            </div>
        </div>
        <div class="content pull-to-refresh-content infinite-scroll infinite-scroll-bottom" id="dataList">
            <!-- 默认的下拉刷新层 -->
            <div class="pull-to-refresh-layer">
                <div class="preloader"></div>
                <div class="pull-to-refresh-arrow"></div>
            </div>
            <div class="cl-1351" style="height:100%;">
                <table class="cl-1350">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>用户名</th>
                        <th>输赢</th>
                        <th>余额</th>
                        <th>佣金</th>
                    </tr>
                    </thead>
                    <tbody class="list-container">
                    </tbody>
                </table>
            </div>
            <!-- 加载提示符 -->
            <div class="infinite-scroll-preloader">
                <div class="preloader"></div>
            </div>
        </div>
    </div>
    <%--<div class="panel-overlay"></div>--%>
    <%--<div class="panel panel-right panel-reveal cl-208" id='panel-right'>--%>
        <%--<div class="content-block">--%>
            <%--<header class="bar bar-nav">--%>
                <%--<a class="button button-link button-nav pull-left close-panel">--%>
                    <%--<span class="icon icon-left"></span>--%>
                <%--</a>--%>
                <%--<!-- <button class="button button-link button-nav pull-right"> -->--%>
                <%--<a class="button button-link pull-right" id="btn-shaixuan">--%>
                    <%--筛选--%>
                <%--</a>--%>
                <%--<h1 class="title">筛选</h1>--%>
            <%--</header>--%>
            <%--<div class="content">--%>
                <%--<div class="list-block">--%>
                    <%--<ul class="list-container">--%>
                        <%--<li>--%>
                            <%--<div class="item-content item-link">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-input">--%>
                                        <%--<input type="text" placeholder="注册开始时间" id="startTime" class="cl-802">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="item-content item-link">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-input">--%>
                                        <%--<input type="text" placeholder="注册结束时间" id="endTime" class="cl-802">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="item-content">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-title label">账号</div>--%>
                                    <%--<div class="item-input">--%>
                                        <%--<input type="text" name="account" placeholder="任意" />--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
</div>
<c:import url="../../common/commonJs.jsp"/>
<%--<script type="text/html" id="template_item">--%>
    <%--<div class="card">--%>
        <%--<div class="card-header">--%>
            <%--<i class="icon icon-form-dlzh"></i>--%>
            <%--<span>{{account}}</span>--%>
        <%--</div>--%>
        <%--<div class="card-content">--%>
            <%--<div class="card-content-inner">--%>
                <%--<div class="list-block">--%>
                    <%--<ul>--%>
                        <%--&lt;%&ndash;<li class="item-content">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<div class="item-inner">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<div class="item-title">注册日期</div>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<div class="item-after">{{registerTime | dateFormat:'yyyy-mm-dd HH:MM:ss'}}</div>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                        <%--<li class="item-content">--%>
                            <%--<div class="item-inner">--%>
                                <%--<div class="item-title">余额</div>--%>
                                <%--<div class="item-after">{{balance}}</div>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li class="item-content">--%>
                            <%--<div class="item-inner">--%>
                                <%--<div class="item-title">输赢</div>--%>
                                <%--<div class="item-after">{{winOrLose}}</div>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--&lt;%&ndash;<li class="item-content">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<div class="item-inner">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<div class="item-title">有效投注</div>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<div class="item-after">{{totalEffectiveBetMoney}}</div>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                        <%--<li class="item-content">--%>
                            <%--<div class="item-inner">--%>
                                <%--<div class="item-title">返点</div>--%>
                                <%--<div class="item-after">{{totalFandianMoney}}</div>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--&lt;%&ndash;<li class="item-content">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<div class="item-inner">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<div class="item-title">是否启用</div>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<div class="item-after">&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<div class="item-input">&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;<label class="label-switch">&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;{{if enable == true}}&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;<input type="checkbox" checkbox_id="{{id}}" checked />&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;{{else}}&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;<input type="checkbox" checkbox_id="{{id}}" />&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;{{/if}}&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;<div class="checkbox sfqy" data-id="{{id}}"></div>&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;</label>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="card-footer">--%>
            <%--<a href="javascript:void(0)"></a>--%>
            <%--{{if enable == true}}--%>
            <%--<a href="javascript:void(0)" class="button button-fill button-danger jinyong" data-id="{{id}}">禁用</a>--%>
            <%--{{else}}--%>
            <%--<a href="javascript:void(0)" class="button button-fill button-success qiyong" data-id="{{id}}">启用</a>--%>
            <%--{{/if}}--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</script>--%>
<script type="text/html" id="template_item">
    <tr>
        <td>{{xuhao}}</td>
        <td>{{account}}</td>
        <td>{{winOrLose}}</td>
        <td>{{balance}}</td>
        <td>{{totalFandianMoney}}</td>
    </tr>
</script>
<c:import url="../../common/bodyEnd.jsp"/>