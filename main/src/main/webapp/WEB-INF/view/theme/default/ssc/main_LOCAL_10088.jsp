<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("www.", "");
%>
<c:import url="../common/bodyStart.jsp"/>
<c:import url="../common/checkIsChildFrame.jsp"/>
<style>body {
    overflow: hidden;
}</style>
<div class="menu_left">
    <div class="logo">
        <img src="<%=basePath%>images/${logo.imageId}" alt="" onclick="window.location.href='<%=basePath%>'" style="cursor:pointer">
        <a href="javascript:void(0)"></a>
    </div>
    <div class="list_menu">
        <ul>
            <li class="show">
                <h2><a href="javascript:void(0)" onclick="getPage('<%=basePath%>ssc/gcdt.html')"><span><div
                        class="pict"><var><img src="${resPath}img/ico3.png" alt=""></var></div></span><b>购彩大厅</b></a>
                </h2>
                <a class="Refresh"></a>
            </li>
            <li class="show">
                <h2 class="open"><span><div class="pict"><var><img src="${resPath}img/ico5.png" alt=""></var></div></span><b>热门彩种</b><i class="show"></i></h2>
                <div class="down" style="display: block;">
                    <div class="inner-menu">
                        <h3 class="head-ssc"><img src="${resPath}img/sscxl.png" alt=""><var>时时彩系列</var><i></i></h3>
                        <div class="xl-down xHide">
                            <a href="javascript:void(0)" onclick="getSscPage('ffssc')"><img src="${resPath}img/ffssc.png"
                                                                                            alt=""><var>分分时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('efssc')"><img src="${resPath}img/efssc.png"
                                                                                            alt=""><var>两分时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('sfssc')"><img src="${resPath}img/sfssc.png"
                                                                                            alt=""><var>三分时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('wfssc')"><img src="${resPath}img/wfssc.png"
                                                                                            alt=""><var>五分时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('cqssc')"><img src="${resPath}img/ico16.png"
                                                                                            alt=""><var>重庆时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('xjssc')"><img src="${resPath}img/ico28.png"
                                                                                            alt=""><var>新疆时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('tjssc')"><img src="${resPath}img/ico27.png"
                                                                                            alt=""><var>天津时时彩</var></a>
                        </div>

                        <h3 class="head-pk10"><img src="${resPath}img/pk10xl.png" alt=""><var>PK10系列</var><i></i></h3>
                        <div class="xlPk10-down xHide">
                            <a href="javascript:void(0)" onclick="getSscPage('pk10')"><img src="${resPath}img/ico18.png" alt=""><var>北京PK10</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('xyft')"><img src="${resPath}img/xyft.png" alt=""><var>幸运飞艇</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('jspk10')"><img src="${resPath}img/jspk10.png" alt=""><var>极速PK10</var></a>
                        </div>

                        <h3 class="head-k3"><img src="${resPath}img/k3xl.png" alt=""><var>快3系列</var><i></i></h3>
                        <div class="xl-down xHide">
                            <a href="javascript:void(0)" onclick="getSscPage('jsk3')"><img src="${resPath}img/jsk3.png"
                                                                                           alt=""><var>江苏快3</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('hbk3')"><img src="${resPath}img/hbk3.png"
                                                                                           alt=""><var>湖北快3</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('ahk3')"><img src="${resPath}img/ahk3.png"
                                                                                           alt=""><var>安徽快3</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('jlk3')"><img src="${resPath}img/jlk3.png"
                                                                                           alt=""><var>吉林快3</var></a>
                        </div>

                        <h3 class="head-lhc"><img src="${resPath}img/lhcxl.png" alt=""><var>六合彩系列</var><i></i></h3>
                        <div class="xl-down xHide">
                            <a href="javascript:void(0)" onclick="getSscPage('sflhc')"><img src="${resPath}img/sflhc.png"
                                                                                            alt=""><var>10分六合彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('lhc')"><img src="${resPath}img/ico17.png"
                                                                                          alt=""><var>香港六合彩</var></a>
                        </div>
                        <h3 class="head-qita"><img src="${resPath}img/qitaxl.png" alt=""><var>其他系列</var><i></i></h3>
                        <div class="xl-down xHide">
                            <a href="javascript:void(0)" onclick="getSscPage('klsf')"><img src="${resPath}img/ico26.png" alt=""><var>广东快乐十分</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('xync')"><img src="${resPath}img/ico29.png" alt=""><var>重庆幸运农场</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('fc3d')"><img src="${resPath}img/ico24.png" alt=""><var>福彩3D</var></a>
                        </div>
                    </div>

                    <!--<a href="javascript:void(0)" onclick="getSscPage('pl3')"><img src="${resPath}img/ico20.png" alt=""><var>体彩排列3</var></a>-->
                    <!--<a href="javascript:void(0)" onclick="getSscPage('xy28')"><img src="${resPath}img/ico30.png" alt=""><var>幸运28</var></a>-->
                    <!--<a href="javascript:void(0)" onclick="getSscPage('kl8')"><img src="${resPath}img/ico25.png" alt=""><var>北京快乐8</var></a>-->
                </div>
            </li>
            <li class="show">
                <h2><span><div class="pict"><var><img src="${resPath}img/ico8.png"
                                                      alt=""></var></div></span><b>高频彩</b><i></i></h2>
                <div class="down">
                    <a href="javascript:void(0)" onclick="getSscPage('ffssc')"><img src="${resPath}img/ffssc.png"
                                                                                    alt=""><var>分分时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('efssc')"><img src="${resPath}img/efssc.png"
                                                                                    alt=""><var>两分时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('sfssc')"><img src="${resPath}img/sfssc.png"
                                                                                    alt=""><var>三分时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('wfssc')"><img src="${resPath}img/wfssc.png"
                                                                                    alt=""><var>五分时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('cqssc')"><img src="${resPath}img/ico16.png"
                                                                                    alt=""><var>重庆时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('pk10')"><img src="${resPath}img/ico18.png"
                                                                                   alt=""><var>北京PK10</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('xyft')"><img src="${resPath}img/xyft.png"
                                                                                   alt=""><var>幸运飞艇</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('xjssc')"><img src="${resPath}img/ico28.png"
                                                                                    alt=""><var>新疆时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('jsk3')"><img src="${resPath}img/jsk3.png"
                                                                                   alt=""><var>江苏快3</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('bjk3')"><img src="${resPath}img/hbk3.png"
                                                                                   alt=""><var>湖北快3</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('ahk3')"><img src="${resPath}img/ahk3.png"
                                                                                   alt=""><var>安徽快3</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('jlk3')"><img src="${resPath}img/jlk3.png"
                                                                                   alt=""><var>吉林快3</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('klsf')"><img src="${resPath}img/ico26.png"
                                                                                   alt=""><var>广东快乐十分</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('xync')"><img src="${resPath}img/ico29.png"
                                                                                   alt=""><var>重庆幸运农场</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('tjssc')"><img src="${resPath}img/ico27.png"
                                                                                    alt=""><var>天津时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('xy28')"><img src="${resPath}img/ico30.png"
                                                                                   alt=""><var>幸运28</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('kl8')"><img src="${resPath}img/ico25.png"
                                                                                  alt=""><var>北京快乐8</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('sflhc')"><img src="${resPath}img/sflhc.png"
                                                                                  alt=""><var>10分六合彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('jspk10')"><img src="${resPath}img/jspk10.png"
                                                                                     alt=""><var>极速PK10</var></a>
                </div>
            </li>
            <li class="show">
                <h2><span><div class="pict"><var><img src="${resPath}img/ico9.png" alt=""></var></div></span><b>低频彩</b><i></i></h2>
                <div class="down">
                    <a href="javascript:void(0)" onclick="getSscPage('lhc')"><img src="${resPath}img/ico17.png"
                                                                                  alt=""><var>香港六合彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('fc3d')"><img src="${resPath}img/ico24.png"
                                                                                   alt=""><var>福彩3D</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('pl3')"><img src="${resPath}img/ico20.png"
                                                                                  alt=""><var>体彩排列3</var></a>
                    <%--<a href="javascript:void(0)" onclick="getSscPage('ssq')"><img src="${resPath}img/ico19.png" alt=""><var>双色球</var></a>--%>
                </div>
            </li>
            <li>
                <h2><a href="<%=basePath%>?u=<%=basePath%>kjjg.html" target="_blank"><span><div class="pict"><var><img
                        src="${resPath}img/ico10.png" alt=""></var></div></span><b>开奖结果</b><i></i></a></h2>
            </li>
            <li>
                <h2><a href="javascript:void(0)" onclick="getZstPage()"><span><div class="pict"><var><img
                        src="${resPath}img/ico12.png" alt=""></var></div></span><b>走势图表</b><i></i></a></h2>
            </li>
            <%--<li>--%>
                <%--<h2><a href="javascript:void(0)" onclick="openHyzx('jfmx/hylb')"><span><div class="pict"><var><img--%>
                        <%--src="${resPath}img/ico13.png" alt=""></var></div></span><b>代理合作</b><i></i></a></h2>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<h2><a href="<%=basePath%>?u=<%=basePath%>yhhd.html" target="_blank"><span><div class="pict"><var><img--%>
                        <%--src="${resPath}img/ico14.png" alt=""></var></div></span><b>优惠活动</b><i></i></a></h2>--%>
            <%--</li>--%>
            <li>
                <h2><a href="<%=mHostName%>" target="_blank"><span><div class="pict"><var><img
                        src="${resPath}img/ico15.png" alt=""></var></div></span><b>手机购彩</b><i></i></a></h2>
            </li>

        </ul>
    </div>
