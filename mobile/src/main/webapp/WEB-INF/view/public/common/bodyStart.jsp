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
    <jsp:include page="../../common/commonMeta.jsp" />
    <jsp:include page="../../common/commonCss.jsp" />

    <link rel="stylesheet" href="${resPath}css/style.css?v=2017097">
    <link rel="stylesheet" href="${resPath}css/other.css?v=2017096_2">
    <link rel="stylesheet" href="${resPath}css/gfwf_css.css?v=2017095_2">
    <link rel="stylesheet" href="${resPath}theme/${themeBottomNav}/css/base-template.css?v=20170628">
    <jsp:include page="customTheme.jsp" />
</head>
<body>