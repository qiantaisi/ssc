<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<c:import url="../common/checkIsChildFrame.jsp" />
<c:import url="top.jsp"/>
<div class="men_lists">
    <div class="wid1">
        <c:import url="../index/menu.jsp" >
            <c:param name="yhhd" value="3" />
        </c:import>
    </div>
</div>

<jsp:include page="../../../public/index/yhhd.jsp" />

<c:import url="../common/bottomInfo.jsp" />
<c:import url="../common/commonJs.jsp" />
<c:import url="../common/jsCommonLogin.jsp" />
<c:import url="../common/bodyEnd.jsp" />
