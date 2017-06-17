<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script>
    $(function() {
        // 初始化子页面
        initSubPage();

        // 切换玩法
        $(".group ul li p span").click(function () {
            $(".group ul li p span.acti").removeClass("acti");
            $(this).addClass("acti");

            // 初始化子页面
            initSubPage();
        });
    });
</script>
