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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="text/javascript" src="${resPath}app/js/view.js"></script>
    <script type="text/javascript" src="${resPath}app/js/jquery.min.js"></script>
    <script type="text/javascript" src="${resPath}app/js/template.js"></script>
    <title>如何信任APP证书</title>
    <style>
        body{padding:0;margin:0; overflow-x: hidden}
        body{ font-size:12px; font-family:微软雅黑; background:#fff; color:#333;}
        .y_main{width:100%; background:#fff; margin:auto; padding-top:90px;}
        .y_tishi{ width:610px; padding:16px 15px 0px 15px; }
        .y_tishi_box{width:562px; padding:24px; background:#f2f2f2; color:#000; border-radius:8px; font-size:24px;}
        .y_tishi_box p{ margin:0; padding:0; line-height:1.5em}
        .yd_main{ width:640px;}
        dl{ width:640px; height:auto; display:block; margin-bottom:20px;}
        dl dt{ width:572px; height:auto; display:block; line-height:60px; margin:auto;}
        dl dt em{ width:50px; height:50px; display:block; float:left; background:#f54846; color:#fff; font-style:normal; font-size:32px; font-weight:bold; text-align:center; line-height:50px; border-radius:30px}
        dl dt span{ width:500px; height:auto; float:left; display:block; line-height:50px; font-size:30px; margin:0; padding:0; margin-left:15px;}
        dl dt span p{ margin:0; padding:0}
        .zsmc{ width:500px; height:50px; line-height:50px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;}
        dl dd{ width:640px; height:auto; display:block; text-align:center; margin:auto; padding:24px 0}

        .sub_title{ width:100%; height:90px; position:fixed; z-index:999; top:0; left:0; border-bottom:1px solid #ddd; background:#99825f;}
        .sub_title_box{ width:640px; height:90px; margin:auto; position:relative;}
        .xinren_btn{ width: 112px; height: 48px; line-height: 48px; background: #509efc; color: #fff; text-align: center; font-size: 22px;position:absolute; z-index:2; right:10px; top:4px; border-radius: 6px}
        .sub_title_con{ width:500px; height:90px; line-height:90px; text-align:center; font-size:28px; color:#fff; margin:auto;}
        .back_arrow{ display:block; width:90px; height:90px; background:url(${resPath}app/imgaes/back_arrow.png) no-repeat; position:absolute; z-index:2; top:0; left:10px;}

        .clearfix:after { content: "."; display: block; height: 0; clear: both; visibility: hidden }
        .clearfix { zoom: 1; display: inline-block; _height: 1px }
        *html .clearfix { height: 1% }
        *+html .clearfix { height: 1% }
        .clearfix{display: block}
        @-webkit-keyframes top2bottom {
            0% {
                -webkit-transform:translateY(-428px);
                opacity:.6
            }
            100% {
                -webkit-transform:translateY(0px);
                opacity:1
            }
        }
        @keyframes top2bottom {
            0% {
                transform: translateY(-428px);
                opacity: .6;
            }

            100% {
                transform: translateY(0px);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
<div id="content"></div>
<div class="sub_title">
    <div class="sub_title_box">
        <a class="back_arrow" href="/app.html"></a>
        <div class="sub_title_con">如何信任${data.appName}证书</div>
    </div>
</div>
<div class="y_main">
    <div class="y_tishi">
        <div class="y_tishi_box">
            <p>由于苹果系统限制，安装${data.appName}后直接打开，系统会
                提示"未受信任的企业级开发者"。为正常使用，
                需手动去信任${data.appName}证书，教程如下：</p>
        </div>
    </div>
    <div class="yd_main">
        <dl class="clearfix">
            <dt class="clearfix">
                <em>1</em>
                <span>
                	<p>记住${data.appName}证书：</p>
					<div class="zsmc"><span style="color:#E53333;">打开${data.appName}App时所提示的证书</span></div>
                	<p>如:下图的系统提示框中红色下划线位置</p>
				</span>
            </dt>
            <dd>
                <img src="${resPath}app/imgaes/nosafari_1.png" />
            </dd>
        </dl>
        <dl class="clearfix">
            <dt class="clearfix">
                <em>2</em>
                <span>
                	<p>找到${data.appName}证书</p>
                	<p>依次点击设备上的【设置】->【通用】->【描述文件】</p>
				</span>
            </dt>
            <dd>
                <img src="${resPath}app/imgaes/nosafari_2.png" />
            </dd>
        </dl>
        <dl class="clearfix">
            <dt class="clearfix">
                <em>3</em>
                <span>
                	<p>点击并进入${data.appName}证书</p>
				</span>
            </dt>
            <dd>
                <img src="${resPath}app/imgaes/nosafari_3.png" />
            </dd>
        </dl>
        <dl class="clearfix">
            <dt class="clearfix">
                <em>4</em>
                <span>
                	<p>点击【信任"证书名称"】</p>
				</span>
            </dt>
            <dd>
                <img src="${resPath}app/imgaes/nosafari_4.png" />
            </dd>
        </dl>
        <dl class="clearfix">
            <dt class="clearfix">
                <em>5</em>
                <span>
                	<p>在弹窗中点击【信任】</p>
				</span>
            </dt>
            <dd>
                <img src="${resPath}app/imgaes/nosafari_5.png" />
            </dd>
        </dl>
    </div>
</div>
<script id="show" type="text/html">
    <a href="{{clickUrl}}" target="_blank">
        <img id="adshowimage" src="{{showUrl}}"  width="0" height="0" >
    </a>
</script>
<script id="notice" type="text/html">
    <iframe id="noticeframe" src="{{noticeUrl}}"  style="display:none;" frameBorder=0></iframe>
</script>
<script type="text/javascript" src="${resPath}app/js/hmdev.js"></script>
</body>
</html>