<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<style>#page-login{background:#FFF}.head{height:50px;background:#f42023;position:relative;text-align:center}.head_text{text-align:center;line-height:50px;color:#fff;font-size:22px}.head_back{display:inline-block;background:url(../images/reg_03.png) no-repeat;background-size:13px 23px;padding-left:18px;font-size:14px;line-height:24px;position:absolute;left:20px;top:13px;z-index:10;color:#fff}.ny_logo img{width:118px;vertical-align:middle;Vertical-aliagn:top;border:0}.ny_logo{padding:20px 0 10px 0;text-align:center}.form_main{padding:0 18px;margin:0}.form_main input{-webkit-appearance:none;border:1px solid #e2e3e9;border-radius:5px;padding:5px 3%;width:100%;height:52px;line-height:52px;color:#ccc;font-size:18px;margin:0}.login_pass{position:relative;padding:0;margin:0}.login_pass em{display:block;background:url(../images/yan_03.png) no-repeat;width:30px;height:19px;background-size:30px 19px;position:absolute;top:15.5px;right:20px;cursor:pointer;z-index:10}.form_main .login_btn{-webkit-appearance:none;width:100%;margin-top:20px;padding:0;border:none;background:#e73030;color:#fff;height:50px;line-height:50px;cursor:pointer;-webkit-box-shadow:0 2px 8px rgba(253,9,9,.5);-moz-box-shadow:0 2px 8px rgba(253,9,9,.5);box-shadow:0 2px 8px rgba(253,9,9,.5)}.agree .agree_wt a{color:#666;text-decoration:none;font-size:16px;line-height:30px}.agree_rt{color:#c40d0d;line-height:18px}.share{margin:30px 7px 20px 7px;border:1px solid #97c13c;position:relative}.number_bar-tab .active{border-bottom:5px solid #ed9142;color:#ed9142}.share span{display:block;width:142px;position:absolute;left:50%;margin-left:-71px;top:-12px;background:#fff;color:#7e7e7e;font-size:16px;text-align:center}.agree{font-size:14px;color:#666;padding-top:20px}.clearfix{display:block;list-style:none;padding-left:0}.share_main li{float:left;width:25%;text-align:center}.share_main img{width:62px;height:62px;border-radius:50%;Vertical-aliagn:top;border:0;margin:0}#page-register{background:#fff}.zcw-reg-main{height:81.6%;overflow-y:scroll}.form_text{color:#999;margin-bottom:5px!important;margin-top:10px!important;padding:0;font-size:12px!important}.form_main .btn-register{-webkit-appearance:none;width:100%;margin-top:20px;padding:0;border:none;background:#e73030;color:#fff;height:50px;line-height:50px;cursor:pointer;-webkit-box-shadow:0 2px 8px rgba(253,9,9,.5);-moz-box-shadow:0 2px 8px rgba(253,9,9,.5);box-shadow:0 2px 8px rgba(253,9,9,.5)}.agree .agree_lf{font-size:13px}.agree_lf a{color:#1a83d4;text-decoration:underline}.left{float:left}.right{float:right}</style>
<jsp:include page="../common/customTheme.jsp" />
<div class="content bg-white bottom2">
    <div class="main">
        <div class="ny_logo">
            <img src="<%=basePath%>images/logo2.png"/>
        </div>

        <div class="form_main">
            <p class="form_text">
                字母开头的6-12位字母数字组成的用户名
            </p>
            <input type="text" placeholder="用户名" class="inputStr" name="account" style="ime-mode: disabled"/>
            <p class="form_text">
                请输入6-12位字母、数字的密码
            </p>
            <input type="password" placeholder="密码" class="inputStr" name="password"/>
            <p class="form_text">
                与上面输入密码必须保持一致
            </p>
            <input type="password" placeholder="确认密码" class="inputStr" name="confirmPassword"/>
            <p class="form_text">
                姓名必须和绑定的银行卡户名一致
            </p>
            <input type="text" placeholder="姓名" class="inputStr" name="name"/>

            <c:if test="${registerResult.checkPhone}">
                <p class="form_text">
                    请输入您的手机
                </p>
                <input type="number" placeholder="手机" class="inputStr"
                       onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                       name="phone"/>
            </c:if>
            <c:if test="${registerResult.checkEmail}">
                <p class="form_text">
                    请输入您的邮箱
                </p>
                <input type="text" placeholder="邮箱" class="inputStr" name="email"/>
            </c:if>
            <c:if test="${registerResult.checkQq}">
                <p class="form_text">
                    请输入您的QQ
                </p>
                <input type="text" placeholder="QQ" name="qq"/>
            </c:if>
            <c:if test="${registerResult.vcSwtich}">
                <p class="form_text">
                    请输入验证码
                </p>
                <div style="overflow:hidden;">
                    <input type="text" placeholder="验证码" name="yzm" class="left" style="width:calc(100% - 100px)" />
                    <img src="<%=basePath%>code/yzm?imgWidth=88&imgHeight=52&imgFontHeight=40&imgCodeY=40" alt="验证码" onclick="javascript:this.src=this.src+'&timestamp='+Math.random()" class="right">
                </div>
            </c:if>
            <input type="button" value="注册" onclick="ajaxRegister()" class="btn-register"/>
            <div class="agree clearfix" style="margin-bottom:15px;">
                <div class="left agree_lf">
                    我已阅读并同意<a href="javascript:void(0)" onclick="showKhxy()">${webName}《开户协议》</a>
                </div>
                <a href="<%=basePath%>login.html" class="right agree_rt">
                    已有账号登录>
                </a>
            </div>
        </div>

        <%--<div class="share">--%>
        <%--<span>分享送彩金</span>--%>
        <%--</div>--%>
        <%--<ul class="share_main clearfix">--%>
        <%--<li>--%>
        <%--<a href="javascript:void(0)">--%>
        <%--<img src="${resPath}/images/reg_11.png"/>--%>
        <%--</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="javascript:void(0)">--%>
        <%--<img src="${resPath}/images/reg_13.png"/>--%>
        <%--</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="javascript:void(0)">--%>
        <%--<img src="${resPath}/images/reg_15.png"/>--%>
        <%--</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="javascript:void(0)">--%>
        <%--<img src="${resPath}/images/reg_17.png"/>--%>
        <%--</a>--%>
        <%--</li>--%>
        <%--</ul>--%>
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
<script>
    function ajaxRegister() {
        var account = $("input[name='account']").val(); // 账号
        var password = $("input[name='password']").val();   // 密码
        var confirmPassword = $("input[name='confirmPassword']").val(); // 确认密码
        var name = $("input[name='name']").val();   // 姓名
        var phone = $("input[name='phone']").val();   // phone
        var email = $("input[name='email']").val();   // email
        var qq = $("input[name='qq']").val();   // qq
        var yzm = $("input[name='yzm']").val();   // yzm

        if (!account) {
            Tools.alert("请输入用户名");
            return;
        }

        if (!account.match(/^[a-zA-Z][0-9a-zA-Z]{5,11}$/)) {
            Tools.alert("请输入以字母开头的6-12位字母、数字组成的用户名");
            return;
        }

        if (!password) {
            Tools.alert("请输入密码");
            return;
        }

        if (!password.match(/^[0-9a-zA-Z]{6,12}$/)) {
            Tools.alert("请输入6-12位字母、数字的密码");
            return;
        }

        if (!confirmPassword) {
            Tools.alert("请输入确认密码");
            return;
        }

        if (confirmPassword != password) {
            Tools.alert("确认密码不正确");
            return;
        }

        if (!name) {
            Tools.alert("请输入姓名");
            return;
        }

        if (!name.match(/^[\u4e00-\u9fa5]+$/)) {
            Tools.alert("姓名只能是汉字");
            return;
        }

        <c:if test="${registerResult.checkPhone && registerResult.needRequredPhone}">
        if (!phone) {
            Tools.alert("请输入手机");
            return;
        }
        </c:if>

        <c:if test="${registerResult.checkQq && registerResult.needRequiredQq}">
        if (!qq) {
            Tools.alert("请输入验QQ");
            return;
        }
        </c:if>

        <c:if test="${registerResult.checkEmail && registerResult.needRequiredEmail}">
        if (!email) {
            Tools.alert("请输入邮箱");
            return;
        }
        </c:if>

        <c:if test="${registerResult.vcSwtich}">
        if (!yzm) {
            Tools.alert("请输入验证码");
            return;
        }
        </c:if>

        // 处理设备信息返回值的函数
        function DoWithDeviceInformation(info) {
            registerUser(account, password, name, phone, qq, email, yzm, info);
        }

        registerUser(account, password, name, phone, qq, email, yzm, Tools.getCookie("deviceNo"));
    }

    function registerUser(account, password, name, phone, qq, email, yzm, deviceNo) {
        ajaxRequest({
            url: config.basePath + "member/ajaxRegister.json",
            data: {
                account: account,
                password: $.md5(password),
                name: name,
                phone: phone,
                qq: qq,
                email: email,
                yzm: yzm,
                agentId: Tools.getCookie("agentId"),
                deviceNo: deviceNo
            },
            beforeSend: function () {
                Tools.showLoading("注册中...");
            },
            success: function (json) {
                if (json.result == 1) {
                    setUserToken(json.userId, json.token);
                    // Tools.toastRedirect("注册成功，正在跳转到首页", 3000, config.basePath);

                    // 保存登录名
                    Tools.setCookie("loginFormAccount", account, {path: "/"});
                    Tools.alertCallback("注册成功", function () {
                        window.location.href = config.basePath;
                    });
                    return;
                }

                if (json.result == -6) {
                    Tools.alertCallback("注册成功，请前往登录", function () {
                        window.location.href = config.basePath + "login.html";
                    });

                    // 保存登录名
                    Tools.setCookie("loginFormAccount", account, {path: "/"});
                    return;
                }

                Tools.toast("注册失败：" + json.description);
            },
            error: function (a, b, c) {
                if (b == 'timeout') {
                    Tools.toast("操作超时，请稍后重试");
                    return;
                }

                Tools.toast("请求错误，请稍后重试");
            },
            complete: function () {
                Tools.hideLoading();
            }
        });
    }
</script>