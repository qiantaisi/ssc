<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    // 测试，暂时写死
    request.setAttribute("themeBottomNav", "theme1");
%>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="../../../common/commonMeta.jsp" />
    <jsp:include page="../../../common/commonCss.jsp" />

    <link rel="stylesheet" href="${resPath}css/style.css?v=201703222201">
    <link rel="stylesheet" href="${resPath}css/other.css?v=20170421">
    <link rel="stylesheet" href="${resPath}css/vipcp-style.css?v=20170527_1">
    <link rel="stylesheet" href="${resPath}css/vipcp-login-reg.css?v=20170519">
    <link rel="stylesheet" href="${resPath}css/test.css?v=20170706"/>
    <link rel="stylesheet" href="${resPath}css/gcdt.css"/>
    <link rel="stylesheet" type="text/css" href="${resPath}css/login-register.css">

    <jsp:include page="../../../public/common/customTheme.jsp" />
</head>
<body>