</div>
<!--menu_left-->
<div class="con_right">
    <div class="top">
        <div class="news">
            <img src="${resPath}img/ico1.png" alt="">
            <ul>
                <c:forEach items="${webPopUpNoticeResult.webNoticeList}" var="item" varStatus="status">
                    <li><a onclick="showGonggao(${status.count})" href="javascript:void(0)">${item.title}</a></li>
                </c:forEach>
            </ul>
        </div>
        <div class="nav">
            <h1>网址导航<i></i></h1>
            <div class="downte">
                <ul>
                    <li>
                        <h2><a href="${kefuUrl}" target="_blank">在线客服</a></h2>
                        <p>
                            <a href="<%=basePath%>?u=<%=basePath%>register.html" target="_blank" class="a0">免费注册</a>
                            <a href="javascript:void(0)" onclick="openHyzx('zhcz/yhzz')" target="_blank">账户充值</a>
                            <a href="javascript:void(0)" onclick="getPage('<%=basePath%>ssc/gcdt.html')">彩票购买</a>
                        </p>
                    </li>
                    <li>
                        <h2><a href="<%=basePath%>?u=<%=basePath%>help/index.html" target="_blank">帮助中心</a></h2>
                        <p>
                            <a href="<%=basePath%>?u=<%=basePath%>help/index.html?module=rule/cqssc" target="_blank">彩种介绍</a>
                            <a href="<%=basePath%>?u=<%=basePath%>help/index.html?module=question"
                               target="_blank">功能指引</a>
                            <a href="<%=basePath%>?u=<%=basePath%>help/index.html?module=question"
                               target="_blank">常见问题</a>
                            <a href="<%=basePath%>?u=<%=basePath%>help/index.html?module=question"
                               target="_blank">热点问题</a>
                            <a href="<%=basePath%>?u=<%=basePath%>help/index.html?module=question"
                               target="_blank">兑奖/领奖</a>
                        </p>
                    </li>
                    <li>
                        <h2><a href="javascript:void(0)" onclick="openHyzx('main')" target="_blank">会员中心</a></h2>
                        <p>
                            <a href="javascript:void(0)" onclick="openHyzx('zhcz/yhzz')" target="_blank">账户充值</a>
                            <a href="javascript:void(0)" onclick="openHyzx('withdraw')" target="_blank">快速提款</a>
                            <a href="javascript:void(0)" onclick="openHyzx('lsjl/ckjl')" target="_blank">记录查询</a>
                            <a href="javascript:void(0)" onclick="openHyzx('zhsz/grzl')" target="_blank">账户设置</a>
                            <a href="javascript:void(0)" onclick="openHyzx('jfmx/hylb')" target="_blank">我的推广</a>
                        </p>
                    </li>
                    <li>
                        <h2><a href="<%=basePath%>" target="_blank">首页</a></h2>
                        <p>
                            <a href="javascript:void(0)" onclick="getPage('<%=basePath%>ssc/gcdt.html')">购彩大厅</a>
                            <a href="<%=basePath%>?u=<%=basePath%>kjjg.html" target="_blank">开奖结果</a>
                            <a href="javascript:void(0)" onclick="getZstPage()">走势图表</a>
                            <a href="<%=basePath%>?u=<%=basePath%>yhhd.html" target="_blank">优惠活动</a>
                            <a href="<%=mHostName%>" target="_blank">手机购彩</a>
                        </p>
                    </li>
                </ul>
            </div>
        </div>

    </div>
    <div class="Account">
    </div>
    <iframe id="rightContent" src="" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto"
            id="ifm" name="ifm" width="100%" style="overflow-x:hidden;"></iframe>
