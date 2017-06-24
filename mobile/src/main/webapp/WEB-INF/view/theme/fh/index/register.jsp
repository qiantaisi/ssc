<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<style>
    .list-block ul li:after, .list-block ul li:first-child:before{content:none}
</style>
<div class="page-group">
    <div class="page page-current" id="page-register">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a href="<%=basePath%>login.html" class="button button-link pull-right">
                登录
            </a>
            <h1 class="title">
                <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt="" height="100%"></a>
            </h1>
        </header>
        <div class="content bg-white">
            <div class="row cl-100">
                <%--<div class="col-100">欢迎您注册600w彩票网${WebInfoResult.webName}</div>--%>
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
                                        <input type="text" placeholder="字母开头的6-12位字母数字组成的用户名" name="account">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-password"></i></div>
                                <div class="item-inner">
                                    <div class="item-input">
                                        <input type="password" placeholder="请输入6-12位字母、数字的密码" name="password">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-password"></i></div>
                                <div class="item-inner">
                                    <div class="item-input">
                                        <input type="password" placeholder="请再次输入您的密码" name="confirmPassword">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-password"></i></div>
                                <div class="item-inner">
                                    <div class="item-input">
                                        <input type="text" placeholder="请输入真实姓名" name="name">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-password"></i></div>
                                <div class="item-inner">
                                    <div class="item-input">
                                        <div style="width:70%;float:left;display:inline-block;">
                                            <input type="text" placeholder="验证码" name="yzm" id="yzm" style="">
                                        </div>
                                        <div style="width:30%;float:right;margin-top:5px;display:inline-block;">
                                            <img src="<%=basePath%>code/yzm?imgWidth=88&imgHeight=40&imgFontHeight=35&imgCodeY=33" alt="" onclick="javascript:this.src=this.src+'&timestamp='+Math.random()">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div style="clear:both"></div>
            <div class="cl-102">
                <a href="javascript:void(0)" class="cl-103" id="btn-register">立即注册</a>
                <strong>已有账号↓</strong>
                <a href="<%=basePath%>login.html" class="cl-104">前往登录</a>
            </div>
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>