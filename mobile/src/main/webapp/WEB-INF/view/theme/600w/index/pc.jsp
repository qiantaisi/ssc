<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = RequestUtils.getScheme(request) + "://" + request.getServerName() + ":" + request.getServerPort();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>${webTitle}</title>
    <meta name="keywords" content="${webKeywords}"/>
    <meta name="description" content="${webDescription}"/>
    <link rel="stylesheet" href="${resPath}pc/css/style.css" type="text/css"><!--页面CSS-->
    <link rel="stylesheet" href="${resPath}pc/css/animate.min.css" type="text/css"><!--CSS3动画-->
    <script type="text/javascript" src="${resPath}pc/js/jquery-1.4.4.min.js"></script><!--jQuery库-->
    <script src="${resPath}pc/js/mobile-detect.min.js"></script>
    <script>
        var md = new MobileDetect(window.navigator.userAgent);
        if (md.mobile()) {
            window.location.href = '<%=RequestUtils.getScheme(request) + "://" + request.getServerName()%>';
        }
    </script>
</head>
<body>
<div class="top">
    <div class="wid">
        <div class="logo" ani="bounce">
            <img src="${resPath}pc/img/logo.png" alt="">
        </div>
        <div class="menu">
            <ul>
                <li class="acti"><a href="<%=RequestUtils.getScheme(request) + "://" + request.getServerName()%>">手机投注</a></li>
                <li><a href="<%=RequestUtils.getScheme(request) + "://" + request.getServerName().replace("m.", "")%>">电脑网页版</a>
                </li>
            </ul>
        </div>
    </div>
</div><!--top-->

<div class="banner">

    <div class="wid">
        <div class="text" ani="fadeInLeft">
            <img src="${resPath}pc/img/img0.png" alt="">
            <p>随时随地轻松存取款<br>Android / iPhone移动装置访问 </p>
            <div class="boxsea">
                <input type="text" value="<%=request.getServerName()%>" id="inputUrl">
                <a href="javascript:void(0)" onclick="go()"></a>
            </div>
        </div>
        <div class="rig_pic" ani="fadeInDown">
            <img src="${resPath}pc/img/img1.png" alt="">
        </div>
        <div class="list_ico at" ani="fadeInUp">
            <ul>
                <li>
                    <div class="pict">
                        <i><img src="${resPath}pc/img/ico0.png" alt=""></i>
                    </div>
                    <p>安全保障</p>
                </li>
                <li>
                    <div class="pict">
                        <i><img src="${resPath}pc/img/ico1.png" alt=""></i>
                    </div>
                    <p>信誉至上</p>
                </li>
                <li>
                    <div class="pict">
                        <i><img src="${resPath}pc/img/ico2.png" alt=""></i>
                    </div>
                    <p>极速到帐</p>
                </li>
                <li>
                    <div class="pict">
                        <i><img src="${resPath}pc/img/ico3.png" alt=""></i>
                    </div>
                    <p>微信入款</p>
                </li>
                <li>
                    <div class="pict">
                        <i><img src="${resPath}pc/img/ico4.png" alt=""></i>
                    </div>
                    <p>支付宝</p>
                </li>
                <li>
                    <div class="pict">
                        <i><img src="${resPath}pc/img/ico5.png" alt=""></i>
                    </div>
                    <p>资金赔付</p>
                </li>
                <li>
                    <div class="pict">
                        <i><img src="${resPath}pc/img/ico6.png" alt=""></i>
                    </div>
                    <p>随时随地</p>
                </li>

            </ul>
        </div>
    </div>

    <div class="float"><img src="${resPath}pc/img/img2.png" alt=""></div>
</div>

<div class="bot_copy">
    <p>copyright©<%=request.getServerName().replace("m.", "")%>
    </p>
</div>

</body>
<script type="text/javascript" src="${resPath}pc/js/scrollanim.min.js"></script> <!--"动画库"-->
<script src="${resPath}pc/js/type.js"></script><!--自定义封装函数-->
<script>
    $(".banner").mousemove(function (e) {
        $(".banner .float").css({"left": e.clientX / 80 + "px", "top": (e.clientY) / 40 + "px"})
    })

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