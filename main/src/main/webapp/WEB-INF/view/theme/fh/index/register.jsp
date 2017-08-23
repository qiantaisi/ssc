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
<jsp:include page="../../../public/index/register.jsp" />
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