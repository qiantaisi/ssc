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
<html>
<head>
    <jsp:include page="../../../common/commonMeta.jsp" />
    <jsp:include page="../../../common/commonCss.jsp" />

    <link rel="stylesheet" href="${resPath}css/style.css?v=20170812">
    <link rel="stylesheet" href="${resPath}css/other.css?v=20170812">


    <link rel="stylesheet" href="${resPath}css/vipcp-style.css?v=20170527_1">
    <link rel="stylesheet" type="text/css" href="${resPath}css/vipcp-login-reg.css?v=20170709">

    <jsp:include page="../../../public/common/customTheme.jsp" />
    <title></title>
</head>
<body>