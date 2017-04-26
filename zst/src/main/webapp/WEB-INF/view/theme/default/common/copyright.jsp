<%@ page import="java.util.Calendar" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="row copyright">
    <div class="col-100">
        <span>Copyright&nbsp;&copy;&nbsp;2009-<%=Calendar.getInstance().get(Calendar.YEAR)%>&nbsp;600万彩票网 版权所有</span>
    </div>
</div>