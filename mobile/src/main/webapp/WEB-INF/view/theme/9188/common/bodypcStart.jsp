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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="${webKeywords}"/>
    <meta name="description" content="${webDescription}"/>
    <title>${webTitle}</title>
    <link rel="stylesheet" type="text/css" href="${resPath}css/global.min.css">
    <link rel="stylesheet" type="text/css" href="${resPath}css/css.min.css" />
    <script type="text/javascript" src="${resPath}pc/js/jquery-1.4.4.min.js"></script><!--jQuery库-->
    <script src="${resPath}js/wbw/jquery-1.8.3.min.js?v=20170525" type="text/javascript"></script>
    <script src="${resPath}js/wbw/base.min.js?v=20170525" type="text/javascript" ></script>
    <script src="${resPath}js/wbw/jquery.fullPage.min.js?v=20170525" type="text/javascript"></script>
    <script>
        var md = new MobileDetect(window.navigator.userAgent);
        if (md.mobile()) {
            window.location.href = '<%=request.getScheme() + "://" + request.getServerName()%>';
        }
    </script>
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
<body>