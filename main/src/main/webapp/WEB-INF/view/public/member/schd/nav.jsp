<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="eveb_nav_sub">
    <ul class="clearfix">
        <li><a href="javascript:void(0)" onclick="goSubPage(this)" data-url="<%=basePath%>member/schd/yhqb.html">优惠钱包</a></li>
        <li><a href="javascript:void(0)" onclick="goSubPage(this)" data-url="<%=basePath%>member/schd/tjfl.html">推荐返利</a></li>
    </ul>
</div>
<script>
    $(function() {
        $(".eveb_nav_sub ul li:first a").trigger("click");
    });
</script>