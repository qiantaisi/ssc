<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../common/bodyStart.jsp"/>
<c:import url="../common/checkIsChildFrame.jsp"/>
<c:import url="top.jsp"/>

<c:import url="menu.jsp"/>

<jsp:include page="../../../public/index/login.jsp" />

<c:import url="bottom.jsp"/>

<div class="copy recopy">
    <c:import url="../common/copyright_time.jsp"/>&nbsp;&nbsp;
</div>

<script type="text/html" id="template_khxy">
    ${khxy.khxy}
</script>

<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/jsCommonLogin.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>
