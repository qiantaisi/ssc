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
<style>.login_main,.img{position:initial;margin:auto;}.img a{overflow:hidden;display:block;text-align:center;}.img img{margin:auto;}.img{padding:15px 0;}.copy{position:initial;display:block;text-align:center;margin:auto;height:20px;line-height:20px;padding:10px 0;}.login_nr_b{padding:40px 10px 60px 200px}
html{background:url(${resPath}img/bj.jpg) repeat-y ;background-size:100%;height:100%;}</style>
<div style="overflow:hidden;overflow:hidden;max-height:850px;">
    <div class="img"><a href="<%=basePath%>"><img src="<%=basePath%>images/logo.png" alt="" height="40"></a></div>
    <jsp:include page="../../../public/index/register.jsp" />
    <div class="copy">
        <c:import url="../common/copyright_time.jsp"/>&nbsp;&nbsp;
    </div>
</div>
<c:import url="../common/bodyEnd.jsp" />