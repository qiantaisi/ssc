<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<link rel="stylesheet" href="${commonResPath}sui/css/sm.min.css?v=201702280308">
<link rel="stylesheet" href="${commonResPath}sui/css/sm-extend.min.css?v=201702280308">
<link rel="stylesheet" href="${commonResPath}swiper/css/swiper.min.css?v=201702280308">
<link rel="stylesheet" href="${commonResPath}swiper/css/swiper.min.css?v=201702280308">