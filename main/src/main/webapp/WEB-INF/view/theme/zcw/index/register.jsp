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
<c:import url="menu.jsp" />
<div class="wrap">
<div class="register_nr">


<c:import url="menu.jsp" />


<div class="main login_main">
    <div class="container login_nr">
        <div class="login_nr_t clearfix">
            <div class="left login_nr_t_lf">
                账号登录
            </div>
            <div class="right">
                已有账号?<a href="<%=basePath%>login.html">立即登录</a>
            </div>
        </div>
        <div class="login_nr_b">
            <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			账号:
			    		</span>
                <div class="login_nr_gp_rt clearfix">
                    <input type="text"  name="account" class="left" placeholder="请输入用户名" />
                    <div class="left erro">
                        字母开头的6-12位字母数字组成的用户名
                    </div>
                </div>
            </div>
            <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			密码:
			    		</span>
                <div class="login_nr_gp_rt clearfix">
                    <input type="password"  name="password" class="left" placeholder="请输入密码" />
                    <div class="left erro">
                        输入6-12位字母、数字的密码
                    </div>

                </div>
            </div>
            <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			确认密码:
			    		</span>
                <div class="login_nr_gp_rt clearfix">
                    <input type="text"  name="confirmPassword" class="left" placeholder="确认密码" />
                    <div class="left erro">
                        与上面输入密码必须保持一致
                    </div>
                </div>
            </div>
            <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			姓名:
			    		</span>
                <div class="login_nr_gp_rt clearfix">
                    <input type="text"  name="name" class="left" placeholder="请输入姓名" />
                    <div class="left erro">
                        姓名必须和绑定的银行卡户名一致
                    </div>
                </div>
            </div>
            <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			手机:
			    		</span>
                <div class="login_nr_gp_rt clearfix">
                    <input type="text"  name="phone" class="left" placeholder="请输入手机" />
                    <div class="left erro">
                        请输入您的手机
                    </div>
                </div>
            </div>
            <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			邮箱:
			    		</span>
                <div class="login_nr_gp_rt clearfix">
                    <input type="text"  name="email" class="left" placeholder="请输入邮箱" />
                    <div class="left erro">
                        请输入您的邮箱
                    </div>
                </div>
            </div>
            <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			QQ:
			    		</span>
                <div class="login_nr_gp_rt clearfix">
                    <input type="text"  name="qq" class="left" placeholder="请输入QQ" />
                    <div class="left erro">
                        请输入QQ
                    </div>
                </div>
            </div>
            <div class="clearfix login_nr_gp">
                <span class="left login_nr_name"></span>
                <div class="login_nr_gp_rt clearfix">
                    <input type="checkbox" class="left" checked="checked" style="width:30px;" />
                    同意本站规则与条款

                </div>
            </div>
            <div class="login_b">
                <p>
                    <input type="button" class="mfkh" value="免费开户" id="btn-register"/>
                </p>
            </div>
            <div class="login_b_link">
                <a href="#">忘记密码?</a>
                <span>|</span>
                <a href="#">在线客服</a>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <div class="footer_t">
        <div class="container clearfix">
            <div class="left footer_t1">
                <img src="${resPath}images/index_78.png" class="footer_t1_1" />
                <p>
                    <img src="${resPath}images/index5.png"  class="footer_t1_2" />
                </p>
                <p>
                    扫一扫 手机购彩更方便
                </p>
            </div>
            <div class="footer_menu_main clearfix">
                <div class="footer_menu left">
                    <p class="footer_menu_t">
                        <img src="${resPath}images/index84.png" />
                        平台优势
                    </p>
                    <ul>
                        <li>
                            <a href="#">
                                <img src="${resPath}images/index_93.png" />
                                账户安全
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${resPath}images/index-36.png" />
                                购彩简单
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${resPath}images/index2_92.png" />
                                领奖方便
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${resPath}images/index_135.png" />
                                提款快速
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer_menu left">
                    <p class="footer_menu_t">
                        <img src="${resPath}images/index81.png" />
                        账户相关
                    </p>
                    <ul class="footer_menu_2">
                        <li>
                            <a href="#">
                                如何注册账号
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                怎么找回登录密码
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                如何修改手机号码
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                如何修改真实姓名
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer_menu left">
                    <p class="footer_menu_t">
                        <img src="${resPath}images/index_87.png" />
                        充值购彩
                    </p>
                    <ul class="footer_menu_2">
                        <li>
                            <a href="#">
                                如何进行充值
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                如何购买彩票
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                如何查询购彩记录
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                在本站购彩安全吗
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer_menu left">
                    <p class="footer_menu_t">
                        <img src="${resPath}images/index-31.png" />
                        兑奖提款
                    </p>
                    <ul class="footer_menu_2">
                        <li>
                            <a href="#">
                                怎样进行兑奖
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                如何进行提款
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                提款是否收手续费
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                提款不成功怎么办
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_b">
        <div class="container">
            <img src="${resPath}images/index112.png" />
            <br />
            2009-2017©易名彩 公司版权所有 <br />
            易名彩 郑重提示：彩票有风险，投注需谨慎。不向未满18周岁的青少年出售彩票！
        </div>
    </div>
