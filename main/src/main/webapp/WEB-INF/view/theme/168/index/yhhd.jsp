<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../common/bodyStart.jsp"/>
<c:import url="../common/checkIsChildFrame.jsp" />
<c:import url="top.jsp"/>

<div class="men_lists">
    <div class="wid2">
        <c:import url="../index/menu.jsp" >
            <c:param name="yhhd" value="3" />
        </c:import>
    </div>
</div>

<jsp:include page="../../../public/index/yhhd.jsp" />

<c:import url="bottom.jsp" />
<c:import url="../common/commonJs.jsp" />
<c:import url="../common/jsCommonLogin.jsp" />
<c:import url="../common/bodyEnd.jsp" />
