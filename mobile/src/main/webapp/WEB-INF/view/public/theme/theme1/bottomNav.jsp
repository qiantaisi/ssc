<%@ page import="project38.ssc.mobile.interceptors.BasePathInterceptor" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    request.setAttribute("themeBottomNav", "theme1");
%>
<nav class="number_bar number_bar-tab number_c1-101">
    <a class="n1" href="<%=basePath%>" data-name="index">
        <img class="barImg1" src="${bottomCssResPath}${themeBottomNav}/img/Bottom/footer_001.png"/>
        <img class="barImg2" src="${bottomCssResPath}${themeBottomNav}/img/Bottom/footer_01.png"/>
        <span>首页</span>
    </a>
    <a class="n2" href="<%=basePath%>ssc/gcdt.html" data-name="gcdt">
        <img class="barImg1" src="${bottomCssResPath}${themeBottomNav}/img/Bottom/footer_02.png"/>
        <img class="barImg2" src="${bottomCssResPath}${themeBottomNav}/img/Bottom/footer_002.png"/>
        <span>购彩大厅</span>
    </a>
    <a class="n3" href="<%=basePath%>ssc/kjjl/all.html" data-name="kj">
        <img class="barImg1" src="${bottomCssResPath}${themeBottomNav}/img/Bottom/footer_03.png"/>
        <img class="barImg2" src="${bottomCssResPath}${themeBottomNav}/img/Bottom/footer_003.png"/>
        <span>开奖</span>
    </a>
    <a class="n4" href="<%=basePath%>ssc/zst/ffssc/jbzst.html" data-name="zst">
        <img class="barImg1" src="${bottomCssResPath}${themeBottomNav}/img/Bottom/footer5_08.png"/>
        <img class="barImg2" src="${bottomCssResPath}${themeBottomNav}/img/Bottom/footer5_088.png"/>
        <span>走势图</span>
    </a>
    <a class="n5" href="<%=basePath%>member/index.html" data-name="grzx">
        <img  class="barImg1" src="${bottomCssResPath}${themeBottomNav}/img/Bottom/footer_05.png"/>
        <img  class="barImg2" src="${bottomCssResPath}${themeBottomNav}/img/Bottom/footer_005.png"/>
        <span>个人中心</span>
    </a>
</nav>
<script>
    //购彩大厅页底部按钮初始化选中状态
    function initBottomNavGcdt() {
        //底部按钮选中状态
        $(".number_c1-101 a.active").removeClass('active');
        $(".number_c1-101 a.n2").addClass('active');
        $(".number_c1-101 .n2 .barImg1").hide();
        $(".number_c1-101 .n2 .barImg2").show();
    }

    //首页页底部按钮初始化选中状态
    function initBottomNavIndex() {
        //底部按钮选中状态
        $(".number_c1-101 a.active").removeClass('active');
        $(".number_c1-101 a.n1").addClass('active');
        $(".number_c1-101 .n1 .barImg1").hide();
        $(".number_c1-101 .n1 .barImg2").show();
    }

    //开奖结果页底部按钮初始化选中状态
    function initBottomNavKjjg() {
        //底部按钮选中状态
        $(".number_c1-101 a.active").removeClass('active');
        $(".number_c1-101 a.n3").addClass('active');
        $(".number_c1-101 .n3 .barImg1").hide();
        $(".number_c1-101 .n3 .barImg2").show();
    }

    //个人中心页底部按钮初始化选中状态
    function initBottomNavMbmber() {
        //底部按钮选中状态
        $(".number_c1-101 a.active").removeClass('active');
        $(".number_c1-101 a.n5").addClass('active');
        $(".number_c1-101 .n5 .barImg1").hide();
        $(".number_c1-101 .n5 .barImg2").show();
    }
</script>