</div>

</div>
<%--<div class="img"><a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt=""></a></div>--%>
<%--<img src="${resPath}img/bj.jpg" class="back" alt="" width="100%">--%>
<%--<div class="regedit">--%>

<%--<div class="copy recopy">--%>
    <%--<c:import url="../common/copyright_time.jsp"/>&nbsp;&nbsp;--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>

    <%--<div class="reg_col">--%>
        <%--<div class="reg_list">--%>
            <%--<ul>--%>
                <%--<li class="sli">--%>
                    <%--<h5>1</h5>--%>
                    <%--<p>填写信息</p>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<h5>2</h5>--%>
                    <%--<p>注册成功</p>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<h5>3</h5>--%>
                    <%--<p>充值购彩</p>--%>
                <%--</li>--%>
            <%--</ul>--%>
        <%--</div>--%>
        <%--<div class="reg">--%>
            <%--<div class="reg_le">--%>
                <%--<form onsubmit="ajaxRegister();return false;">--%>
                    <%--<div>--%>
                        <%--<h4><span><img src="${resPath}img/r1.png" /></span></h4>--%>
                        <%--<p><input id="registerAccount" type="text" placeholder="请输入您的用户名"/></p>--%>
                    <%--</div>--%>
                    <%--<div>--%>
                        <%--<h4><span><img src="${resPath}img/r2.png" /></span></h4>--%>
                        <%--<p><input id="registerPassword" type="password" placeholder="请输入密码"/></p>--%>
                    <%--</div>--%>
                    <%--<div>--%>
                        <%--<h4><span><img src="${resPath}img/r1.png" /></span></h4>--%>
                        <%--<p><input id="registerName" type="text" placeholder="请输入您的姓名"/></p>--%>
                    <%--</div>--%>
                    <%--<div>--%>
                        <%--<h4><span><img src="${resPath}img/r3.png" /></span></h4>--%>
                        <%--<p><input id="registerYzm" class="short" type="text" placeholder="请输入验证码" /><img id="registerYzmImg1" onclick="refreshYzm(this)" src="<%=basePath%>code/yzm?imgWidth=65&imgHeight=30&imgFontHeight=26&imgCodeY=23&imgCodeX=2" /></p>--%>
                    <%--</div>--%>
                    <%--<div class="no">--%>
                        <%--<h3><input type="submit"  value="立即注册"/><br><span>注册即表示同意<a href="javascript:void(0)" onclick="showKhxy()">《${webName}服务使用协议》</a></span></h3>--%>
                    <%--</div>--%>
                <%--</form>--%>
            <%--</div>--%>
            <%--<div class="reg_rt">--%>
                <%--<h5>已有账号，<span>直接登录</span></h5>--%>
                <%--<h3>注册帮助</h3>--%>
                <%--<ul>--%>
                    <%--<li>--%>
                        <%--<h6>1</h6>--%>
                        <%--<p><a href="<%=basePath%>?u=<%=basePath%>/help/question/zc.html" target="_blank">新手操作指南</a></p>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<h6>2</h6>--%>
                        <%--<p><a href="<%=basePath%>?u=<%=basePath%>/help/question/mima.html" target="_blank">手机注册时提示手机号码已被绑定怎么办?</a></p>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<h6>3</h6>--%>
                        <%--<p><a href="#">注册${webName}时昵称显示“已经被注册”如何处理?</a></p>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<h6>4</h6>--%>
                        <%--<p><a href="#">注册时提示"你所使用的IP地址异常",该怎么办?</a></p>--%>
                    <%--</li>--%>
                    <%--<li class="no">--%>
                        <%--<h6></h6>--%>
                        <%--<p><a href="<%=basePath%>?u=<%=basePath%>/help/index.html" target="_blank">更多帮助》</a></p>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<%--<div class="alert_log two2">--%>
    <%--<div class="alert_log_col">--%>
        <%--<h5>欢迎您登录<i>×</i></h5>--%>
        <%--<form onsubmit="registerLogin();return false;">--%>
            <%--<div>--%>
                <%--<h4><span><img src="${resPath}img/l1.png" /></span></h4>--%>
                <%--<p><input type="text" id="registerLoginAccount" placeholder="请输入您的账号" /></p>--%>
            <%--</div>--%>
            <%--<div>--%>
                <%--<h4><span><img src="${resPath}img/l2.png" /></span></h4>--%>
                <%--<p><input type="password" id="registerLoginPassword" placeholder="密码" /></p>--%>
            <%--</div>--%>
            <%--<div>--%>
                <%--<h4><span><img src="${resPath}img/l2.png" /></span></h4>--%>
                <%--<p><input type="text" id="registerLoginYzm" placeholder="验证码" onfocus="refreshYzm(document.getElementById('registerYzmImg2'))" /><img id="registerYzmImg2" onclick="refreshYzm(this)" src="<%=basePath%>code/yzm?imgWidth=113&imgHeight=43&imgFontHeight=40&imgCodeY=35&imgCodeX=2" /></p>--%>
            <%--</div>--%>
            <%--<h3><input type="checkbox" /><a href="#">记住密码</a><span><a href="${kefuUrl}" target="_blank">忘记密码？</a></span></h3>--%>
            <%--<h6><input type="submit" class="sub"  value="登录"/></h6>--%>
        <%--</form>--%>
    <%--</div>--%>
