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
        <header class="bar bar-nav">
            <a href="javascript:void(0)" class="button button-link button-nav pull-left fanhui">
                <span class="icon icon-left"></span>
                返回
            </a>
            <h1 class="title">
                登录
            </h1>
        </header>
        <c:import url="../../../public/theme/common/bottomNav.jsp"/>
        <div class="main">
            <div class="ny_logo">
                <img src="<%=basePath%>images/${logo.imageId}.png" />
            </div>
            <div class="form_main">

                <input type="text"  name="account" placeholder="用户名" />
                <div class="login_pass">
                    <input type="password" id="psw" name="password" placeholder="密码" />
                    <em id="btn"></em>
                </div>
                <input type="button" value="登录" id="btn-login" class="login_btn"/>
                <div class="agree clearfix">
                    <div class="left agree_lf agree_wt">
                        <a href="<%=basePath%>kefu.html" target="_blank">登录遇到问题？
                        </a>
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
    </div>
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
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>