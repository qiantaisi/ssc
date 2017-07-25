<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!--弹窗-->
<div class="bg"></div>
<div class="login_alert">
    <div class="login_alert_tl clearfix">
        <span class="left spans">中彩网登录</span>
        <a href="javascript:void(0);" class="cha right"></a>
    </div>
    <form >
        <div class="login_alert_b">
            <div class="login_alert_gp">
                <img src="${resPath}images/alert2.png" class="login_alert_ico" />
                <input type="text" id="registerLoginAccountAlert" name="registerLoginAccountAlert" placeholder="手机号/用户名" />
            </div>
            <div class="login_alert_gp">
                <img src="${resPath}images/alert3.png" class="login_alert_ico" />
                <input type="password" id="registerLoginPasswordAlert"  name="registerLoginPasswordAlert" placeholder="密码" />
            </div>

            <div class=" banner_shuru_gp">
                <input type="text" id="registerLoginYzmAlert" class="banner_shuru_alertinput" placeholder="验证码"/>

                <a href="javascript:void(0);" class="banner_alertyz">
                    <img id="registerYzmImg2" onclick="refreshYzm(this)"
                         src="<%=basePath%>code/yzm?imgWidth=113&imgHeight=43&imgFontHeight=40&imgCodeY=35&imgCodeX=2"/>
                </a>
            </div>

            <input type="button" class="btn_red login_alertbtn" onclick="login()"  value="立即登录" />
            <div class="login_alert_link">
                <a href="javascript:void(0)" onclick="wjmm('${kefuUrl}')">忘记密码</a>
                <span>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <a href="<%=basePath%>register.html">立即注册</a>
            </div>
        </div>
    </form>
</div>

<script>
    $(function () {
        // 首页弹框登录按钮
        $('.loginbtn').click(function(){
            $(".bg").show();
            $(".login_alert").show();
        });
        $('.bg').click(function(){
            $(".bg").hide();
            $(".login_alert").hide();
        });
        $('.cha').click(function(){
            $(".bg").hide();
            $(".login_alert").hide();
        });
    });

    function goZst(url) {
        window.open('<%=basePath%>ssc/'+ url +'.html?type=1');
    }
    
    function wjmm(url) {
        $(".spans").html("请联系在线客服");
        $(".spans").css("color","red");
    }

    function login() {
        var loginAccount = $.trim($("#registerLoginAccountAlert").val());
        var loginPassword = $.trim($("#registerLoginPasswordAlert").val());
        var yzm = $.trim($("#registerLoginYzmAlert").val());

        if (!loginAccount) {
            alert("请输入账号");
            return;
        }
        if (!loginPassword) {
            alert("请输入密码");
            return;
        }
        if (!yzm) {
            alert("请输入验证码");
            return;
        }

        ajaxRequest({
            url: "<%=basePath%>member/ajaxLogin.json",
            data: {
                yzm: yzm,
                account: loginAccount,
                password: $.md5(loginPassword)
            },
            beforeSend: function () {
                showLoading();
            },
            success: function (json) {
                if (json.result == 1) {
                    $.cookie("uid", json.userId, {path: "/"});
                    $.cookie("token", json.token, {path: "/"});
                    window.location.href = "<%=basePath%>main.html";
                } else {
                    refreshYzm(document.getElementById('registerYzmImg2'));
                    Tools.toast("登录失败：" + json.description);
                }
                hideLoading();
            }
        });
    }

    function showLoading() {
        layer.load(2, {
            shade: [0.1, '#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);

        src = "<%=basePath%>code/yzm?timestamp=" + (new Date()).getTime();
        $.each(params, function (index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        console.log(src);
        $(obj).attr("src", src);
    }
</script>