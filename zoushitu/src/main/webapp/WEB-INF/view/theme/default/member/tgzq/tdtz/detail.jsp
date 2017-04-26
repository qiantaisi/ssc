<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="com.petsathall.project.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../../common/bodyStart.jsp"/>
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
            <h1 class="title">团队投注-注单明细</h1>
        </header>
        <div class="content">
            <div class="content-block cl-300">
                <div class="list-block">
                    <ul>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">订单号</div>
                                <div class="item-after">${data.orderNumber}</div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">彩种</div>
                                <div class="item-after">${data.playGroupName}</div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">期数</div>
                                <div class="item-after">第<font>${data.number}</font>期</div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">玩法</div>
                                <div class="item-after">${data.playName}</div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">投注号码</div>
                                <div class="item-after">${data.content}</div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">开奖号码</div>
                                <div class="item-after">
                                    <c:choose>
                                        <c:when test="${not empty data.openCode}">
                                            ${data.openCode}
                                        </c:when>
                                        <c:otherwise>
                                            未开奖
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">投注数量</div>
                                <div class="item-after">${data.zhushu}</div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">单注金额</div>
                                <div class="item-after">${data.perMoney}</div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">投注总额</div>
                                <div class="item-after">${data.totalMoney}</div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">中奖金额</div>
                                <div class="item-after">${data.zjMoney}</div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">交易时间</div>
                                <div class="item-after"><fmt:formatDate value="${data.createTime}" pattern="yyyy-MM-dd HH:mm:ss" /></div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">状态</div>
                                <div class="item-after">
                                    <c:choose>
                                        <c:when test="${data.status == 0}">
                                            等待开奖
                                        </c:when>
                                        <c:when test="${data.status == 2}">
                                            已撤单
                                        </c:when>
                                        <c:when test="${data.zjMoney > 0}">
                                            已中奖
                                        </c:when>
                                        <c:when test="${data.zjMoney < 0}">
                                            未中奖
                                        </c:when>
                                    </c:choose>
                                </div>
                            </div>
                        </li>
                        <li class="item-content">
                            <div class="item-inner">
                                <div class="item-title">盈亏</div>
                                <div class="item-after">${data.winOrLose}</div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="row cl-301">
                    <div class="col-100">
                        <a href="<%=basePath%>kefu.html" class="external" target="_blank">对此注单有疑问</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="../../../common/commonJs.jsp"/>
<c:import url="../../../common/bodyEnd.jsp"/>