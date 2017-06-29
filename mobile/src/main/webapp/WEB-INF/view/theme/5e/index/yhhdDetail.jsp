<%@ page import="project38.api.common.utils.JSONUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-yhhd">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <h1 class="title tit_style">
                活动详情
            </h1>
        </header>

        <div class="content">
            <div class="card">
                <div class="card-header" style="display:block;color:#000">
                    <div style="font-size:0.7rem;">${promotion.name}</div>
                    <div style="font-size:0.6rem;color:#8D8D8D">活动时间： <fmt:formatDate value="${promotion.startTime}"
                                                                                      pattern="yy/MM/dd"/>~<fmt:formatDate
                            value="${promotion.endTime}" pattern="yy/MM/dd"/></div>
                </div>
                <div valign="bottom" class="card-header color-white no-border no-padding"
                     style="margin:10px 15px!important">
                    <img class='card-cover' src="<%=basePath%>images/${promotion.smallImageId}.png" alt="">
                </div>
                <div class="card-detail" style="padding:0 15px 10px 15px!important">
                    ${promotion.content}
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>