<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="com.petsathall.project.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-kefu">
        <style>iframe{width:100%;height:100%;overflow-x:hidden;overflow-y:hidden;padding:0;margin:0;}</style>
        <script>
            if (history.length == 1) {
                document.write("<style>.bar{display:none;}.bar-nav~.content{top:0}</style>");
            }
        </script>
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <h1 class="title">
                <a href="javascript:void(0)"><img src="${resPath}img/ico13.png" alt="" height="100%"></a>
            </h1>
        </header>
        <div class="content">
            <iframe src="${kefuUrl}" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm" name="ifm"  width="100%"></iframe>
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<script></script>
<c:import url="../common/bodyEnd.jsp"/>