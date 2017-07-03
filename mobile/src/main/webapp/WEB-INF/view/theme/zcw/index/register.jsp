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
<div class="page-group">
    <div class="page page-current" id="page-register">
        <div class="head">
            <a href="javascript:void(0)" class="head_back"><span>返回</span></a>
            <span class="head_text">注册</span>
        </div>
        <div class="main z">
            <div class="ny_logo">
                <img src="${resPath}images/reg_07.png" />
            </div>

            <div class="form_main">
                <p class="form_text">
                    字母开头的6-12位字母数字组成的用户名
                </p>
                <input type="text" placeholder="账号" />
                <p class="form_text">
                    请输入6-12位字母、数字的密码
                </p>
                <input type="password" placeholder="密码" />
                <p class="form_text">
                    与上面输入密码必须保持一致
                </p>
                <input type="password" placeholder="确认密码" />
                <p class="form_text">
                    姓名必须和绑定的银行卡户名一致
                </p>
                <input type="text" placeholder="姓名" />
                <p class="form_text">
                    请输入您的手机
                </p>
                <input type="text" placeholder="手机" />
                <p class="form_text">
                    请输入您的邮箱
                </p>
                <input type="text" placeholder="邮箱" />
                <p class="form_text">
                    请输入您的QQ
                </p>
                <input type="text" placeholder="QQ" />
                <input type="button" value="注册" class="login_btn" />
                <div class="agree clearfix">
                    <div class="left agree_lf">
                        我已阅读并同意<a href="#">彩票协议</a>
                    </div>
                    <a href="javascript:void(0)" class="right agree_rt">
                        已有账号登录>
                    </a>
                </div>
            </div>

            <div class="share">
                <span>分享送彩金</span>
            </div>
            <ul class="share_main clearfix">
                <li>
                    <a href="javascript:void(0)">
                        <img src="${resPath}/images/reg_11.png" />
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <img src="${resPath}/images/reg_13.png" />
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <img src="${resPath}/images/reg_15.png" />
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <img src="${resPath}/images/reg_17.png" />
                    </a>
                </li>
            </ul>
        </div>
</div>
<script type="text/html" id="template_khxy">
${khxy.khxy}
</script>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>