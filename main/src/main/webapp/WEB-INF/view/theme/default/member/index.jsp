<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>会员中心</title>
    <link rel="icon" href="<%=basePath%>image/${icoData.imageId}" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="${resPath}member/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${resPath}member/css/hpn-common.css">
    <link rel="stylesheet" type="text/css" href="${resPath}member/css/index.css">
    <%--<link rel="stylesheet" type="text/css" href="<%=basePath%>static/global.css">--%>
    <link rel="stylesheet" type="text/css" href="${resPath}member/css/global.css">
    <c:import url="../common/commonHeader.jsp" />
</head>
<body>
<style>html{height:100%;width:100%;}iframe{width:100%;height:100%;overflow-x:hidden;overflow-y:hidden;padding:0;margin:0;}body{margin:0;padding:0;height:100%;overflow:visible;}.help_l_menu{padding:0;}.help_l_menu{margin:0;border:0;}.helpCont{width:100%;min-width:1000px;margin:auto;border:0;}.helpCont{overflow:hidden;}.help_l_menu,#ifm{height:0}</style>
<!-- help content s -->
<div class="wid-1200 helpCont clearfix">
    <c:import url="common/head.jsp"/>
    <div style="clear:both"></div>
    <div style="overflow:hidden;">
        <c:import url="common/leftNav.jsp"/>

        <%--<div class="help_r_main"></div>--%>
        <!-- right s -->
        <iframe src="" style="float:left;width:0;height:0;" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm" name="ifm"  width="100%"></iframe>
        <!-- right e -->
    </div>
    <div style="clear:both"></div>
    <div class="bottom ">
        <%--<p>Copyright Reserved © 600万彩票网 </p>--%>
        <p class="webDbxx"></p>
    </div>
    <div class="alert">
        <div class="alert_col"><span></span></div>
    </div>
</div>

<c:import url="common/commonJs.jsp"/>

<script>
    function getUserName() {
        var name=$(".fl .clearfix .name").text();
        return name;
    }
    function getContent() {
        $(".alert_col span").text();
    }

    $(window).resize(function(){
        resize();
    });
    $(function() {
        $("#leftNav li a").click(function() {
            $(".eveb_nav_hover").removeClass("eveb_nav_hover");
            $(".sli").removeClass("sli");
            $(this).addClass("sli").addClass("eveb_nav_hover");
            getPage($(this).data("module"));
        });
        resize();
//        $("#ifm").niceScroll({
//            cursorcolor:"#3f3f3f",
//            cursoropacitymax:1,
//            touchbehavior:false,
//            cursorwidth:"5px",
//            cursorborder:"0",
//            cursorborderradius:"5px",
//            autohidemode:false
//        });

        var module = '${param.module}';
        if (typeof module == 'undefined' || module == 'null' || !module || module == '') {
            module = 'main';
        }
        getPage(module);
    });
    function resize() {

        var width = $(window).width();
        if (width < 1000) {
            width = 1000;
        }

        var rightHeight = $(".help_l_menu").height();

        var rightHeight = $(window).height() - $(".head").height() - $(".bottom").height();
        if (rightHeight < 672) {
            rightHeight = 672;
        }
        $("body").height($(".top").height() + $(".bottom").height() + rightHeight + "px")
        $("body").width(width + "px");
        $(".helpCont").width(width + "px");
        var leftWidth = $(".help_l_menu").width();
        var rightWidth = width - leftWidth;
        $("#ifm").width(rightWidth);

        $(".help_l_menu").height(rightHeight + "px");
        $("#ifm").height(rightHeight + "px");

        setInterval(function(){
            var time = $("#bjTime").data("time");
            if (isNaN(time) || time < 0) {
                return;
            }
            $("#bjTime").html(Tools.formatDate(time));
            $("#bjTime").data("time", time + 1000);
        }, 1000);
//        autoGetServerTime();
//        setInterval(function() {
//            autoGetServerTime();
//        }, 15000);
    }
    function autoGetServerTime() {
        ajaxRequest({
            url:"<%=basePath%>time/ajaxGetServerTime.json",
            success: function(json) {
                if (json.result != 1) {
                    return;
                }
                $("#bjTime").data("time", json.serverTime);
            }
        });
    }

