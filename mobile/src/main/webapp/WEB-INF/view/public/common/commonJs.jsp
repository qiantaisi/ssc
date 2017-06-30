<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<jsp:include page="../../common/commonJs.jsp" />
<script src="${resPath}js/script.js?v=<%=(new Date()).getTime()%>"></script>
<script src="${resPath}js/gfwf.js?v=<%=(new Date()).getTime()%>"></script>
<%--购彩按钮颜色变换-购彩走势图--%>
<script language="javascript">
    var colorStr = "#${fengge_1}";
    function changeColor() {
        var color = "blue|" + colorStr + "";
        console.log("12");
        color = color.split("|");
        document.getElementById("blink").style.color = color[parseInt(Math.random() * color.length)];
    }
    setInterval("changeColor()", 230);
</script>