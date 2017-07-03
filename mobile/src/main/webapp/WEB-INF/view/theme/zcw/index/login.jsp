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
<div class="page-group" style="background: #ffffff;">
<div class="page page-current" id="page-login">
<div class="head">
    <a href="javascript:void(0)" class="head_back"><span>返回</span></a>
    <a href="<%=basePath%>register.html">
    <span class="head_text">注册</span></a>
</div>
<c:import url="../../../public/theme/common/bottomNav.jsp"/>
<div class="main">
    <div class="ny_logo">
        <img src="${resPath}images/reg_07.png" />
    </div>
    <div class="form_main">

        <input type="text"  name="account" placeholder="手机号/用户名/邮箱" />
        <div class="login_pass">
            <input type="password" id="psw" name="password" placeholder="密码" />
            <em id="btn"></em>
        </div>
        <input type="button" value="登录" id="btn-login" class="login_btn"/>
        <div class="agree clearfix">
            <div class="left agree_lf agree_wt">
                <a href="#">登录遇到问题？</a>
            </div>
            <a href="<%=basePath%>register.html" class="right agree_rt">
                快速注册>
            </a>
        </div>
    </div>
    <div class="share">
        <span>分享送彩金</span>
    </div>
    <ul class="share_main clearfix">
        <li>
            <a href="#">
                <img src="${resPath}images/reg_11.png" />
            </a>
        </li>
        <li>
            <a href="#">
                <img src="${resPath}images/reg_13.png" />
            </a>
        </li>
        <li>
            <a href="#">
                <img src="${resPath}images/reg_15.png" />
            </a>
        </li>
        <li>
            <a href="#">
                <img src="${resPath}images/reg_17.png" />
            </a>
        </li>
    </ul>
</div>

<script>
    var obj = document.getElementById('btn');
    var psw = document.getElementById('psw');
    obj.onclick = function() {

        if(psw.getAttribute('type') == 'text') {
            psw.setAttribute('type', 'password')
        } else {
            psw.setAttribute('type', 'text')
        }

    }
</script>

    </div>
</div>



<%--<div class="page-group">
    <div class="page page-current" id="page-login">
        <header class="bar bar-nav">
            <a href="javascript:void(0)" class="button button-link button-nav pull-left fanhui">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a href="<%=basePath%>register.html" class="button button-link pull-right">
                注册
            </a>
            <h1 class="head">
                <span class="head_text">注册</span>
            </h1>
        </header>
        <div class="content bg-white">
            <div class="row cl-100">
                <div class="col-100">
                    <img src="${resPath}img/ico17.png" alt="">
                </div>
                &lt;%&ndash;<div class="col-100">欢迎您登录600万彩票网</div>&ndash;%&gt;
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
</div>--%>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>