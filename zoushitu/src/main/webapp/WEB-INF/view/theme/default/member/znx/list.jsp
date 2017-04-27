<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
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
    <div class="page page-current" id="page-znx">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left" href="<%=basePath%>member/index.html">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">站内信</h1>
        </header>
        <div class="content pull-to-refresh-content infinite-scroll infinite-scroll-bottom">
            <!-- 默认的下拉刷新层 -->
            <div class="pull-to-refresh-layer">
                <div class="preloader"></div>
                <div class="pull-to-refresh-arrow"></div>
            </div>
            <div class="content-block cl-209 cl-306 cl-341">
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
</div>
<c:import url="../../common/commonJs.jsp"/>
<script type="text/html" id="template_item">
    <li>
        <a href="<%=basePath%>member/znx/detail.html?noticeId={{id}}" class="item-content item-link">
            <div class="item-inner" {{if hasRead == false}}style="color:red"{{/if}}>
                <div class="item-title">{{content}}</div>
                <div class="item-after">{{createTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
            </div>
        </a>
    </li>
</script>
<c:import url="../../common/bodyEnd.jsp"/>