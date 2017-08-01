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
    <div class="page page-current" id="page-gonggao">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">公告</h1>
        </header>
        <div class="content">
            <c:forEach items="${popupNoticeList}" var="item">
                <div class="card">
                    <div class="card-header" style="display:block;color:#000;margin:5px;padding-bottom:0;padding:10px!important">
                        <div class="gonggao_title">${item.title}</div>
                        <div class="gonggao_time">公告时间： <fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss" /></div>
                        <div class="card-detail gonggao_content">
                                ${item.content}
                        </div>
                    </div>

                </div>
            </c:forEach>
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>