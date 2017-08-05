<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../common/bodyStart.jsp" />
<c:import url="../common/checkIsChildFrame.jsp" />
<c:import url="top.jsp" />

<div class="img"><a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt=""></a></div>
<img src="${resPath}img/bj.jpg" class="back" alt="" width="100%">
<div class="regedit">

    <div class="reg_col">
        <div class="reg_list">
            <ul>
                <li class="sli">
                    <h5>1</h5>
                    <p>填写信息</p>
                </li>
                <li>
                    <h5>2</h5>
                    <p>注册成功</p>
                </li>
                <li>
                    <h5>3</h5>
                    <p>充值购彩</p>
                </li>
            </ul>
        </div>
        <div class="reg">
            <div class="reg_le">
                <form onsubmit="ajaxRegister();return false;">
                    <div>
                        <h4><span><img src="${resPath}img/r1.png" /></span></h4>
                        <p><input id="registerAccount" type="text" placeholder="请输入您的用户名"/></p>
                    </div>
                    <div>
                        <h4><span><img src="${resPath}img/r2.png" /></span></h4>
                        <p><input id="registerPassword" type="password" placeholder="请输入密码"/></p>
                    </div>
                    <div>
                        <h4><span><img src="${resPath}img/r1.png" /></span></h4>
                        <p><input id="registerName" type="text" placeholder="请输入您的姓名"/></p>
                    </div>
                    <div>
                        <h4><span><img src="${resPath}img/r3.png" /></span></h4>
                        <p><input id="registerYzm" class="short" type="text" placeholder="请输入验证码" /><img id="registerYzmImg1" onclick="refreshYzm(this)" src="<%=basePath%>code/yzm?imgWidth=65&imgHeight=30&imgFontHeight=26&imgCodeY=23&imgCodeX=2" /></p>
                    </div>
                    <div class="no">
                        <h3><input type="submit"  value="立即注册"/><br><span>注册即表示同意<a href="javascript:void(0)" onclick="showKhxy()">《${webName}服务使用协议》</a></span></h3>
                    </div>
                </form>
            </div>
            <div class="reg_rt">
                <h5>已有账号，<span>直接登录</span></h5>
                <h3>注册帮助</h3>
                <ul>
                    <li>
                        <h6>1</h6>
                        <p><a href="<%=basePath%>?u=<%=basePath%>/help/question/zc.html" target="_blank">新手操作指南</a></p>
                    </li>
                    <li>
                        <h6>2</h6>
                        <p><a href="<%=basePath%>?u=<%=basePath%>/help/question/mima.html" target="_blank">手机注册时提示手机号码已被绑定怎么办?</a></p>
                    </li>
                    <li>
                        <h6>3</h6>
                        <p><a href="#">注册${webName}时昵称显示“已经被注册”如何处理?</a></p>
                    </li>
                    <li>
                        <h6>4</h6>
                        <p><a href="#">注册时提示"你所使用的IP地址异常",该怎么办?</a></p>
                    </li>
                    <li class="no">
                        <h6></h6>
                        <p><a href="<%=basePath%>?u=<%=basePath%>help/index.html" target="_blank">更多帮助》</a></p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="alert_log two2">
    <div class="alert_log_col">
        <h5>欢迎您登录<i>×</i></h5>
        <form onsubmit="registerLogin();return false;">
            <div>
                <h4><span><img src="${resPath}img/l1.png" /></span></h4>
                <p><input type="text" id="registerLoginAccount" placeholder="请输入您的账号" /></p>
            </div>
            <div>
                <h4><span><img src="${resPath}img/l2.png" /></span></h4>
                <p><input type="password" id="registerLoginPassword" placeholder="密码" /></p>
            </div>
            <div>
                <h4><span><img src="${resPath}img/l2.png" /></span></h4>
                <p><input type="text" id="registerLoginYzm" placeholder="验证码" onfocus="refreshYzm(document.getElementById('registerYzmImg2'))" /><img id="registerYzmImg2" onclick="refreshYzm(this)" src="<%=basePath%>code/yzm?imgWidth=113&imgHeight=43&imgFontHeight=40&imgCodeY=35&imgCodeX=2" /></p>
            </div>
            <h3><input type="checkbox" /><a href="#">记住密码</a><span><a href="${kefuUrl}" target="_blank">忘记密码？</a></span></h3>
            <h6><input type="submit" class="sub"  value="登录"/></h6>
        </form>
    </div>
