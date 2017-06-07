<%@ page import="org.apache.commons.lang3.StringUtils" %>
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
                活动
            </h1>
        </header>

        <div class="content">
            <c:forEach items="${promotionList}" var="item">
                <div class="card" onclick="window.location.href='<%=basePath%>yhhd/${item.id}.html'">
                    <div class="card-header" style="display:block;color:#000">
                        <div style="font-size:0.7rem;">${item.name}</div>
                        <div style="font-size:0.6rem;color:#8D8D8D">活动时间： <fmt:formatDate value="${item.startTime}"
                                                                                          pattern="yy/MM/dd"/>~<fmt:formatDate
                                value="${item.endTime}" pattern="yy/MM/dd"/></div>
                    </div>
                    <div valign="bottom" class="card-header color-white no-border no-padding"
                         style="padding:5px!important">
                        <img class='card-cover' src="<%=basePath%>images/${item.smallImageId}" alt="">
                    </div>
                    <div class="card-footer">
                        <a href="javascript:void(0)" class="link" style="font-size:0.7rem;color:#000">查看详情</a>
                        <a href="javascript:void(0)" class="link"><span class="join-icon"></span></a>
                    </div>
                </div>
                <%--<div class="app-list-box yhhd_${item.id}">--%>
                <%--<div class="list-tit">--%>
                <%--<h3 class="tit-h3">${item.name}</h3>--%>
                <%--<p class="tit-time">活动时间： <fmt:formatDate value="${item.startTime}" pattern="yyyy/MM/dd" /></p>--%>
                <%--</div>--%>
                <%--<div class="list-pic">--%>
                <%--<img src="<%=basePath%>images/${item.smallImageId}" class="detail-cont" data-id="${item.id}" alt="">--%>
                <%--</div>--%>
                <%--<div class="yhhd-detail">--%>
                <%--<a class="item-content item-link detail-cont" data-id="${item.id}">--%>
                <%--查看详情--%>
                <%--<span class="join-icon"></span>--%>
                <%--</a>--%>
                <%--</div>--%>
                <%--<div class="list-content" style="display: none">${item.content}</div>--%>
                <%--</div>--%>
            </c:forEach>
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>