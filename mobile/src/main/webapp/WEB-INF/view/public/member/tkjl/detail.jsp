<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-czjl">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">提款明细</h1>
        </header>
        <div class="content">
            <div class="content-block cl-300 cl-504">
                <div class="cl-500 bg-white">
                    <p class="cl-501">
                        <img src="${resPath}img/ico11.png" alt="">
                        <span>${userSession.account}</span>
                    </p>
                    <p class="cl-502">
                        <c:choose>
                            <c:when test="${data.status == 0}">
                                ${data.money}
                            </c:when>
                            <c:when test="${data.status == 1}">
                                ${data.money}
                            </c:when>
                            <c:when test="${data.status == 2}">
                                -${data.money}
                            </c:when>
                        </c:choose>

                    </p>
                    <p class="cl-503">
                        <c:choose>
                            <c:when test="${data.status == 0}">
                                <font style="color:#15a0f0">正在出款...</font>
                            </c:when>
                            <c:when test="${data.status == 1}">
                                <font style="color:#56b768">出款成功</font>
                            </c:when>
                            <c:when test="${data.status == 2}">
                                <font style="color:#e81a0a">出款拒绝</font>
                            </c:when>
                        </c:choose>
                    </p>
                </div>
                <div class="list-block bg-white">
                    <ul>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">订单号</div>
                                <div class="item-after">${data.orderNo}</div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">时间</div>
                                <div class="item-after"><fmt:formatDate value="${data.time}" pattern="yyyy-MM-dd HH:mm:ss" /></div>
                            </div>
                        </li>
                        <%--<li class="item-content">--%>
                            <%--<div class="item-inner">--%>
                                <%--<div class="item-title">出款方式</div>--%>
                                <%--<div class="item-after">--%>
                                    <%--<c:choose>--%>
                                        <%--<c:when test="${data.type == 1}">--%>
                                            <%--银行出款--%>
                                        <%--</c:when>--%>
                                    <%--</c:choose>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">备注</div>
                                <div class="item-after">${data.remarks}</div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="row cl-301">
                    <div class="col-100">
                        <a href="<%=basePath%>kefu.html" class="external" target="_blank">对此订单有疑问</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>