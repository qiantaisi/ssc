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
    <div class="page page-current" id="page-register">
        <header class="bar vipcp">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
            </a>
            <h1 class="title">
                <%--<a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt="" height="100%"></a>--%>
                <img src="${resPath}img/reg_06.png"/>
            </h1>
        </header>
        <div class="content bg-white">
            <div class="cl-101">
                <div class="list-block vipcp-list-block">
                    <ul>
                        <span class="Prompt">字母开头的6-12位字母数字组成的用户名</span>
                        <li>
                            <div class="item-content re-item-vipcp-zh">
                                <div class=""><i class="icon icon-form-name re-item-form"></i></div>
                                <div class="item-inner">
                                    <div class="item-input">
                                        <input type="text" placeholder="账号" name="account">
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <ul>
                        <span class="Prompt">请输入6-12位字母、数字的密码</span>
                        <li>
                            <div class="item-content re-item-vipcp-zh">
                                <div class=""><i class="icon icon-form-password re-item-form"></i></div>
                                <div class="item-inner">
                                    <div class="item-input">
                                        <input type="password" placeholder="密码" name="password">
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <ul>
                        <span class="Prompt">请再次输入您的密码</span>
                        <li>
                            <div class="item-content re-item-vipcp-zh">
                                <div class=""><i class="icon icon-form-password re-item-form"></i></div>
                                <div class="item-inner">
                                    <div class="item-input">
                                        <input type="password" placeholder="确认密码" name="confirmPassword">
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <ul>
                        <span class="Prompt">请输入真实姓名</span>
                        <li>
                            <div class="item-content re-item-vipcp-zh">
                                <div class=""><i class="icon icon-form-password re-item-form re_reg_18_img"></i></div>
                                <div class="item-inner">
                                    <div class="item-input">
                                        <input type="text" placeholder="姓名" name="name">
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="agree">
                <a href="javascript:void(0)" class="agree-btn">
                    <span>
                           <img class="show_hide" src="${resPath}img/reg_21.png"/>
                    </span>
                </a>
                本人同意
                <a href="#">
                    《开户协议》
                </a>

            </div>
            <div class="cl-102">
                <a href="javascript:void(0)" class="outInsert" id="btn-register">立即注册</a>
            </div>
            <div class="Center">
                <span>已有账号?</span>
                <a href="<%=basePath%>login.html">马上登录</a>
            </div>
        </div>
    </div>
</div>
<script type="text/html" id="template_khxy">
${khxy.khxy}
</script>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>