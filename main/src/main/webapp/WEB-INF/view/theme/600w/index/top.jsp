<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("www.", "");
%>
<div class="type_top" style="z-index:100">
    <div class="wid1">
        <div class="left fl">
            <div class="left_div">你好，欢迎来到${webName}!
                <c:choose>
                    <c:when test="${not empty userSession}">
                        <span class="line">
                            <a onclick="openHyzx()" href="javascript:void(0)" class="a1">${userSession.account}</a>
                            <a href="javascript:void(0)"  onclick="openHyzx('member/zhcz.html?module=yhzz')" class="par">充值</a>
                            <a href="javascript:void(0)" onclick="openHyzx('member/withdraw.html')" class="par">提款</a>
                            <a href="javascript:void(0)" onclick="openHyzx('member/letter.html')" class="par">站内信</a>
                            <a href="javascript:void(0)" class="par" onclick="sigout()">退出</a>
                        </span>
                    </c:when>
                    <c:otherwise>
                        <%--<a href="javascript:void(0)" class="log">请登录<i class="ico-d"></i></a>--%>
                        <a href="<%=basePath%>login.html" class="log">请登录</a>
                        <span>
                            <a href="<%=basePath%>register.html" class="a1 blink">免费注册</a>
                            <!--<a href="javascript:void(0)" class="par">合作账号登录<i class="ico-d"></i></a>-->
                            <a href="javascript:void(0)" onclick="shiwan()">免费试玩</a>
                        </span>
                    </c:otherwise>
                </c:choose>
                <%--<div class="alert_log" style="z-index: 1000">--%>
                <%--<form onsubmit="login2();return false;">--%>
                <%--<h5><input type="text" id="loginAccount2"  placeholder="会员名"/></h5>--%>
                <%--<h5><input type="password" id="loginPassword2"  placeholder="密码"/></h5>--%>
                <%--<h5><input type="text" id="loginYzm2" class="yzm" onfocus="refreshYzm(document.getElementById('yzmImg2'))" /><img id="yzmImg2" onclick="refreshYzm(this)" src="<%=basePath%>code/yzm?imgWidth=48&imgHeight=29&fontSize=30&imgFontHeight=23" alt="" /></h5>--%>
                <%--<h5><input type="submit" value="登录" class="sub"/><a href="<%=basePath%>register.html">立即注册</a></h5>--%>
                <%--<h3><a href="${kefuUrl}" target="_blank">忘记密码？</a></h3>--%>
                <%--</form>--%>
                <%--</div>--%>
                <%--<div class="alert_par">--%>
                <%--<ul>--%>
                <%--<li><h5><span><img src="${resPath}img/i1.png" /></span></h5><a href="javascript:void(0)">支付宝</a></li>--%>
                <%--<li><h5><span><img src="${resPath}img/i2.png" /></span></h5><a href="javascript:void(0)">QQ</a></li>--%>
                <%--<li><h5><span><img src="${resPath}img/i3.png" /></span></h5><a href="javascript:void(0)">新浪徽博</a></li>--%>
                <%--<li><h5><span><img src="${resPath}img/i4.png" /></span></h5><a href="javascript:void(0)">139邮箱</a></li>--%>
                <%--<li><h5><span><img src="${resPath}img/i5.png" /></span></h5><a href="javascript:void(0)">PPTV</a></li>--%>
                <%--<li><h5><span><img src="${resPath}img/i6.png" /></span></h5><a href="javascript:void(0)">纵横中文网</a></li>--%>
                <%--</ul>--%>
                <%--</div>--%>
            </div>
        </div>
        <div class="right fr">
            <ul>
                <li class="li0"><a href="<%=basePath%>main.html">首页</a></li>
                <li class="li0"><a href="${kefuUrl}" style="color:#d84600" target="_blank" class="blink">在线客服</a></li>
                <li class="l"><a href="javascript:void(0)"><b>购买彩票</b><i class="ico-d"></i></a>
                    <div class="pay">
                        <div class="pay_list">
                            <h4>高频：</h4>
                            <p>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/pk10')">北京PK10</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/jspk10')">极速PK10</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/xyft')">幸运飞艇</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/cqssc')">重庆时时彩</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/tjssc')">天津时时彩</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/xjssc')">新疆时时彩</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/ffssc')">分分时时彩</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/efssc')">两分时时彩</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/sfssc')">三分时时彩</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/wfssc')">五分时时彩</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/hbk3')">湖北快3</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/ahk3')">安徽快3</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/jsk3')">江苏快3</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/jlk3')">吉林快3</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/kl8')">北京快乐8</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/klsf')">快乐十分</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/xync')">幸运农场</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/xy28')">幸运28</a></span>
                                <!--  <span><a href="javascript:void(0)" onclick="openGcdt('sflhc')">十分六合彩</a></span> -->
                            </p>
                        </div>
                        <div class="pay_list">
                            <h4>低频：</h4>
                            <p>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/lhc')">香港六合彩</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/fc3d')">福彩3D</a></span>
                                <span><a href="javascript:void(0)" onclick="openGcdt('gcdt/pl3')">体彩排列3</a></span>
                            </p>
                        </div>
                    </div>
                </li>
                <li><a href="<%=basePath%>/help/index.html">帮助</a></li>
                <li class="l"><a href="javascript:void(0)"><b>网站导航</b><i class="ico-d"></i></a>
                    <div class="link">
                        <h5>
                            <a href="<%=basePath%>ssc/index.html" target="_blank">购买彩票</a>
                            <a href="<%=mHostName%>" target="_blank">手机购彩</a>
                            <a href="<%=basePath%>/help/index.html">规则说明</a>
                        </h5>
                        <h4>
                            <strong>彩票工具</strong>
                            <p><a href="<%=mHostName%>" target="_blank">手机客户端</a> <a href="<%=basePath%>ssc/index.html?module=zstIndex" target="_blank">走势查询</a> <a href="javascript:void(0)" onclick="getJluPage('lsjl/tzjl')">中奖查询</a></p>
                        </h4>
                        <h5 class="last">
                            <a href="javascript:void(0)" onclick="openHyzx()">会员中心</a>
                            <a href="javascript:void(0)" onclick="openHyzx('member/jfmx.html?module=hylb')">推广赚钱</a>
                            <a href="<%=basePath%>yhhd.html">优惠活动</a>
                        </h5>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<script>
    function getJluPage(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        if (typeof $.cookie("uid") == 'undefined' || typeof $.cookie("token") == 'undefined') {
            alert("请先登录");
            if ($("#loginAccount1").length > 0) {
                $("#loginAccount1").focus();
                return;
            }
            window.location.href = "<%=basePath%>main.html";
            return;
        }
        windowOpen('<%=basePath%>member/index.html?module=' + module, '会员中心', 1250, 834);
    }
    function login2() {
        var loginAccount = $.trim($("#loginAccount2").val());
        var loginPassword = $.trim($("#loginPassword2").val());
        var yzm = $.trim($("#loginYzm2").val());

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
                    hideLoading();
                    location.reload();
                } else {
                    refreshYzm(document.getElementById('yzmImg2'));
                    alert("登录失败：" + json.description);
                    hideLoading();
                }
            }
        });
    }
    function shiwan() {
        ajaxRequest({
            url: "<%=basePath%>shiwan.json",
            beforeSend: function() {
                showLoading();
                $.cookie("uid", '', {path: "/", expires: -1});
                $.cookie("token", '', {path: "/", expires: -1});
            },
            success: function(json) {
                if (json.result == 1) {
                    $.cookie("uid", json.userId, {path: "/"});
                    $.cookie("token", json.token, {path: "/"});
                    hideLoading();
                    alert("游客盘口只供试玩，与正式会员盘口无关");
                    location.reload();
                } else {
                    refreshYzm(document.getElementById('yzmImg2'));
                    alert("登录失败：" + json.description);
                    hideLoading();
                }
            }
        });
    }
    function sigout() {
        ajaxRequest({
            url: "<%=basePath%>member/ajaxSigout.json",
            beforeSend: function() {
                showLoading();
            },
            success: function(json) {
                $.cookie("uid", '', {path: "/", expires: -1});
                $.cookie("token", '', {path: "/", expires: -1});
                hideLoading();
                location.reload();
            }
        });
    }
</script>