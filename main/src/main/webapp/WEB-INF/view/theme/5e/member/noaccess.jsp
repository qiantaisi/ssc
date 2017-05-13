<%@ page import="project38.api.common.utils.JSONUtils" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="org.apache.commons.lang3.time.DateFormatUtils" %>
<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="eveb_content">
    <img src="${resPath}member/images/noaccess.png" alt="" style="margin:auto;margin-top:15%;display:block;">
</div>
<c:import url="common/commonJs.jsp"/>
<c:import url="common/subCommonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>