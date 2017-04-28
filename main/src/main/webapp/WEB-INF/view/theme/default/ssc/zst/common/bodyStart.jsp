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
    <title>走势图</title>
    <link rel="stylesheet" href="${resPath}zst/css/app.css">
    <link rel="stylesheet" href="${resPath}css/global.css">
    <link rel="stylesheet" href="${resPath}css/lottery.css">
    <link rel="stylesheet" href="${resPath}zst/css/other.css?v=20170428" type="text/css"><!--走势图页面CSS-->
</head>

<body>
