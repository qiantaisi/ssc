<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <%--<c:import url="../common/checkIsChildFrame.jsp" />--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate"/>
    <meta http-equiv="expires" content="0"/>
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" href="${resPath}sui/css/sm.min.css?v=201702280308">
    <link rel="stylesheet" href="${resPath}sui/css/sm-extend.min.css?v=201702280308">
    <link rel="stylesheet" href="${resPath}swiper/css/swiper.min.css?v=201702280308">
    <link rel="stylesheet" href="${resPath}css/style.css?v=201703222201">
    <link rel="stylesheet" href="${resPath}css/other.css?v=20170421">
    <link rel="stylesheet" href="${resPath}css/vipcp-style.css?v=20170527">
    <link rel="stylesheet" href="${resPath}css/vipcp-login-reg.css?v=20170519">

    <script>
        <!--
        // 屏蔽JS错误
        //        window.onerror = function(){return true;}
        // -->
    </script>
    <title></title>
</head>
<body>