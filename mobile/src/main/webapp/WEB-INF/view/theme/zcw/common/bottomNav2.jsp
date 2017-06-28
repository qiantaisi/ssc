<%@ page import="project38.ssc.mobile.interceptors.BasePathInterceptor" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<nav class="number_bar number_bar-tab number_c1-101">
    <a data-name="n1" class="active" href="<%=basePath%>" data-name="index">
        <img class="W" src="${resPath}img/Bottom/footer_01.png"/>
        <img class="H" src="${resPath}img/Bottom/footer_001.png"/>
        <span>首页</span>
    </a>
    <a data-name="n2" class="n2" href="<%=basePath%>ssc/gcdt.html" data-name="gcdt">
        <img src="${resPath}img/Bottom/footer_02.png"/>
        <span>购彩大厅</span>
    </a>
    <a data-name="n3" href="<%=basePath%>ssc/kjjl/all.html" data-name="kj">
        <img src="${resPath}img/Bottom/footer_03.png"/>
        <span>开奖</span>
    </a>
    <a data-name="n4" href="<%=basePath%>ssc/zst/ffssc/jbzst.html" data-name="zst">
        <img src="${resPath}img/Bottom/footer5_08.png"/>
        <span>走势图</span>
    </a>
    <a data-name="n5" href="<%=basePath%>member/index.html" data-name="grzx">
        <img src="${resPath}img/Bottom/footer_05.png"/>
        <span>个人中心</span>
    </a>
</nav>