<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-login">
        <header class="bar bar-nav">
            <a href="javascript:void(0)" class="button button-link button-nav pull-left fanhui">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a href="<%=basePath%>register.html" class="button button-link pull-right">
                注册
            </a>
            <h1 class="title">
                <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt="" height="100%"></a>
            </h1>
        </header>
        <div class="content bg-white">
            <div class="row cl-100">
                <div class="col-100">
                    <img src="${resPath}img/ico17.png" alt="">
                </div>
                <%--<div class="col-100">欢迎您登录5亿彩票网</div>--%>
                <div class="col-100">${WebInfoResult.webName}</div>
            </div>
            <div class="cl-101">
                <div class="list-block">
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-name"></i></div>
                                <div class="item-inner">
                                    <div class="item-input">
                                        <input type="text" placeholder="请输入您的用户名" name="account">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-password"></i></div>
                                <div class="item-inner">
                                    <div class="item-input">
                                        <input type="password" placeholder="请输入您的密码" name="password">
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="cl-102">
                <a href="javascript:void(0)" id="btn-login" class="cl-103">登录</a>
                <strong><a href="javascript:void(0)" onclick="kefuToast()" class="external"
                           target="_blank">忘记密码</a></strong>
                <a href="javascript:void(0)" id="btn-shiwan" class="cl-104">试玩一下</a>
            </div>
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>