//    $(window).hashchange(function() {
//        getPage($.locationHash());
//    });

    $(function() {
        //getPage($.locationHash());
//        $(".account_list li a").each(function() {
//            $(this).data("group", $(this).attr("href").replace("#", "").split("-")[0]);
//        });
//        $(".account_list li a").click(function() {
//            getPage($(this).attr("href").replace("#", ""));
//        });
//        $(".account_list li:first a").trigger("click");
    });

    function goSubPage(obj) {
        $(obj).parent().parent().find(".on").removeClass("on");
        $(obj).parent().addClass("on");
        var href = $(obj).data("url");
        $.get(href, {}, function(html) {
            $(".eveb_content").html(html);
        });
    }

    function showLoading() {
        layer.load(2, {
            shade: [0.1,'#000'] //0.1透明度的白色背景
        })
        $("#layui-layer1").css({"left": "50%"});
    }

    function hideLoading() {
        layer.closeAll();
    }

    function getPage(module) {
        showLoading();
        $("#leftNav li a").each(function() {
            if ($(this).data("module").split("/")[0] == module.split("/")[0]) {
                $(".eveb_nav_hover").removeClass("eveb_nav_hover");
                $(".sli").removeClass("sli");
                $(this).addClass("sli").addClass("eveb_nav_hover");
                return;
            }
        });
        $("#ifm").attr("src", '<%=basePath%>member/' + module + '.html');
    }

    <%--function getPage(url) {--%>
        <%--if (typeof url == "undefined" || !url) {--%>
            <%--url = "main";--%>
        <%--}--%>

        <%--var group = url;--%>
        <%--if (url.indexOf("-") > 0) {--%>
            <%--group = url.split("-")[0];--%>
            <%--url = url.replace("-", "/");--%>
        <%--}--%>

        <%--$(".account_list li a").each(function() {--%>
            <%--if ($(this).attr("href").replace("#", "").split("-")[0] == group) {--%>
                <%--$(".eveb_nav_hover").removeClass("eveb_nav_hover");--%>
                <%--$(".sli").removeClass("sli");--%>
                <%--$(this).addClass("sli").addClass("eveb_nav_hover");--%>
                <%--return;--%>
            <%--}--%>
        <%--});--%>

        <%--$("#ifm").attr("src", "<%=basePath%>member/" + url + ".html");--%>
        <%--&lt;%&ndash;$.ajax({&ndash;%&gt;--%>
            <%--&lt;%&ndash;url: ,&ndash;%&gt;--%>
            <%--&lt;%&ndash;type: "GET",&ndash;%&gt;--%>
            <%--&lt;%&ndash;beforeSend: function() {&ndash;%&gt;--%>
                <%--&lt;%&ndash;var height = $(".help_l_menu").height();&ndash;%&gt;--%>
                <%--&lt;%&ndash;$(".help_r_main").html('<img style="display:block;text-align:center;margin:auto;margin-top:' + (height / 2) + 'px" src="${resPath}img/base_loading.gif"/>');&ndash;%&gt;--%>
            <%--&lt;%&ndash;},&ndash;%&gt;--%>
            <%--&lt;%&ndash;success: function(html) {&ndash;%&gt;--%>
                <%--&lt;%&ndash;$(".help_r_main").html(html);&ndash;%&gt;--%>

                <%--&lt;%&ndash;$(".eveb_nav_sub ul li a").each(function() {&ndash;%&gt;--%>
                    <%--&lt;%&ndash;if (location.href.indexOf($(this).attr("href")) > 0) {&ndash;%&gt;--%>
                        <%--&lt;%&ndash;$(".eveb_nav_sub ul li.on").removeClass("on");&ndash;%&gt;--%>
                        <%--&lt;%&ndash;$(this).parent().addClass("on");&ndash;%&gt;--%>
                    <%--&lt;%&ndash;}&ndash;%&gt;--%>
                <%--&lt;%&ndash;});&ndash;%&gt;--%>
            <%--&lt;%&ndash;},&ndash;%&gt;--%>
            <%--&lt;%&ndash;complete: function() {&ndash;%&gt;--%>

            <%--&lt;%&ndash;}&ndash;%&gt;--%>
        <%--&lt;%&ndash;});&ndash;%&gt;--%>
    <%--}--%>
</script>
<c:import url="../common/checkOnline.jsp" />
</body>
</html>