</div>
<c:forEach items="${webPopUpNoticeResult.webNoticeList}" var="item" varStatus="status">
    <div class="alert hide" id="gonggao_${status.count}">
        <div class="alert_col">
            <h5><span>公告</span><i>×</i></h5>
            <h2>${item.title}</h2>
            <div>${item.content}</div>
            <h4>${webName}</h4>
            <h4 style="margin-top:15px"><fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></h4>
        </div>
    </div>
</c:forEach>
<c:import url="../common/commonJs.jsp"/>
<script>

    function showGonggao(id) {
        $("#gonggao_" + id).show();
    }

    $(function () {
        $('.alert_col h5 i').click(function () {
            $('.alert').hide();
        });

        newRoll(".top .news ul li");

        var module = '${param.module}';
        var navIndex = '${param.navIndex}';
        var nums = '${param.nums}';
        var caizhong = '${param.caizhong}';
        var type = '${param.type}';
        var money = '${param.money}';

        if (typeof module == 'undefined' || module == 'null' || !module || module == '') {
            module = 'gcdt/gcdt';
            getPage('<%=basePath%>ssc/' + module + '.html');
        } else if (module == 'zstIndex') {
            getPage('<%=basePath%>ssc/zst/index.html');
        } else if (module == 'xyxh') {
            getPage('<%=basePath%>ssc/gcdt/' + caizhong + '.html?navIndex=' + navIndex + '&nums=' + nums + '&money=' + money);
        } else if (module == 'xyxh_shou') {
            getPage('<%=basePath%>ssc/gcdt/' + caizhong + '.html?navIndex=' + navIndex);
        } else {
            getPage('<%=basePath%>ssc/' + module + '.html');
        }
    });
    function resize() {
        dropmove(".Single .layout .add_spot .left .sopt_wrap .slide_sp p var", ".Single .layout .add_spot .left .sopt_wrap .slide_sp p")
    }
    function dropmove(down, move) {
        $(down).mousedown(function () {
            $(move).mousemove(function (e) {
                var t = $(this).offset().left;

                if (e.pageX - t <= $(move).width() - 8) {
                    var tee = e.pageX - t - 10;
                    $(this).find("span").css("width", tee + "px");
                    $(this).find("var").css("left", tee + "px");
                    $(".Single .layout .add_spot .left .sopt_wrap .slide_sp i var").text((190989.6235 * tee).toFixed(2));
                    $(move).unbind("hover");
                }
            })
        });
        $(move).mouseup(function () {
            $(move).unbind("mousemove");
        });
        $(down).mouseup(function () {
            $(move).unbind("mousemove");
        });
        $(move).hover(function () {

        }, function () {
            $(move).unbind("mousemove");
        });

        numadd(".Single .layout .add_spot .left .sopt_wrap .reduce a", ".Single .layout .add_spot .left .sopt_wrap .reduce a.fl", ".Single .layout .add_spot .left .sopt_wrap .reduce a.fr")
        down_drop(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i", ".Single .layout .add_spot .left .sopt_wrap .down span", ".down_menu");
        tabs_cg(".Betting .tabs ul li", ".Betting .list_wrap", "click", "acti", "", "");

        var hei = document.height;


        autow();
    }
    $(window).resize(function () {
        resize(false);
    });
    function resize(isAnimate) {
        autoHeight();
        var winWidth = $(window).width();
        var leftWidth, rightWidth;
        if ($(window).width() < 1250) {
            leftWidth = 40;
            rightWidth = winWidth - leftWidth;
        } else {
            leftWidth = 250;
            rightWidth = winWidth - leftWidth;
        }
        if (rightWidth < 1000) {
            rightWidth = 1000;
        }
        bodyResize(leftWidth, rightWidth);
        if (leftWidth <= 40) {
            minLeftMenu(leftWidth, isAnimate);
        } else {
            maxLeftMenu(leftWidth, isAnimate);
        }
        rightResize(rightWidth, isAnimate);
    }
    $(function () {
        resize();
        getUserSession();

//        $("#rightContent").niceScroll({
//            cursorcolor:"#3f3f3f",
//            cursoropacitymax:1,
//            touchbehavior:false,
//            cursorwidth:"10px",
//            cursorborder:"0",
//            cursorborderradius:"10px",
//            autohidemode:false
//        });
//
        $(".menu_left").niceScroll({
            cursorcolor: "#3f3f3f",
            cursoropacitymax: 1,
            touchbehavior: false,
            cursorwidth: "0px",
            cursorborder: "0",
            cursorborderradius: "0px",
            autohidemode: false
        });

        $(".menu_left .list_menu ul li.show h2").click(function () {
            if ($(this).hasClass("open")) {
                $(this).removeClass("open");
                $(this).parent().find('.down').slideUp();
                $(this).find("i").removeClass("show");
                return;
            }

            $(".menu_left .list_menu ul li.show h2.open i.show").removeClass("show");
            $(".menu_left .list_menu ul li.show h2.open").parent().find(".down").slideUp();
            $(".menu_left .list_menu ul li.show h2.open").removeClass("open");

            $(this).addClass("open");
            $(this).find("i").addClass("show");
            $(this).parent().find('.down').slideDown();
        });


        $(".menu_left .list_menu ul li .inner-menu h3").click(function () {
            if ($(this).hasClass("open")) {
                $(this).removeClass("open");
                $(this).next().slideUp();
                $(this).find("i").removeClass("reshow");
                return;
            }

            $(".menu_left .list_menu ul li .inner-menu h3.open i").removeClass("reshow");
            $(".menu_left .list_menu ul li .inner-menu h3.open").next().slideUp();
            $(".menu_left .list_menu ul li .inner-menu h3.open").removeClass("open");

            $(this).addClass("open");
            $(this).find("i").addClass("reshow");
            $(this).next().slideDown();
        });

        $(".menu_left .logo a").click(function () {
            if ($(this).attr("opent") == "1") {
                var winWidth = $(window).width();
                var leftWidth, rightWidth;
                leftWidth = 250;
                rightWidth = winWidth - leftWidth;
                if (rightWidth < 1000) {
                    rightWidth = 1000;
                }
                maxLeftMenu(leftWidth, true);
                rightResize(rightWidth, true);
                $(this).attr("opent", "0");
                bodyResize(leftWidth, rightWidth);
            } else {
                var winWidth = $(window).width();
                var leftWidth, rightWidth;
                leftWidth = 40;
                rightWidth = winWidth - leftWidth;
                if (rightWidth < 1000) {
                    rightWidth = 1000;
                }
                minLeftMenu(leftWidth, true);
                rightResize(rightWidth, true);
                $(this).attr("opent", "1");
            }
        })
    });



    function autoHeight() {
        var rightContentHeight = $(window).height() - 100;
        $("#rightContent").css("height", rightContentHeight + "px");
        var leftContentHeight = $(window).height();
        $(".menu_left").css("height", leftContentHeight + "px");
    }
    function bodyResize(leftWidth, rightWidth) {
        $("body").css("width", leftWidth + rightWidth + "px");
    }
    function rightResize(rightWidth, isAnimate) {
        if (rightWidth < 1000) {
            rightWidth = 1000;
            isAnimate = false;
        }

        if (isAnimate) {
            $(".con_right, #rightContent, .con_right .top, .con_right .Account").animate({"width": rightWidth + "px"}, 400, function () {
            });
        } else {
            $(".con_right, #rightContent, .con_right .top, .con_right .Account").css("width", rightWidth + "px");
        }
    }
    function minLeftMenu(leftWidth, isAnimate) {
        $(".menu_left .logo img").hide();
        $(".menu_left .list_menu ul li a.Refresh").hide();
        //热门菜单中的子菜单
        $(".menu_left .list_menu ul li .inner-menu h3 i").hide();
        $(".menu_left .list_menu ul li .inner-menu h3 var").hide();
        $(".menu_left .list_menu ul li .inner-menu h3 img").addClass('menusuox');
        $(".menu_left .list_menu ul li .inner-menu h3").addClass('menusuox-h3');


        $(".menu_left").addClass("add_menu");
        if (isAnimate) {
            $(".menu_left").animate({"width": leftWidth + "px"}, 400, function () {
            });
        } else {
            $(".menu_left").css("width", leftWidth + "px");
        }
        $(".menu_left .logo a").attr("opent", "1");
    }
    function maxLeftMenu(leftWidth, isAnimate) {
        if (isAnimate) {
            $(".menu_left").animate({"width": leftWidth + "px"}, 400, function () {
                $(".menu_left .logo img").show();
                $(".menu_left").removeClass("add_menu");
                $(".menu_left .list_menu ul li a.Refresh").show();

                $(".menu_left .list_menu ul li .inner-menu h3 i").show();
                $(".menu_left .list_menu ul li .inner-menu h3 var").show();
                $(".menu_left .list_menu ul li .inner-menu h3 img").removeClass('menusuox');
                $(".menu_left .list_menu ul li .inner-menu h3").removeClass('menusuox-h3');
            });
        } else {
            $(".menu_left").css("width", leftWidth + "px");
            $(".menu_left .logo img").show();
            $(".menu_left").removeClass("add_menu");
            $(".menu_left .list_menu ul li a.Refresh").show();

            $(".menu_left .list_menu ul li .inner-menu h3 i").show();
            $(".menu_left .list_menu ul li .inner-menu h3 var").show();
            $(".menu_left .list_menu ul li .inner-menu h3 img").removeClass('menusuox');
            $(".menu_left .list_menu ul li .inner-menu h3").removeClass('menusuox-h3');
        }
        $(".menu_left .logo a").attr("opent", "0");
    }
    function autow(tee, isAnimal) {
        var leftWidth = tee ? tee : Tools.parseInt($(".menu_left").width());
        var rightWidth = $(window).width() - leftWidth;
        if (rightWidth < 1000) {
            rightWidth = 1000;
        }
        $(".con_right").css("height", $(window).height() + "px");
        if (isAnimal) {
            $(".con_right, #rightContent, .con_right .top, .con_right .Account").animate({"width": rightWidth + "px"}, 400, function () {
            });
            console.log(isAnimal);
        } else {
            $(".con_right, #rightContent, .con_right .top, .con_right .Account").css("width", rightWidth + "px");
            console.log('w');
        }

    }//结束

    function showLoading() {
        layer.load(2, {
            shade: [0.1, '#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
    function getPage(url) {
        showLoading();
        $("#rightContent").attr("src", url);
    }
    function getSscPage(url) {
//        var idPl = getPlayGroupId(url);
        getPage("<%=basePath%>ssc/gcdt/" + url + ".html");
        <%--var flag = getCaiZhongEnable(idPl, function() {--%>
            <%--getPage("<%=basePath%>ssc/gcdt/" + url + ".html");--%>
        <%--});--%>
    }

    <%--function getCaiZhongEnable(playGroupId, callback) {--%>
        <%--ajaxRequest({--%>
            <%--url: CONFIG.BASEURL + "ssc/getSscOpenTime2.json",--%>
            <%--data: {--%>
                <%--playGroupId: playGroupId--%>
            <%--},--%>
            <%--success: function(json) {--%>
                <%--if (json.result == -888) {  // 彩种已关闭--%>
                    <%--$("#rightContent").attr("src", '<%=basePath%>ssc/tingcaipage.html');--%>
                    <%--return;--%>
                <%--}--%>

                <%--if (typeof callback == 'function') {--%>
                    <%--callback();--%>
                <%--}--%>
            <%--}--%>
        <%--});--%>
    <%--}--%>

    function getZstPage(url) {
        if (typeof url == 'undefined') {
            url = 'index';
        }
        getPage("<%=basePath%>ssc/zst/" + url + ".html");
    }

//    function getPlayGroupId(param_url){
//        var idPl = 0;
//        if(param_url == 'cqssc'){
//            idPl = 1;
//        }else if(param_url == 'tjssc'){
//            idPl = 2;
//        }else if(param_url == 'xjssc'){
//            idPl = 3;
//        }else if(param_url == 'pl3'){
//            idPl = 4;
//        }else if(param_url == 'fc3d'){
//            idPl = 5;
//        }else if(param_url == 'lhc'){
//            idPl = 6;
//        }else if(param_url == 'xy28'){
//            idPl = 7;
//        }else if(param_url == 'kl8'){
//            idPl = 8;
//        }else if(param_url == 'pk10'){
//            idPl = 9;
//        }else if(param_url == 'xync'){
//            idPl = 10;
//        }else if(param_url == 'klsf'){
//            idPl = 11;
//        }else if(param_url == 'sfssc'){
//            idPl = 13;
//        }else if(param_url == 'xyft'){
//            idPl = 14;
//        }else if(param_url == 'ffssc'){
//            idPl = 15;
//        }else if(param_url == 'efssc'){
//            idPl = 16;
//        }else if(param_url == 'wfssc'){
//            idPl = 17;
//        }else if(param_url == 'jsk3'){
//            idPl = 18;
//        }else if(param_url == 'hbk3'){
//            idPl = 19;
//        }else if(param_url == 'ahk3'){
//            idPl = 20;
//        }else if(param_url == 'jlk3'){
//            idPl = 21;
//        }else if(param_url == 'sflhc'){
//            idPl = 22;
//        }else if(param_url == 'jspk10'){
//            idPl = 23;
//        }
//        return idPl;
//    }

    function getUserSession() {
        ajaxRequest({
            url: '<%=basePath%>member/getUserSession.json',
            beforeSend: function () {
                $(".Account").html('<img src="${resPath}img/base_loading.gif" alt="" style="display: block;text-align: center;margin: auto;padding-top: 25px;">');
            },
            success: function (json) {
                if (json.result == 1) {
                    showLogin(json);
                } else {
                    showNotLogin();
                }
            }
        });
    }
    function ajaxLogin() {
        var account = $.trim($("#loginForm input[name='account']").val());
        var password = $.trim($("#loginForm input[name='password']").val());
        var yzm = $.trim($("#loginForm input[name='yzm']").val());

        if (!account) {
            layer.msg("请填写账号", {icon: 2});
            $("#loginForm input[name='account']").focus();
            return;
        }

        if (!password) {
            layer.msg("请填写密码", {icon: 2});
            $("#loginForm input[name='password']").focus();
            return;
        }

        if (!yzm) {
            layer.msg("请填写验证码", {icon: 2});
            $("#loginForm input[name='yzm']").focus();
            return;
        }

        ajaxRequest({
            url: '<%=basePath%>member/ajaxLogin.json',
            data: {
                account: account,
                password: $.md5(password),
                yzm: yzm
            },
            beforeSend: function () {
                $(".Account").html('<img src="${resPath}img/base_loading.gif" alt="" style="display: block;text-align: center;margin: auto;margin-top: 20px;">');
            },
            success: function (json) {
                if (json.result == 1) {
                    $.cookie("uid", json.userId, {path: "/"});
                    $.cookie("token", json.token, {path: "/"});
                    getUserSession();
                    ifm.window.location.reload();
                } else {
                    layer.msg(json.description, {icon: 2});
                    showNotLogin();

                    // 刷新我的投注
                    if (typeof document.getElementById('rightContent').contentWindow.getBetDetails == 'function') {
                        document.getElementById('rightContent').contentWindow.getBetDetails(document.getElementById('rightContent').contentWindow.playGroupId);
                    }
                }
            }
        });
    }

    function showLogin(user) {
        var str = '';
        str += '<p>账号：<i class="i0">' + user.account + '</i>';
        str += '<span>余额：<i class="i1">￥' + user.balance + '</i></span>';
        str += '<span><a href="javascript:void(0)" onclick="openHyzx(\'zhcz/yhzz\')">充值提现</a>  |  <a href="<%=basePath%>member/index.html" target="_blank">会员中心</a>  |  <a href="javascript:void(0)" onclick="openHyzx(\'lsjl/tzjl\')">投注记录</a>  |  <a href="${kefuUrl}" target="_blank">在线客服</a>  |  <a href="javascript:void(0)"  onclick="openHyzx(\'letter\')">最新消息</a>  |  <a href="javascript:void(0)" onclick="sigout()" class="red">退出登录</a>  |</span></p>';
        $(".Account").html(str);
    }

    function showNotLogin() {
        var str = '';
        str += '<div class="state">';
        str += '<form id="loginForm" onsubmit="ajaxLogin();return false;">';
        str += '<ul>';
        str += '<li><input type="text" placeholder="会员名" name="account"></li>';
        str += '<li><input type="password" placeholder="密码" name="password"></li>';
        str += '<li><input type="text" placeholder="验证码" onfocus="refreshYzm(document.getElementById(\'yzmImg\'))" name="yzm" class="short"><img id="yzmImg" onclick="refreshYzm(this)" src="<%=basePath%>code/yzm?imgWidth=45&imgHeight=20&imgFontHeight=20&imgCodeY=16" alt=""></li>';
        str += '</ul>';
        str += '<div class="buton">';
        str += '<button type="submit">登录</button>';
        str += '</form>';
        str += '<p>';
        str += '<a href="<%=basePath%>?u=<%=basePath%>register.html" target="_blank">会员注册</a>|';
        str += '<a href="${kefuUrl}" target="_blank">忘记密码？</a>';
        str += '</p>';
        str += '</div>';
        str += '</div>';
        $(".Account").html(str);
    }
    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);

        src = '<%=basePath%>code/yzm?timestamp=' + (new Date()).getTime();
        $.each(params, function (index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        $(obj).attr("src", src);
    }
    function sigout() {
        ajaxRequest({
            url: '<%=basePath%>member/ajaxSigout.json',
            data: {},
            beforeSend: function () {
                $(".Account").html('<img src="${resPath}img/base_loading.gif" alt="" style="display: block;text-align: center;margin: auto;margin-top: 20px;">');
            },
            success: function (json) {
                if (json.result == 1) {
                    $.cookie("uid", '', {path: "/", expires: -1});
                    $.cookie("token", '', {path: "/", expires: -1});
                }
                getUserSession();
            }
        });
    }
    function openHyzx(module) {
        if (typeof module == 'undefined') {
            module = '';
        }

        if (typeof $.cookie("uid") == 'undefined' || typeof $.cookie("token") == 'undefined') {
            Tools.toast("请先登录");
            if ($('input[name="account"]').length > 0) {
                $('input[name="account"]').focus();
                return;
            }
            return;
        }

        windowOpen('<%=basePath%>member/index.html?module=' + module, '会员中心', 1250, 834);
    }
</script>
<c:import url="../common/bodyEnd.jsp"/>