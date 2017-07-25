<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("www.", "");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<c:import url="../common/bodypcStart.jsp"/>
<body>
<div class="top_bar">
    <div class="fix-foot-wrap">
        <div class="top_bar">
            <div class="wrap_in" style="margin-top:22px;" >
                <a href="/mdownload"target="_self">
                    <img src="<%=basePath%>images/${logo.imageId}.png" alt="">
                </a>
                <div class="user_info">
                    <a class="login not-login" href="javascript:void(0)">网站首页</a>
                    <a href="<%=request.getScheme() + "://" + request.getServerName()%>" class="back-index" target="_blank">手机投注</a>
                    <a href="<%=request.getScheme() + "://" + request.getServerName().replace("m.", "")%>" class="back-index" target="_blank">电脑网页版</a>
                    <a href="${kefuUrl}" class="back-index" target="_blank">在线客服</a>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="wrapper" id="fullpage">
    <div class="section section1">
        <div class="bg"></div>
        <div class="main">
            <div class="pic">
                <div class="i-m1 download">
                    <p class="fl sj"><img src="${resPath}images/and_icon.png" alt=""></p>
                    <div class="fr btn-grp">
                        <p class="box">下载APP送您38元现金</p>
                        <p><img src="${resPath}images/ewm.png" alt=""></p>
                        <a href="http://d.6e6e00.com/6e6e.apk" class="btn-down-android mt10" target="_self"><i class="icon i-android" target="_self"></i><span class="a-txt" >Android版下载</span>
                            <span class="layer-down"><i class="icon i-down"></i><span class="a-txt">3.85M</span></span></a>

                    </div>
                </div>
            </div>
            <div class="con fr">
                <p class="fl sj"><img src="${resPath}images/ios_icon.png" alt=""></p>
                <div class="fr">
                    <div class="title">
                        <p class="logo"><span class="box">iPhone在线版 极速体验</span></p>
                        <div class="txt"><img src="${resPath}images/ewm.png" alt=""></div>
                    </div>
                    <div class="download">
                        <div class="btn-grp">
                            <a href="javascript:;" class="btn-down-iphone mt10" onclick="javascript:alert('请使用iPhome手机打开')"><i class="icon i-iphone"></i><span class="a-txt">iPhone在线版</span>
                                <span class="layer-down"><span class="a-txt">点击进入</span></span></a>

                        </div>
                    </div>
                </div>
            </div>
            <div class="ele-cloud cloud-1"></div>
            <div class="ele-cloud cloud-2"></div>
            <div class="ele-cloud cloud-3"></div>
            <div class="ele-cloud cloud-4"></div>
            <div class="ele-cloud cloud-5"></div>
        </div>
    </div>
    <!-- section2 -->
    <div class="section section2">
        <div class="bg"></div>
        <div class="main">
            <div class="title" style="width:1000px; margin: 0 auto;">
                <h2 class="txt-h2">开奖中奖早知道</h2>
                <h3 class="txt-h3">中奖喜讯，一分钟也不能等</h3>
            </div>
            <div class="pic">
                <div class="stage"></div>
                <div class="p-1"></div>
                <div class="p-2"></div>
                <div class="p-3"></div>
                <div class="p-4"></div>
            </div>
        </div>
    </div>
    <!-- section3 -->
    <div class="section section3">
        <div class="bg"></div>
        <div class="main">
            <div class="title" style="width:1000px; margin: 0 auto;">
                <h2 class="txt-h2">安全有保障 服务新趋势</h2>
                <h3 class="txt-h3">登录密码保障，购彩实名制、中大奖全程协助领取，为您打造<br>最安全的服务平台，让您约彩无忧、领奖无忧~</h3>
            </div>
            <div class="pic">
                <div class="stage"></div>
                <div class="safe"></div>
                <div class="star"></div>
            </div>
        </div>
    </div>
    <div class="section footer fp-auto-height" style="margin-top: 0">
        <div class="main">
            <p>81彩票提醒：理性购彩，热爱公益  我们承诺不向未满18周岁的青少年出售彩票！</p>
            <p>版权所有 © 81彩票</p>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $(".arrow").click(function () {
            $.fn.fullpage.moveSectionDown();
        });
    });
    $('#fullpage').fullpage({
        'verticalCentered': false,
        'css3': true,
        'anchors': ['page1', 'page2', 'page3', 'page4'],
        'navigation': true,
        'navigationPosition': 'right'
    });
</script>
<div class="hide">
    <!--note-footer start-->
    <style>
        .foot-short { margin-top: 0;}
    </style>
    <script type="text/javascript">
        var baseUrl = '';
        var uri = '/activity/newmode';
        var version = 'v1.1';
        var G = {
            baseUrl: baseUrl
        }
    </script>

    <script src="${resPath}js/wbw/jquery-1.8.3.min.js?v=20170525"></script>
    <script src="${resPath}js/wbw/base.min.js?v=20170525" type="text/javascript"></script>
    <script src="${resPath}js/wbw/vform.js?v=20170525"></script>
    <script src='${resPath}js/wbw/comm.min.js?v=20170525' type="text/javascript" ></script>
    <script src="${resPath}js/wbw/encrypt.min.js?v=20170525" type="text/javascript"></script>
</div>

</body>
<script type="text/javascript" src="${resPath}pc/js/scrollanim.min.js"></script> <!--"动画库"-->
<script src="${resPath}pc/js/type.js"></script><!--自定义封装函数-->
<script>
    $(".banner").mousemove(function (e) {
        $(".banner .float").css({"left": e.clientX / 80 + "px", "top": (e.clientY) / 40 + "px"})
    });

    function go() {
        var url = $("#inputUrl").val();
        if (!url) {
            return;
        }
        window.location.href = "http://" + url.replace("http://", "");
    }
</script>
<script>${webTjjs}</script>
</html>