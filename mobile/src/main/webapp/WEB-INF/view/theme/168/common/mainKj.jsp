<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<%--今日开奖图片--%>
<c:if test="${not empty allDataHistory && not empty allDataHistory.sscHistoryList && not empty param.playGroupId}">
    <c:forEach items="${allDataHistory.sscHistoryList}" var="item">
        <c:if test="${item.playGroupId == param.playGroupId}">
            <c:set var="currentday">
                <fmt:formatDate value="<%=DateUtils.getBeijingCalendar().getTime()%>" pattern="yyyy-MM-dd" type="date"/>
            </c:set>
            <c:set var="openTime">
                <fmt:formatDate value="${item.openTime}" pattern="yyyy-MM-dd" type="date"/>
            </c:set>
            <c:if test="${currentday eq openTime}">
                <em class="kj">
                    <img src="${resPath}img/new_zcw/jrkj.png"/>
                </em>
            </c:if>
        </c:if>
    </c:forEach>
</c:if>