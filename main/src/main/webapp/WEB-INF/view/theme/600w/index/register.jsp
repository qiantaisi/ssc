<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../common/bodyStart.jsp" />
<c:import url="../common/checkIsChildFrame.jsp" />
<c:import url="top.jsp" />
<style>.login_main,.img{position:initial;margin:auto;}.img a{overflow:hidden;display:block;text-align:center;}.img img{margin:auto;}.img{padding:15px 0;}</style>
<div style="overflow:hidden;background:url(${resPath}img/bj.jpg) repeat-y center;padding-bottom:15px;overflow:hidden;">
    <div class="img"><a href="<%=basePath%>"><img src="<%=basePath%>images/logo.png" alt="" height="40"></a></div>
    <%--<img src="${resPath}img/bj.jpg" class="back" alt="" width="100%";   style="height: 1000px;">--%>
    <jsp:include page="../../../public/index/register.jsp" />
    <div class="copy">
        <c:import url="../common/copyright_time.jsp"/>&nbsp;&nbsp;
    </div>
</div>
<c:import url="../common/bodyEnd.jsp" />