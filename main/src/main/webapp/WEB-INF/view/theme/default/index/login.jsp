<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp" />
<c:import url="../common/checkIsChildFrame.jsp" />
<c:import url="top.jsp" />

<img src="${resPath}img/bj.jpg" class="back" alt="" width="100%">
<div class="regedit">
    <div class="reg_col re_reg_col">
        <div class="img re_img"><a href="<%=basePath%>">
            <img src="<%=basePath%>image/${logo.imageId}" alt=""></a>
        </div>
        <div class="reg">
            <div class="alert_log_col log_col">
                <h5>欢迎您登录</h5>
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
        <div class="copy recopy">
            <c:import url="../common/copyright_time.jsp"/>&nbsp;&nbsp;
        </div>
    </div>
</div>


<script type="text/html" id="template_khxy">
${khxy.khxy}
</script>

<c:import url="../common/commonJs.jsp" />
<c:import url="../common/jsCommonLogin.jsp" />
<script>

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

</script>
<c:import url="../common/bodyEnd.jsp" />