<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<%
    String clientType = request.getParameter("clientType");
%>
<c:if test="${param.clientType == 'IOS' || param.clientType == 'Android'}">
    <style>header{display:none!important}.content{top:0!important}.zst-content{height:calc(100vh - 1.8rem - 3.2rem - 23px - 2.5rem + 0.8rem + 2.2rem)}</style>
</c:if>