<%--</div>--%>

<%--<div class="copy">--%>
    <%--<c:import url="../common/copyright_time.jsp"/>&nbsp;&nbsp;--%>
<%--</div>--%>

<script type="text/html" id="template_khxy">
    ${khxy.khxy}
</script>

<c:import url="../common/commonJs.jsp" />
<c:import url="../common/jsCommonLogin.jsp" />

<%--<c:import url="../common/commonJs.jsp" />--%>
<%--<c:import url="../common/jsCommonLogin.jsp" />--%>
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


<c:import url="../common/bodyEnd.jsp" />

    <script>
        $(function(){
        $("#btn-register").click(function () {
        var account = $("input[name='account']").val(); // 账号
        var password = $("input[name='password']").val();   // 密码
        var phone = $("input[name='phone']").val();   // 手机号码
        var email = $("input[name='email']").val();   // 邮箱号码
        var qq = $("input[name='qq']").val();   // QQ
        console.log(qq+"------------");
            
        var confirmPassword = $("input[name='confirmPassword']").val(); // 确认密码
        var name = $("input[name='name']").val();   // 姓名

        if (!account) {
        alert("请输入用户名");
        return;
        }

        if (!account.match(/^[a-zA-Z][0-9a-zA-Z]{5,11}$/)) {
        alert("请输入以字母开头的6-12位字母、数字组成的用户名");
        return;
        }

        if (!password) {
        alert("请输入密码");
        return;
        }

        // if (!phone) {
        //     Tools.alert("请输如手机号码");
        //     return;
        // }
        //
        // if (!email) {
        //     Tools.alert("请输如邮箱号码");
        //     return;
        // }
        //
        // if (!qq) {
        //     Tools.alert("请输入QQ");
        //     return;
        // }

        if (!password.match(/^[0-9a-zA-Z]{6,12}$/)) {
        alert("请输入6-12位字母、数字的密码");
        return;
        }

        if (!confirmPassword) {
        alert("请输入确认密码");
        return;
        }

        if (confirmPassword != password) {
        alert("确认密码不正确");
        return;
        }

        if (!name) {
        alert("请输入姓名");
        return;
        }

        if (!name.match(/^[\u4e00-\u9fa5]+$/)) {
        alert("姓名只能是汉字");
        return;
        }

        // 处理设备信息返回值的函数
        function DoWithDeviceInformation(info) {
        registerUser(account, password, name, info);
        }

        registerUser(account, password, name, Tools.getCookie("deviceNo"), phone, email, qq);
        });

        function registerUser(account, password, name, deviceNo, phone, email, qq) {
        ajaxRequest({
        url: config.basePath + "member/ajaxRegister.json",
        data: {
        account: account,
        password: $.md5(password),
        name: name,
        agentId: Tools.getCookie("agentId"),
        deviceNo: deviceNo,
        phone: phone,
        email: email,
        qq: qq
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
        });
</script>