</div>

<div class="copy">
    <c:import url="../common/copyright_time.jsp"/>&nbsp;&nbsp;
</div>

<script type="text/html" id="template_khxy">
${khxy.khxy}
</script>

<c:import url="../common/commonJs.jsp" />
<c:import url="../common/jsCommonLogin.jsp" />
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
    function registerLogin() {
        var loginAccount = $.trim($("#registerLoginAccount").val());
        var loginPassword = $.trim($("#registerLoginPassword").val());
        var yzm = $.trim($("#registerLoginYzm").val());

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
            beforeSend: function() {
                showLoading();
            },
            success: function(json) {
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
    function ajaxRegister() {
        var account = $.trim($("#registerAccount").val());
        var password = $.trim($("#registerPassword").val());
        var name = $.trim($("#registerName").val());
        var yzm = $.trim($("#registerYzm").val());

        if (!account) {
            Tools.toast("请输入账号");
            return;
        }

        if (!account.match(/^[a-zA-Z][0-9a-zA-Z]{5,11}$/)) {
            alert("请输入以字母开头的6-12位字母、数字组成的账号");
            return;
        }

        if (!password) {
            Tools.toast("请输入密码");
            return;
        }

        if (!password.match(/^[0-9a-zA-Z]{6,12}$/)) {
            alert("请输入6-12位字母、数字的密码");
            return;
        }

        if (!name) {
            Tools.toast("请输入姓名");
            return;
        }

        if (!name.match(/^[\u4e00-\u9fa5]+$/)) {
            alert("姓名只能是汉字");
            return;
        }
        var numLen = $("#registerName").val().length;
        if(numLen < 2){
            alert("姓名两位以上");
            return;
        }

        if (!yzm) {
            Tools.toast("请输入验证码");
            return;
        }

        ajaxRequest({
            url: "<%=basePath%>member/ajaxRegister.json",
            beforeSend: function() {
                showLoading();
            },
            data: {
                account: account,
                password: $.md5(password),
                name: name,
                yzm: yzm,
                agentId: $.cookie("agentId")
            },
            success: function(json) {
                hideLoading();
                if (json.result == 1) {
                    Tools.toast("注册成功");
                    $.cookie("uid", json.userId, {path: "/"});
                    $.cookie("token", json.token, {path: "/"});
                    window.location.href = "<%=basePath%>main.html";
                } else if (json.result == -6) {
                    Tools.toast("注册成功，请登录");
                    window.location.href = "<%=basePath%>main.html";
                } else {
                    if (json.result == -941) {
                        $.cookie("agentId", '', {path: "/", expires: -1});
                    }
                    Tools.toast("注册失败：" + json.description);
                    refreshYzm(document.getElementById('registerYzmImg1'));
                }
            }
        });
    }
    function showLoading() {
        layer.load(2, {
            shade: [0.1,'#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);

        src = "<%=basePath%>code/yzm?timestamp=" + (new Date()).getTime();
        $.each(params, function(index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        console.log(src);
        $(obj).attr("src", src);
    }
    $(window).resize(function(){
        ate();
    });

    $(function() {
        ate();
        $(".alert_log_col h5 i").click(function(){
            $(".two2").fadeOut();
        });
        autobox(".Customerservice",1,1180,0);
        tabs_cg(".Resultt .latyout .tabs_ce ul li","","hover","acti","","");
        click_addname(".Resultt .latyout .wrap_select a","acti","click");
        $('.reg_rt h5 span').click(function(){
            $('.two2').fadeIn();
        })
    });

    function ate(){
        var hei=$(window).height();
        $(".back").css("height",hei-27+"px");
    }

    function login1() {
        var loginAccount = $.trim($("#loginAccount1").val());
        var loginPassword = $.trim($("#loginPassword1").val());
        var yzm = $.trim($("#loginYzm1").val());

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
            beforeSend: function() {
                layer.load(2, {
                    shade: [0.1,'#000'] //0.1透明度的白色背景
                })
            },
            success: function(json) {
                layer.closeAll();
                if (json.result == 1) {
                    $.cookie("uid", json.userId, {path: "/"});
                    $.cookie("token", json.token, {path: "/"});
                    location.reload();
                } else {
                    refreshYzm(document.getElementById('yzmImg1'));
                    alert("登录失败：" + json.description);
                }
            }
        });
    }
</script>
<c:import url="../common/bodyEnd.jsp" />