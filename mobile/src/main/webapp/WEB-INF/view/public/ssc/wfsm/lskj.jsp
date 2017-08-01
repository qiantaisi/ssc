<%@ page import="org.apache.commons.lang3.StringUtils" %>
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
    <div class="page page-current" id="page-wfsm-lskj">
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
        <div class="content cl-700 pull-to-refresh-content infinite-scroll infinite-scroll-bottom">
            <!-- 默认的下拉刷新层 -->
            <div class="pull-to-refresh-layer">
                <div class="preloader"></div>
                <div class="pull-to-refresh-arrow"></div>
            </div>
            <div class="buttons-tab cl-701" id="buttonsTabList">
                <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${playGroupId}" class="button" data-id="btn-bqxq"><span>玩法说明</span></a>
                <a href="<%=basePath%>ssc/wfsm/lskj.html?playGroupId=${playGroupId}" class="active button" data-id="btn-gdqc"><span>历史开奖</span></a>
            </div>
            <div class="content-block cl-8 cl-990">
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
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../kjjl/common/template.jsp"/>
<script>
    var globalPlayGroupId = ${playGroupId};
</script>
<c:import url="../../common/bodyEnd.jsp"/>