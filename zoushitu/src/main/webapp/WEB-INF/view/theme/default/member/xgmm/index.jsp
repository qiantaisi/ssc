<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-xgmm">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">会员中心</h1>
        </header>
        <div class="content">
            <div class="row cl-100 cl-305">
                <div class="col-100">修改密码</div>
            </div>
            <div class="cl-302 cl-304">
                <div class="list-block">
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-ymm"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">原密码：</div>
                                    <div class="item-input">
                                        <input type="password" placeholder="原密码" name='oldPassword'>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-xmm"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">新密码：</div>
                                    <div class="item-input">
                                        <input type="password" placeholder="新密码" name='newPassword'>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="cl-303">
                    密码由<i>6-12</i>个字符组成，区分大小写，为了提升您的安全性，建议使用<i>英文加数字</i>或者<i>混合组合密码</i>
                </div>
                <div class="list-block">
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-qrmm"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">确认密码：</div>
                                    <div class="item-input">
                                        <input type="password" placeholder="确认密码" name='confirmPassword'>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="cl-102">
                <a href="javascript:void(0)" id="btn-changePassword" class="cl-103">确认修改</a>
            </div>
            <c:import url="../../common/copyright.jsp" />
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>