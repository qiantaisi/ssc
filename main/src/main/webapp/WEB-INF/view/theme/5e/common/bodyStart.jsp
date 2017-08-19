<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <link rel="stylesheet" href="${resPath}css/cabel-v1.css?v=20170206" type="text/css">
    <link rel="stylesheet" href="${resPath}css/style.css?v=20170819_1" type="text/css"><!--页面CSS-->
    <link rel="stylesheet" href="${resPath}css/animate.min.css?v=20170206" type="text/css"><!--CSS3动画-->
    <link rel="stylesheet" href="${resPath}css/lottery.css?v=20170206" type="text/css"><!--页面CSS-->
    <link rel="stylesheet" href="${resPath}css/liMarquee.css?v=20170206" type="text/css"><!--页面CSS-->
    <link rel="stylesheet" href="${resPath}jRange/jquery.range.css?v=20170402" type="text/css">
    <link rel="stylesheet" href="${resPath}css/global.css?v=20170706" type="text/css"><!--页面CSS-->
    <link rel="stylesheet" href="${resPath}css/other.css?v=20170518" type="text/css"><!--页面CSS-->
    <link rel="stylesheet" href="${resPath}css/gfwf.css?v=20170502" type="text/css"><!--页面CSS-->
    <script src="${resPath}js/FancyZoom.js" language="JavaScript" type="text/javascript"></script>
    <script src="${resPath}js/FancyZoomHTML.js" language="JavaScript" type="text/javascript"></script>
    <jsp:include page="commonHeader.jsp" />
    <style>
        a:hover{
            color: red;

        }
        a:active{
            color:deepskyblue;
        }
    </style>
</head>
<%--<body onLoad="setupZoom();">--%>
<body>
