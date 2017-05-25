<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp" />
<div class="wid-1200 helpCont clearfix">
    <c:import url="common/head.jsp"/>
    <div class="clean"></div>
    <div>
        <c:import url="common/leftNav.jsp"/>
        <iframe id="indexRightFrame" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm" name="ifm"  width="100%"></iframe>
    </div>
    <div class="clean"></div>
    <div class="bottom ">
        <p class="webDbxx"></p>
    </div>
    <div class="alert">
        <div class="alert_col"><span></span></div>
    </div>
</div>

<c:import url="common/commonJs.jsp"/>
<script type="text/html" src="${resPath}member/js/index.js"></script>
<c:import url="../common/checkOnline.jsp" />
<c:import url="common/bodyEnd.jsp"/>