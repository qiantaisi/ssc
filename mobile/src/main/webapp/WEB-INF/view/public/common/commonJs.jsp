<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<jsp:include page="../../common/commonJs.jsp" />
<script src="${resPath}js/script.js?v=20170815"></script>
<%--购彩按钮颜色变换-购彩走势图--%>
<script src="${resPath}js/gfwf.js?v=201708015"></script>

<script language="javascript">
    var colorStr = "#${fengge_1}";
    function changeColor() {
        var color = "blue|" + colorStr + "";
        color = color.split("|");
        $("#blink").css("color",color[parseInt(Math.random() * color.length)]);
    }
    setInterval("changeColor()", 230);
</script>