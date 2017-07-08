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
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <%--<a href="<%=basePath%>login.html" class="button button-link pull-right">--%>
                <%--登录--%>
            <%--</a>--%>
            <h1 class="title" style="font-size:16px">
                注册
            </h1>
        </header>
        <c:import url="../../../public/theme/common/bottomNav.jsp"/>
        <div class="content bg-white bottom2">
            <div class="main">
                <div class="ny_logo">
                    <img src="<%=basePath%>images/${logo.imageId}.png"/>
                </div>

                <div class="form_main">
                    <p class="form_text">
                        字母开头的6-12位字母数字组成的用户名
                    </p>
                    <input type="text" placeholder="用户名" name="account"/>
                    <p class="form_text">
                        请输入6-12位字母、数字的密码
                    </p>
                    <input type="password" placeholder="密码" name="password"/>
                    <p class="form_text">
                        与上面输入密码必须保持一致
                    </p>
                    <input type="password" placeholder="确认密码" name="confirmPassword"/>
                    <p class="form_text">
                        姓名必须和绑定的银行卡户名一致
                    </p>
                    <input type="text" placeholder="姓名" name="name"/>
                    <p class="form_text">
                        请输入您的手机
                    </p>
                    <input type="text" placeholder="手机" name="phone"/>
                    <p class="form_text">
                        请输入您的邮箱
                    </p>
                    <input type="text" placeholder="邮箱" name="email"/>
                    <p class="form_text">
                        请输入您的QQ
                    </p>
                    <input type="text" placeholder="QQ" name="qq"/>
                    <input type="button" value="注册" id="btn-register"/>
                    <div class="agree clearfix">
                        <div class="left agree_lf">
                            我已阅读并同意<a href="javascript:void(0)" onclick="showKhxy()">${webName}《开户协议》</a>
                        </div>
                        <a href="<%=basePath%>login.html" class="right agree_rt">
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
                            <img src="${resPath}/images/reg_11.png"/>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <img src="${resPath}/images/reg_13.png"/>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <img src="${resPath}/images/reg_15.png"/>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <img src="${resPath}/images/reg_17.png"/>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script>
    function showKhxy() {
        //自定页
        layer.open({
            type: 1,
            skin: 'layui-layer-popup', //样式类名
            closeBtn: 2, //显示关闭按钮
            anim: 2,
            title: '开户协议',
            shadeClose: true, //开启遮罩关闭
            content: $("#template_khxy").html()
        });
    }
</script>
<script type="text/html" id="template_khxy">
    ${khxy.khxy}
</script>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>