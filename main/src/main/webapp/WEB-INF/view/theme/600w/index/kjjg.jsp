<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<%--<c:import url="../common/checkIsChildFrame.jsp" />--%>
<c:import url="top.jsp"/>

<div class="men_list">
    <div class="wid1">
        <div class="logo mt0">
            <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt=""></a>
            <a href="javascript:void(0)" onclick="clickxuan()"><h1>选择彩种<i class="acti1"></i></h1></a>
            <div class="left_layout">
                <c:import url="leftMenu.jsp" />
            </div>
        </div>

        <c:import url="../common/navList.jsp" />
    </div>
</div>

<jsp:include page="../../../public/index/kjjg.jsp" />

<c:import url="../common/bottomInfo.jsp"/>
<c:import url="../common/copyright.jsp"/>
<c:import url="../common/jsCommonLogin.jsp"/>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>