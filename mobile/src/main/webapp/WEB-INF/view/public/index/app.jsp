    <%@ page import="org.apache.commons.lang3.StringUtils" %>
        <%@ page trimDirectiveWhitespaces="true" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page import="project38.api.utils.RequestUtils" %>
        <%@ page import="project38.api.utils.ApiUtils" %>
            <%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = RequestUtils.getScheme(request) + "://" + "m." + request.getServerName().replace("m.", "").replace("www.", "");
    String pcHostName = RequestUtils.getScheme(request) + "://" + "www." + request.getServerName().replace("m.", "").replace("www.", "");
%>
        <!DOCTYPE html>
        <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1,  user-scalable=no">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="${resPath}app/css/init.css?v=20170811"/>
        <link rel="stylesheet" href="${resPath}app/css/main.css?v=20170811"/>
        <script type="text/javascript" src="${resPath}app/js/jquery.min.js"></script>
        <script type="text/javascript" src="${resPath}app/js/template.js"></script>
        <script type="text/javascript" src="${resPath}app/js/view.js"></script>
        <title>${data.webTitle}</title>
        <script>if (window.top !== window.self) {top.location.href = "<%=basePath%>";}</script>
        <script src="${commonResPath}js/mobile-detect.min.js"></script>
        <script>
        var md = new MobileDetect(window.navigator.userAgent);
        if (!md.mobile()) {
        window.location.href = "<%=pcHostName%>/app.html" + "<c:if test="${not empty param.p}">/?p=${param.p}</c:if>";
        }

        if (!window.navigator.cookieEnabled) {
        alert("请检查您的浏览器是否禁用了COOKIE");
        }
        </script>
        <style>
        body{padding:0;margin:0;}
        body{ font-size:24px; font-family:微软雅黑; background:#fff; color:#333;}
        .clearfix:after { content: "."; display: block; height: 0; clear: both; visibility: hidden }
        *html .clearfix { height: 1% }
        *+html .clearfix { height: 1% }
        .btn{ width:352px; height:84px; line-height: 84px; display:block; background: #fb4748; font-size: 36px; color:#fff;
        text-align: center; text-decoration: none; border-radius: 6px; margin:auto; margin-top: 42px;}
        .f_back_info{
        width:340px; margin: auto; font-size: 20px; color:#888; display: none}
        .f_back_info dt{width:340px;}
        .f_back_info dd{width:340px; margin: 0}

        #popweixin {
        width:100%;
        height:100%;
        overflow:hidden;
        position:fixed;
        z-index:1000;
        background:rgba(0,0,0,.5);
        top:0;
        left:0;
        display:none;
        }
        #popweixin .tip {
        width:100%;
        background:#fff;
        z-index:1001;
        text-align:right;
        }
        .top2bottom {
        -webkit-animation:top2bottom 1.2s ease;
        -moz-animation:top2bottom 1.2s ease;
        -o-animation:top2bottom 1.2s ease;
        animation:top2bottom 1.2s ease;
        -webkit-animation-fill-mode:backwards;
        -moz-animation-fill-mode:backwards;
        -o-animation-fill-mode:backwards;
        animation-fill-mode:backwards
        }
        .animate-delay-1 {
        -webkit-animation-delay:1s;
        -moz-animation-delay:1s;
        -o-animation-delay:1s;
        animation-delay:1s
        }
        #zz{ width:100px; height:100px; position:fixed; z-index:99; background:#000;filter:alpha(opacity=60);filter: progid:DXImageTransform.Microsoft.Alpha(opacity=60); -moz-opacity:0.6; -khtml-opacity:0.6; opacity:0.6; display:none;left:0; top:0}
        #tongzhi{width:400px; padding:30px; height:380px; position:fixed; z-index:9999; background:#fff; border-radius:5px}
        #tongzhi h1{ margin:0; padding:0; font-size:38px; color:#666; text-align:center;}
        #tongzhi p{ font-size:24px; color:#666; text-indent:30px; line-height:1.5em; margin-top:10px;}
        #tongzhi p span{ color:#ff1c1c;}
        #close{ width:36px; height:36px; position:absolute; z-index:9999; background:url(${resPath}app/imgaes/closed.png) no-repeat; top:-15px; right:-15px;}
        #new_btn{ width:314px;height:54px; line-height:54px; background:#5dbbe3; color:#fff; font-size:24px; font-weight:bold; text-align:center; display:block; text-decoration:none; border:3px solid #34aadc; border-radius:10px; margin:auto;}
        /*.ios9{ width:100%; height:196px; position:fixed; z-index:9; top:0; left:0; background:rgba(142,116,78,0.9); display: none}*/
        .ios9{ width:100%; height:156px; z-index:9; top:0; left:0; background:rgba(63,63,63,0.9); display: none}
        .ios9_box{ width:640px; height:156px; margin:auto;}
        /*.ios9_box .info1{ width:492px; padding:16px 38px 16px 110px; height:50px; line-height:45px; font-size:28px; color:#fff;
        background:url(<%=basePath%>images/${data.phoneIconId}.png) no-repeat 20px center; overflow:hidden; text-overflow:ellipsis;white-space:nowrap;}*/
        .ios9_box .info1{ width:492px; padding:16px 38px 16px 110px; height:50px; line-height:45px; font-size:28px; color:#fff; overflow:hidden; text-overflow:ellipsis;white-space:nowrap;}
        .ios9_box .info2{ width:640px; height:60px;}
        .ljxr_btn{ width:140px; height:47px; line-height: 47px; display:block; margin:auto; background:#fff; border-radius: 6px; color:#f53334;
        font-size: 28px; text-align: center; text-decoration: none; }
        .rhxr{ line-height:57px; float:right; color:#fff; text-decoration:underline; font-size:26px; margin-right:100px; }
        .zs{ color: #fff;}

        #only_safari{ width:580px;height: 400px; background: #fff;
        display: none;z-index: 99999; position: fixed; border-radius: 10px}
        #jump_closed,#jump_closed1{ width:30px; height:30px; position: absolute; top:20px; right:20px;
        background: url(${resPath}app/imgaes/close.png) no-repeat; z-index: 99999 }
        .safari_img{ width:165px; height:165px; margin:auto; margin-top: 46px;}
        #only_safari dl{width:400px; margin:auto;}
        #only_safari dl dt{ color: #444; font-size: 28px; text-align: center; margin-top: 18px; margin-bottom: 18px;}
        #only_safari dl dd{ color:#666; line-height: 36px; font-size: 24px; margin:0}
        #only_safari dl dd span{ color: #dd3435}
        .zhengshu{ width:430px; height:68px; font-size:30px; color:#fff; line-height:68px; margin:auto;overflow:hidden; text-overflow:ellipsis;white-space:nowrap;}
        .zhengshu span{ text-decoration:underline;}
        .zhengshu span a{ font-size:42px; color:#fff;}
        .xinren{ width:500px; padding:0 70px; height:30px; line-height:30px; color:#fff; float:right; text-align:right; font-size:30px; text-decoration:underline;}
        #baidu_select{ width:496px; height: 330px; background: #fff; display: none;z-index: 99999; position: fixed; border-radius: 10px}
        #baidu_select h2{ width: 496px; height: 60px; line-height: 60px; margin: auto; margin-top: 70px; font-size: 28px; color: #5a5a5a;  text-align: center; font-weight: normal}
        #baidu_select p{ width: 496px; height: 60px; line-height: 60px; margin: auto; font-size: 28px; color: #5a5a5a; font-weight: bold; text-align: center}
        #baidu_select span{ padding-left: 55px; background: url("${resPath}app/imgaes/safari_icon.png") no-repeat; display: inline-block;}
        #copy_box{ width:408px; height: 60px; line-height: 60px; margin: auto; border: 3px solid #dcdcdc; border-radius: 6px;}
        #copy_box textarea#select_url{width:250px; height: 60px; line-height: 60px; float: left; font-size: 20px; color: #5a5a5a; border: none; background: transparent}
        #copy_box #btn_copy{ width:150px; height: 60px; line-height: 60px; background: #448aca; color: #fff; font-size: 24px; text-align: center;
        float: right; border-radius: 6px;}
        @-webkit-keyframes top2bottom {
        0% {
        -webkit-transform:translateY(-428px);
        opacity:.6
        }
        100% {
        -webkit-transform:translateY(0px);
        opacity:1
        }
        }@keyframes top2bottom {
        0% {
        transform:translateY(-428px);
        opacity:.6
        }
        100% {
        transform:translateY(0px);
        opacity:1
        }
        </style>
        <link type="text/css" rel="stylesheet" href="${resPath}app/css/weibo.css?v=20170821" />
        <script type="text/javascript" src="${resPath}app/js/mi1.js?v=20170821"></script>
        </head>
        <body onload="checkJump(true)">
        <div id="content"></div>
        <div id="zz"></div>
        <div id="baidu_select">
        <div id="jump_closed1"></div>
        <h2>当前浏览器不能直接安装</h2>
        <p>请用 safari        <span>打开</span></p>
        <div id="copy_box">
        <textarea id="select_url"></textarea>
        <div id="btn_copy">复制链接</div>
        </div>
        </div>
        <div class="ios9">
        <div class="ios9_box">
        <div class="info1">
        安装APP后，信任下证书，即可使用。
        </div>
        <div class="info2">
        <a href="/ipaxinren.html" onclick="clickStat('hm1005')" class="rhxr nosafari">如何信任？</a>
        <a href="/ipaxinren.html" onclick="clickStat('hm1004')" id="ljxr_btn" class="ljxr_btn nosafari">立即信任</a>
        </div>
        </div>
        </div>
        <div id='popweixin'>
        <div class='tip top2bottom animate-delay-1' id="weixinimg">
        </div>
        </div>
        <div class="yd_head clearfix">
        <a href="javascript:void(0)" class="left logo">
        <img src="${basePath}images/${data.logoImageId}.png" alt="${data.webTitle}">
        </a>
        <div class="right clearfix yd_head_rt">
        <a href="${data.androidURL}" class="left" style="color:#8fc31f; border: 2px solid #8fc31f;" target="_blank">
        <img src="${resPath}app/imgaes/yind_09.png" class="img_q"/>
        <img src="${resPath}app/imgaes/yind_099.png" class="img_h"/>
        安卓下载
        </a>
        <a href="${data.iosURL}" class="left" style="color:#e73030;border: 2px solid #e73030;" target="_blank">
        <img src="${resPath}app/imgaes/yind_088.png" class="img_q"/>
        <img src="${resPath}app/imgaes/yind_08.png" class="img_h"/>
        iOS下载
        </a>
        </div>
        </div>
        <%--<div class="yd_banner">--%>
        <%--<a href="javascript:void(0)">--%>
        <%--<img src="${resPath}app/imgaes/yind_14.png"/>--%>
        <%--</a>--%>
        <%--</div>--%>
        <div class="main">
        <div class="yd1 clearfix">
        <a href="<%=mHostName%>" class="yd1_img left">
        <img src="<%=basePath%>images/${data.phoneIconId}.png"/>
        </a>
        <div class="yd1_rt">
        <p class="yd1_rt_tl">
        <a href="<%=basePath%>">${data.appName}</a>
        </p>
        <div class="yd1_rt_text">
        评级：<span class="star"></span><span class="star"></span><span class="star"></span><span class="star"></span><span class="star"></span><br/>
        更新日期：2017年07月21日<br/>
        版本：IOS${data.iosVersion}/An${data.androidVersion}<br/>
        大小：3.9MB<br/>
        语言：简体中文<br/>
        </div>
        </div>
        </div>
        <div class="yd2 clearfix">
        <a class="left" style="background: #8fc31f;" href="${data.androidURL}" target="_blank">
        <img src="${resPath}app/imgaes/yind_28.png"/>
        安卓下载
        </a>
        <a class="right" style="background: #fa3500;" href="${data.iosURL}" onclick="checkJump(false)" id="setup_btn" target="_blank">
        <img src="${resPath}app/imgaes/yind_26.png"/>
        IOS下载
        </a>
        </div>
        <div class="yd3">
        <a href="<%=basePath%>">WAP继续访问</a>
        </div>
        </div>
        <img src="${resPath}app/imgaes/img_01.jpg" style="width: 100%;vertical-align: middle;margin-bottom: 15px;"/>
        <img src="${resPath}app/imgaes/img_03.jpg" style="width: 100%;vertical-align: middle;margin-bottom: 15px;"/>
        <%--<div class="pl_tl">--%>
        <%--<div class="pl_tl_main">--%>
        <%--用户评价<span>USER EVALUATION</span>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<ul class="pinglun">--%>
        <%--<li>--%>
        <%--<p class="pj_con">--%>
        <%--特别好--%>
        <%--</p>--%>
        <%--<p class="pj_per">--%>
        <%--评论人：<span>小二的毛巾</span>--%>
        <%--</p>--%>
        <%--<p>--%>
        <%--喜欢玩彩票，推荐大家使用，无意间发现这个好用，开奖和投注都--%>
        <%--随时随地可以查看--%>
        <%--</p>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<p class="pj_con">--%>
        <%--特别好--%>
        <%--</p>--%>
        <%--<p class="pj_per">--%>
        <%--评论人：<span>小二的毛巾</span>--%>
        <%--</p>--%>
        <%--<p>--%>
        <%--喜欢玩彩票，推荐大家使用，无意间发现这个好用，开奖和投注都--%>
        <%--随时随地可以查看--%>
        <%--</p>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<p class="pj_con">--%>
        <%--特别好--%>
        <%--</p>--%>
        <%--<p class="pj_per">--%>
        <%--评论人：<span>小二的毛巾</span>--%>
        <%--</p>--%>
        <%--<p>--%>
        <%--喜欢玩彩票，推荐大家使用，无意间发现这个好用，开奖和投注都--%>
        <%--随时随地可以查看--%>
        <%--</p>--%>
        <%--</li>--%>
        <%--</ul>--%>
        <div class="footer">
        ${data.webBottom}
        </div>
        <script id="show" type="text/html">
        <a href="{{clickUrl}}" target="_blank">
        <img id="adshowimage" src="{{showUrl}}"  width="0" height="0" >
        </a>
        </script>
        <script id="notice" type="text/html">
        <iframe id="noticeframe" src="{{noticeUrl}}"  style="display:none;" frameBorder=0></iframe>
        </script>
        <script type="text/javascript">
        var ios_bb = 0;
        var isbdbox=false;
        function banben() {
        var uaua = navigator.userAgent;
        var ppgz = /iPhone OS \d+_\d/;
        var pp = new RegExp(ppgz);
        var hqbb = uaua.match(pp);
        var hqbb = hqbb.toString();
        var shuzi = /\d+_\d/;
        ios_bb = hqbb.match(shuzi);
        ios_bb = String(ios_bb);
        ios_bb = Number(ios_bb.replace(/_/, "."));
        if (uaua.indexOf("baiduboxapp", 10) > 0) {
        //hqbb = uaua.match(/baiduboxapp\/\d+_([\d.]+)_/);
        //var bdv = hqbb[1].split("").reverse().join("");
        //bdv = bdv.substr(0, bdv.lastIndexOf("."));
        //if (bdv >= "7.6.0")
        //{
        isbdbox=true;
        select_jump();
        //}
        }

        if (ios_bb >= 9) {
        var ios9 = document.getElementsByClassName("ios9")[0];
        setTimeout(function () { ios9.style.display = 'block'; }, 2000);
        var certInstallGuide = "/ipaxinren.html";var nosafariArray = document.getElementsByClassName("nosafari");var href = certInstallGuide.replace(/device=\d+/g, "device=3");for (var i = 0; i < nosafariArray.length; i++){nosafariArray[i].setAttribute("href", href);}
        clickStat('hm1001');
        }
        }
        banben();
        /*    function checkJump(load) {
        $("setup_btn").href = isbdbox?"javascript:select_jump();":(ua.indexOf('baidubrowser', 10) > 0?"javascript:baiduBrower();" :"${data.iosURL}");
        if (load && (ios_bb < 9 || (ua.indexOf('safari', 10) < 0 || ua.indexOf('ucbrowser', 10) > 0 || ua.indexOf('baidubrowser', 10) > 0 || ua.indexOf('mqqbrowser', 10) > 0 || ua.indexOf('qhbrowser', 10) > 0 || ua.indexOf('crios', 10) > 0 || ua.indexOf('opios', 10) > 0))) {
        setTimeout(function () { window.location = "${data.iosURL}";}, 300);
        }
        popPrompt();
        }
        function baiduBrower()
        {
        setTimeout(function () { window.location = "${data.iosURL}";}, 300);
        }*/
        </script>
        <script type="text/javascript">
        var browser = {
        versions: function () {
        var u = navigator.userAgent, app = navigator.appVersion;
        return { //移动终端浏览器版本信息
        ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
        android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或uc浏览器
        iPhone: u.indexOf('iPhone') > -1, //是否为iPhone或者QQHD浏览器
        iPad: u.indexOf('iPad') > -1, //是否iPad
        };
        }(),
        }
        if (browser.versions.iPhone) {
        window.location.href = "${data.iosURL}";
        }
        </script>
        <script type="text/javascript" src="${resPath}app/js/hmdev.js"></script>
        </body>
        </html>