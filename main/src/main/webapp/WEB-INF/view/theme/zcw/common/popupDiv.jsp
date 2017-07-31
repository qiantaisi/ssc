<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<style>
    .popupDiv-bg{position: absolute;width: 100%;height: 100%;z-index: 99999;top: 0;left: 0;background:#000;filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity:0.5;opacity:0.5;}
    .popupDiv{position:absolute;min-width:400px;background:#fff;z-index: 9999999}
    .popupDiv .title{padding:0 15px;background:#fa6200;color:#fff;overflow:hidden;}
    .popupDiv .title .left{margin-right:15px;height:45px;line-height:45px;}
    .popupDiv .title .left font{display:none;}
    .popupDiv .title .right{height:45px;line-height:45px;}
    .popupDiv .title .right a{content:'\2716';cursor:pointer;color:#fff}
    .popupDiv .content{min-height:300px;padding:15px;max-height:600px;overflow-y:scroll;display:none;}
    .popupDiv .bottom{text-align:center;padding:15px;background:#fa6200;color:#fff}
    .popupDiv .bottom span a{color:#fff;padding:5px;border:1px solid #fff;}
    .popupDiv .small-round {-moz-border-radius: 5px!important;-webkit-border-radius: 5px!important;border-radius: 5px!important;}
</style>
<div class="popupDiv-bg hide"></div>
<div class="popupDiv hide">
    <div class="title">
        <div class="left"></div>
        <div class="right"><a class="btn-close small-round" href="javascript:void(0)">X</a></div>
    </div>
    <div class="content-box">
        <div class="content"></div>
    </div>
    <div class="bottom">
        <span><a class="prev small-round" href="javascript:void(0)">上一条</a></span>
        <span>&nbsp;共<font class="total">12</font>条，当前第<font class="index">4</font>条&nbsp;</span>
        <span><a class="next small-round"  href="javascript:void(0)">下一条</a></span>
    </div>
</div>
<script>
    $(window).resize(function() {
        resizePopUp();
    });
    $(window).scroll(function() {
        resizePopUp();
    });
    $(function() {
        $('.popupDiv .bottom .prev').click(function() {
            $('.popupDiv').data("index", $('.popupDiv').data("index") - 1);
            changePopup();
        });

        $('.popupDiv .bottom .next').click(function() {
            console.log($('.popupDiv').data("index"));
            $('.popupDiv').data("index", $('.popupDiv').data("index") + 1);
            changePopup();
        });
    });
    function showPopUp(data) {
        $('.popupDiv-bg').css({'height': $("body").height()});
        resizePopUp();

        $('.popupDiv').data("total", data.length)
        $('.popupDiv').data("index", 1);
        var titleStr = '';
        var contentStr = '';
        $.each(data, function(index, value) {
            titleStr += '<font>' + value.title + '</font>';
            contentStr += '<div class="content">' + value.content + '</div>';
        });
        $('.popupDiv .title .left').html(titleStr);
        $('.popupDiv .content-box').html(contentStr);

        $(".popupDiv .btn-close").click(function() {
            hidePopup();
        });

        changePopup();

        if ($(".popupDiv").data("total") == 1) {
            $(".popupDiv .bottom").hide();
        } else {
            $(".popupDiv .bottom").show();
        }
        $('.popupDiv-bg').show();
        $('.popupDiv').show();
    }

    function changePopup() {

        var total = $('.popupDiv').data("total");
        var index = $('.popupDiv').data("index");

        if (index > total) {
            $(".popupDiv").data("index", total);
        } else if (index <= 0) {
            $(".popupDiv").data("index", 1);
        } else {
            $(".popupDiv .bottom .total").html($('.popupDiv').data("total"));
            $(".popupDiv .bottom .index").html($('.popupDiv').data('index'));
            $('.popupDiv .content').hide();
            $('.popupDiv .content').eq(index - 1).show();
            $('.popupDiv .title .left font').eq(index - 1).show();
            resizePopUp();
        }
    }
    function hidePopup() {
        $('.popupDiv-bg').hide();
        $('.popupDiv').hide();
    }
    function resizePopUp() {
        $(".popupDiv").css({
            "top": ($(window).height() - $(".popupDiv").height()) / 2 + $(window).scrollTop() + "px",
            "left": ($(window).width() - $(".popupDiv").width()) / 2 + "px"
        });
    }
</script>