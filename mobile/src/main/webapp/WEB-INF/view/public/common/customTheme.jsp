<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script>
    var fengge1 = '${fengge_1}';
</script>
<%--自定义风格--%>
<c:if test="${not empty fengge_1}">
    <style>
        .cl-102 .cl-103,.page .bar-nav{background:#${fengge_1}!important}
        .cl-701 .button.active span,.cl-701 .button.active span,.gonggao_title,.cl-801,.cl-306 .list-block ul li a .item-inner .cl-307:first-child span:last-child,.cl-330 a,.edit_color,.cl-318 .info,.glxq{color:#${fengge_1}!important}
        .cl-952,.cl-102 .cl-103.yhkgl_moren{background-color:#009df7!important}
        .cl-701 .button.active{border-bottom:1px solid #${fengge_1}!important}
        #page-yhhd .bar-nav,.rebuttons-tab .button.active span,#buttonsTabList .button.active span{ background:#${fengge_1}!important;}

        /*快钱投注界面风格样式*/
        .cl-1201 i:not(.ball-ts),.ball-orange,.active_gfwf,.layui-m-layerchild h3{background-color:#${fengge_1}!important}
        .cl-904 .openNumber i:not(.ball-ts),.wrap .cus_common .wan_top .wanwei{background-color:#${fengge_1}!important}
        #ssc-parent-menu .cl-602 a.active{border-bottom: 2px solid #${fengge_1}!important;color:#${fengge_1}!important;}
        .cl-604 table tbody tr td.active,#btn-submit .cl-952,.cl-953-jx{background:#${fengge_1}!important; color:white!important;}
        .cl-604 table tbody tr td span:nth-child(1),.cl-603,.cl-607 font,.native-scroll .cl-603,.wrap .cus_common .wan_bottom .cus-flex-item,#nowMoney{color:#${fengge_1}!important;}
        .gfwf_xz .xuan .xuan2,.x_wrap,.F2_color{color:#${fengge_1}!important;}
        .zxfs{border: 1px solid #${fengge_1}!important; color:#${fengge_1}!important;}
        .color_two,.playPlRangeContainer{border: 1px solid #${fengge_1}!important;}
        .x_wrap .x_1{border-bottom:2px solid #${fengge_1}!important;}
        .mode_select.selected,#buttonsTabList .buttons-tab .button.active span{background: #${fengge_1}!important;}
        #betContainer .cl-604 span.ball-blue,#betContainer .cl-604 span.ball-green,#betContainer .cl-604 span.ball-red{color: #fff!important;}
        #betContainer .cl-604 .pkbg-1, #betContainer .cl-604 .pkbg-2, #betContainer .cl-604 .pkbg-3, #betContainer .cl-604 .pkbg-4, #betContainer .cl-604 .pkbg-5, #betContainer .cl-604 .pkbg-6, #betContainer .cl-604 .pkbg-7, #betContainer .cl-604 .pkbg-8, #betContainer .cl-604 .pkbg-9, #betContainer .cl-604 .pkbg-10{color: #fff!important;}
        .cl-604 table tbody tr td.active span:nth-child(1){color: white!important;}
        .clearBet_template .l span i{background: #${fengge_1} url(${bottomCssResPath}${themeBottomNav}/img/tm-mdl-icon.png) no-repeat!important; background-size: 100%!important; background-position: 0 41%!important;;}

        <%--.eveb_nav_sub .on,.game_name .box2_stage p span{border:1px solid #${fengge_1}!important;}--%>
        <%--.eveb_nav_sub .on,.game_name .box2_stage p span i.acti{color:#fff!important;}--%>
        <%--.eveb_nav_sub .on a{border-top:1px #${fengge_1} solid!important;}--%>
        <%--.eveb_nav_sub ul{border-bottom:1px #${fengge_1} solid!important;}--%>
    </style>
</c:if>
<c:if test="${not empty fengge_2}">
    <style>
        <%--.head div h5,.Betting .tabs ul li,.top .nav h1{background:#${fengge_2}!important}--%>
        <%--.jf_box .url a,.eveb_form label.error,.eveb_transfer_box .center_wallet .money,.eveb_transfer_box .wallet_list li p{color:#${fengge_2}!important}--%>
        <%--.Betting .tabs ul li.acti{background:#fff!important}--%>
        <%--.button_1, .button_1:link, .button_1:visited{border:1px solid #${fengge_2}!important;}--%>
    </style>
</c:if>