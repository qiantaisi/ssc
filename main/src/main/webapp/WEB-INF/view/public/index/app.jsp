<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%@ page import="project38.api.utils.ApiUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = RequestUtils.getScheme(request) + "://" + "m." + request.getServerName().replace("www.", "");
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="keywords" content="${data.webKeyword}" />
    <meta name="description" content="${data.webDscp}" />
    <link rel="stylesheet" href="${resPath}app/css/style.css" type="text/css"><!--页面CSS-->
    <link rel="stylesheet" href="${resPath}app/css/animate.min.css" type="text/css"><!--CSS3动画-->
    <script type="text/javascript" src="${resPath}app/js/jquery.min.js"></script><!--jQuery库-->
    <script src="${resPath}app/js/library-8.5.js"></script><!--自定义封装函数-->
    <script src="${resPath}app/js/scrollanim.min.js"></script><!--动画效果库-->
    <title>${data.webTitle}</title>
</head>
<body>
<div class="tops">
    <div class="wids">
        <div class="logo">
            <img src="${basePath}images/${logo.imageId}.png" alt="${data.webTitle}">
        </div>
        <div class="notice">${data.webMessage}</div>
        <div class="customer">
            <a href="${kefuUrl}" target="_blank"><img src="${resPath}app/img/ico1.png" alt=""></a>
        </div>
    </div>
</div>

<div class="banner">
    <div class="wids">
        <div class="pict">
            <img src="<%=basePath%>images/${data.startIconId}.png" alt="" class="iphone-pic">
            <img src="${resPath}app/img/ico2.png" alt="">
        </div>
        <div class="text">
            <h2></h2>
            <h2>欢迎下载 <i>${data.appName}</i> <span>${data.webMessage}</span></h2>
            <ul>
                <li>
                    <div class="code">
                        <img src="<%=basePath%>images/${data.iosQRCodeImageId}.png" alt="">
                    </div>
                    <a class="ios" href="${data.iosURL}" target="_blank">
                        <img src="${resPath}app/img/ico16.png" alt="">
                        <p>
                            Iphone版下载
                            <span>版本：${data.iosVersion}</span>
                        </p>
                    </a>
                </li>
                <li>
                    <div class="code">
                        <img src="<%=basePath%>images/${data.androidQRCodeImageId}.png" alt="">
                    </div>
                    <a class="android" href="${data.androidURL}" target="_blank">
                        <img src="${resPath}app/img/ico17.png" alt="">
                        <p>
                            Android版下载
                            <span>版本：${data.androidVersion}</span>
                        </p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="hot-games dt">
    <div class="wids">
        <h2>
            <span>热门彩种<var>HOT games</var></span>
        </h2>
        <ul>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico3.png" alt=""></i>
                    </div>
                    <p>香港六合彩</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico4.png" alt=""></i>
                    </div>
                    <p>幸运飞艇</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico5.png" alt=""></i>
                    </div>
                    <p>PC蛋蛋</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico6.png" alt=""></i>
                    </div>
                    <p>三分时时彩</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico7.png" alt=""></i>
                    </div>
                    <p>安徽快3</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico8.png" alt=""></i>
                    </div>
                    <p>福彩3D</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico9.png" alt=""></i>
                    </div>
                    <p>重庆时时彩</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico10.png" alt=""></i>
                    </div>
                    <p>北京PK10</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico11.png" alt=""></i>
                    </div>
                    <p>分分时时彩</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico12.png" alt=""></i>
                    </div>
                    <p>极速PK10</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico13.png" alt=""></i>
                    </div>
                    <p>北京快乐8</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="pict">
                        <i><img src="${resPath}app/img/ico14.png" alt=""></i>
                    </div>
                    <p>重庆幸运农场</p>
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="footer">
    <div class="wids">
        <p>${data.webBottom}</p>
        <p><%=RequestUtils.getServerName(request)%>   郑重提示：彩票有风险，投注需谨慎 不向未满18周岁的青少年出售彩票</p>
        <img src="${resPath}app/img/ico15.png" alt="">
    </div>
</div>
</body>
</html>