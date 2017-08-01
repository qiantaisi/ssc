<%@ page import="java.util.Calendar" %>
<%@ page import="project38.api.result.CompanyShortNameResult" %>
<%@ page import="project38.api.utils.ApiUtils" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="org.apache.commons.logging.LogFactory" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);

    String resPath = basePath + "static/public/";
    request.setAttribute("resPath", resPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>维护中</title>
    <style>
        *{ margin:0; padding:0; border:none;}
        html{ width:100%; height:100%;}
        body{ width:100%; height:100%; background:#fff;}
        .cont{ width:100%; height:100%;}
        .cont p{ text-align:center; line-height:50px; color:#333; color:#fa6200; font-size:22px;font-family:"微软雅黑"; text-align:center; }

        @media (max-width: 800px){
            .cont{ width:100%; height:100%;}
            .cont p{ text-align:center; line-height:50px; color:#333; color:#fa6200; font-size:18px;font-family:"微软雅黑"; text-align:center;}
            /*.cont p img{ width:100%;}*/
        }

        .header{ width:100%; height:60px; background:#fa6200; position:fixed; left:0; top:0;}
        .header .p-logo{ float:left;padding:10px 0 0 10px;line-height:60px;}
        .header .p-logo img{ vertical-align:middle;}
        .header .p-service a{ float:right; color:#fff; font-size:18px; line-height:60px; font-family:"微软雅黑"; padding:0 20px; background:#de5700; text-decoration:none;}
        .result_box {
            font-size: 14px;
            color: #666666;
            min-height: 89px;
            position: relative;
            z-index: 2;
            word-wrap: break-word;
            display:inline; line-height:25px;
        }
    </style>
    <script>
        // 防止被frame
        if (top.location != self.location) top.location = self.location;
    </script>
</head>
<body>
<div class="header">
    <p class="p-logo"><a href="javascript:void(0)"><img src="<%=basePath%>images/${logo.imageId}.png" width="180"/></a></p>
    <p class="p-service"><a href="${kefuUrl}" target="_blank">联系客服</a></p>
</div>
<div class="cont">
    <p class="p1" style="margin-top:80px;"><img src="${resPath}error/404/images/p1.png" /></p>
    <p>
        <span style="font-size: 30px; color: rgb(89, 89, 89);"><strong>该页面正维护中</strong></span>
        <br>
        <span style="font-size: 30px; color: rgb(89, 89, 89);"><strong>对您造成的不便请谅解</strong></span>
    </p>
    <p class="p3" style="margin-top:10px;">
	<span class="result_box">
	<span class="">Hello, we are very sorry to inform,</span>
	<br>
	<span>The page is being maintained!</span>
	<br>
	<span class="">We apologize for the inconvenience you have caused.</span>
	<br>
	<span class="">Please also try again later, thank you!</span>
	</span>
    </p>
</div>
</body>
</html>