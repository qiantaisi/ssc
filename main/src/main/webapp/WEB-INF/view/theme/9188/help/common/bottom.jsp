<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<script>
    function openGcdt(module) {
        <%--if (typeof module == 'undefined') {--%>
            <%--module = '';--%>
        <%--}--%>
        <%--windowOpenBlank('<%=basePath%>ssc/index.html?module=' + module);--%>
        <%--&lt;%&ndash;windowOpen('<%=basePath%>ssc/index.html?module=' + module, '购彩大厅', 1285, 800);&ndash;%&gt;--%>
        var subUrl = "";
        if (module) {
            subUrl = "#" + CONFIG.BASEURL + "ssc/" +module + ".html";
        }
        windowOpenBlank(CONFIG.BASEURL + 'ssc/index.html' + subUrl);
    }
    function openHyzx(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        if (typeof $.cookie("uid") == 'undefined' || typeof $.cookie("token") == 'undefined') {
            alert("请先登录");
            if ($("#loginAccount1").length > 0) {
                $("#loginAccount1").focus();
                return;
            }
            window.location.href = "<%=basePath%>main.html";
            return;
        }
        windowOpen('<%=basePath%>member/index.html?module=' + module, '会员中心', 1250, 834);
    }
    $(function () {
        fade(".banner .bann ul li", ".banner .four_men ul li", 30000, "", "");
    });

</script>
<script>
    function abc(mainDiv) {
        var i = $(mainDiv + " ol.m span.sp2").text();
        i--;
        if (i == -1) {
            i = 9;
            $(mainDiv + " ol.m span.sp2").text(i);

            var te = $(mainDiv + " ol.m span.sp1").text() - 1;
            if (te < 0) {
                if ($(mainDiv + " ol.f span.sp2").text() == 0) {
                    $(mainDiv + " ol.f span.sp2").text(9);

                    if ($(mainDiv + " ol.f span.sp1").text() == 0) { //分

                        $(mainDiv + " ol.f span.sp1").text(6);

                        if ($(mainDiv + " ol.s span.sp2").text() == 0) {
                            $(mainDiv + " ol.s span.sp2").text(9);
                            $(mainDiv + " ol.s span.sp1").text($(mainDiv + " ol.s span.sp1").text() - 1);

                        } else {
                            $(mainDiv + " ol.s span.sp2").text($(mainDiv + " ol.s span.sp2").text() - 1);
                        }
                    }
                    $(mainDiv + " ol.f span.sp1").text($(mainDiv + " ol.f span.sp1").text() - 1);

                } else {

                    $(mainDiv + " ol.f span.sp2").text($(mainDiv + " ol.f span.sp2").text() - 1)//分钟
                }
                te = 5;
            }
            $(mainDiv + " ol.m span.sp1").text(te)
        }

        $(mainDiv + " ol.m span.sp2").text(i)
    }

    $(function () {
        $(".rt .type1 .step .bor_box p ,.rt .type1 .step ul li").hover(function(){
            var index=$(this).index()+1;
            $(this).addClass("acti").siblings().removeClass("acti");
            $(".rt .type1 .step .bor_box p").removeClass("acti");
            $(".rt .type1 .step .bor_box p:lt("+index+")").addClass("acti");
        },function(){
            $(".rt .type1 .step .bor_box p").removeClass("acti");
        });
        slide_nav(".men_list .left_layout h1",".boxtlayoutshow","acti");
        numadd(".main_layout .right_layotu .left_wrap .Bettingbag .num_bett .val_add .reduce a", ".main_layout .right_layotu .left_wrap .Bettingbag .num_bett .val_add .reduce a.fl", ".main_layout .right_layotu .left_wrap .Bettingbag .num_bett .val_add .reduce a.fr")
        tabs_cg(".Newest .tabs_cg ul li:lt(11)", ".Newest .layout .Analysis", "hover", "acti", "", "");//下面
        tabs_cg(".main_layout .right_layotu .left_wrap .tabs_cg ul li", ".main_layout .right_layotu .left_wrap .Bettingbag .num_bett", "hover", "acti", "", "");
        two_scroll(".main_layout .right_layotu .left_wrap .scroll_pic ul li", "", "", ".main_layout .right_layotu .left_wrap .scroll_pic p i", "");

        $(".Newest .Analysis .box3 .timer_wrap").each(function (index, element) {
            $(this).attr("index", "ti" + index);
            $(this).addClass("ti" + index);
        });

        setInterval(function () {
            $(".Newest .Analysis .box3 .timer_wrap").each(function (index, element) {
                //console.log();
                abc('".Newest .Analysis .box3 ".' + $(this).attr("index") + '"');
            });

        }, 1000);

//        $('.list ul li').attr('sl', '1');
        $('.list ul li.li1 h4').click(function () {
            var clickStatus = $(this).parent('li').attr('sl');
            if(typeof clickStatus == 'undefined'){
                $('.list ul li').removeClass('sli');
                $(this).parent('li').addClass('sli');
                $('.list ul li .slide').slideUp(300);
                $(this).parent('li').find('div').slideDown(300);
                $('.list ul li').attr('sl', '1');
                $(this).parent('li').attr('sl', '0');
            }else if (clickStatus == 1) {
                $('.list ul li').removeClass('sli');
                $(this).parent('li').addClass('sli');
                $('.list ul li .slide').slideUp(300);
                $(this).parent('li').find('div').slideDown(300);
                $('.list ul li').attr('sl', '1');
                $(this).parent('li').attr('sl', '0');
            } else if (clickStatus == 0) {
                $('.list ul li').removeClass('sli');
                $(this).parent('li').removeClass('sli');
                $(this).parent('li').find('div').slideUp();
                $(this).parent('li').attr('sl', '1');
            }
        });

        var c = $('.rt').height();
        $('.main .list').css('height', c - 2);
        slide_nav(".men_list .left_layout h1",".boxtlayoutshow","acti");
        //$('.list ul li.li1 h4').parent('li').siblings().attr('sl', '1');
       // $('.list ul li.li1 h4').parent('li').eq(0).attr('sl', '0');
        $('.help_list .lis ul li').click(function(){
            var w=$(this).index();
            $(this).addClass('sli').siblings().removeClass('sli');
            $('.help_list .help_col').eq(w).addClass('show').siblings().removeClass('show');
        })
    });

    function slide_nav(obj,class_name,iname){
        $(obj).parent().hover(function(){
            $(obj).find("i").removeClass(iname);
            $(obj).parent().find(class_name).slideUp();
            $(this).parent().find(class_name).slideDown();
            $(this).find('i').addClass(iname);
            $(obj).attr('open',"0");
            $(this).attr('open',"1");
        },function(){
            //console.log(1);
            $(obj).parent().find(class_name).slideUp();
            $(obj).find('i').removeClass(iname);
            $(obj).attr('open',"0");
        })
    }
    function openHyzx(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        if (typeof $.cookie("uid") == 'undefined' || typeof $.cookie("token") == 'undefined') {
            alert("请先登录");
            if ($("#loginAccount1").length > 0) {
                $("#loginAccount1").focus();
                return;
            }
            window.location.href = "<%=basePath%>main.html";
            return;
        }
        windowOpen('<%=basePath%>member/index.html?module=' + module, '会员中心', 1250, 834);
    }
</script>