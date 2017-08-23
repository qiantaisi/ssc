<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

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
        <form id="myform">
            <div class="login_nr_b">
                <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			账号:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="text" name="account" class="inputStr left" placeholder="请输入用户名"/>
                        <div class="left erro">
                        <span class="yhm">
                            <span class="info">字母开头的6-12位字母数字组成的用户名</span>
                            <span class="error red hide"></span>
                        </span>
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
                        <input type="password" name="password" class="inputStr left" placeholder="请输入密码"/>
                        <div class="left erro">
                        <span class="mm">
                            <span class="info">输入6-12位字母、数字的密码</span>
                            <span class="error red hide"></span>
                        </span>
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
                        <input type="password" name="confirmPassword" class="inputStr left" placeholder="确认密码"/>
                        <div class="left erro">
                        <span class="qmm">
                            <span class="info">与上面输入密码必须保持一致</span>
                            <span class="error red hide"></span>
                        </span>
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
                        <input type="text" name="name" class="inputStr left" placeholder="请输入姓名"/>
                        <div class="left erro">
                        <span class="name">
                            <span class="info">姓名必须和绑定的银行卡户名一致</span>
                            <span class="error red hide"></span>
                        </span>
                        </div>
                    </div>
                </div>
                <div class="clearfix login_nr_gp iphoneTd hideRegInput">
			    		<span class="left login_nr_name">
			    			<span class="star starphone">

			    			</span>
			    			手机:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="text" name="phone" class="inputStr left" placeholder="请输入手机"/>
                        <div class="left erro">
                        <span class="sj">
                            <span class="info">请输入您的手机</span>
                            <span class="error red hide"></span>
                        </span>
                        </div>
                    </div>
                </div>
                <div class="clearfix login_nr_gp eamilTd hideRegInput">
			    		<span class="left login_nr_name">
			    			<span class="star staremail">

			    			</span>
			    			邮箱:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="text" name="email" class="inputStr left" placeholder="请输入邮箱"/>
                        <div class="left erro">
                        <span class="yx">
                            <span class="info">请输入您的邮箱</span>
                            <span class="error red hide"></span>
                        </span>

                        </div>
                    </div>
                </div>
                <div class="clearfix login_nr_gp qqTd hideRegInput">
			    		<span class="left login_nr_name">
			    			<span class="star starqq">

			    			</span>
			    			QQ:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="text" name="qq" class="inputStr left" placeholder="请输入QQ"/>
                        <div class="left erro">
                        <span class="qq">
                            <span class="info">请输入QQ</span>
                            <span class="error red hide"></span>
                        </span>

                        </div>
                    </div>
                </div>

                <div class="clearfix login_nr_gp yzmTd hideRegInput" >
			    		<span class="left login_nr_name">
			    			<span class="star staryzm">

			    			</span>
			    			验证码:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <div>
                            <input type="text" id="registerLoginYzm" style="width: 125px;" placeholder="验证码" onfocus="refreshYzm(document.getElementById('registerYzmImg2'))" />
                            <img id="registerYzmImg2" onclick="refreshYzm(this)" style="margin-right: 15px;" src="<%=basePath%>code/yzm?imgWidth=100&imgHeight=30&imgFontHeight=30&imgCodeY=25&imgCodeX=2" />

                            <span class="yzm">
                                   <span class="info">请输入验证码</span>
                                   <span class="error red hide"></span>
                               </span>
                        </div>

                    </div>
                </div>

                <div class="clearfix login_nr_gp" style="padding-left: 40px;">
                    <span class="left login_nr_name"></span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="checkbox" class="left" checked="checked" style="width:30px;"/><span>注册即表示同意<a
                            href="javascript:void(0)" onclick="showKhxy()" class="xieyiCss">《${webName}服务使用协议》</a></span></h3>
                    </div>
                </div>
                <div class="login_b">
                    <p>
                        <input type="button" class="mfkh" value="免费开户" id="btn-register"/>
                        <input type="button" class="mfkh" value="重置" onclick="rest()"/>
                    </p>
                </div>
        </form>
        <div class="login_b_link" style="padding-left: 75px;">
            <a href="${kefuUrl}">忘记密码?</a>
            <span>|</span>
            <a href="${kefuUrl}" target="_blank">在线客服</a>
        </div>
    </div>
</div>
</div>

<script type="text/html" id="template_khxy">
    ${khxy.khxy}
</script>

<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/jsCommonLogin.jsp"/>

<script>

    function rest(){
        document.getElementById("myform").reset()
    }
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

    var qqCheck = false;
    var iphoneCheck = false;
    var emailCheck = false;
    $(function () {
        ajaxRequest({
            url: "<%=basePath%>ajaxGetRegisterResult.json",
            data: {},
            success:function(obj){
                //判断QQ是否必填
                if(obj.checkQq){
                    $('.qqTd').removeClass('hideRegInput');
                    if(obj.needRequiredQq){
                        qqCheck = true;
                        $(".starqq").html("*");
                    }
                }

                if(obj.checkEmail){
                    $('.eamilTd').removeClass('hideRegInput');
                    if(obj.needRequiredEmail){
                        emailCheck = true;
                        $(".staremail").html("*");

                    }
                }
                if(obj.checkPhone){
                    $('.iphoneTd').removeClass('hideRegInput');
                    if(obj.needRequredPhone){
                        iphoneCheck = true;
                        $(".starphone").html("*");
                    }
                }

                if(obj.vcSwtich){
                    $(".yzmTd").removeClass('hideRegInput');
                }

            }

        });
        $(".login_nr_b .login_nr_gp .login_nr_gp_rt input.inputStr").keypress(function (e) {
            if (e.which == 13) {// 判断所按是否回车键
                var inputs = $(".login_nr_b").find(".inputStr"); // 获取表单中的所有输入框
                var idx = inputs.index(this); // 获取当前焦点输入框所处的位置
                if (idx == inputs.length - 1) {// 判断是否是最后一个输入框
                    if (confirm("最后一个输入框已经输入,是否提交?")) // 用户确认
                        $("#btn-register").trigger("click");// 提交表单
                } else {
                    inputs[idx + 1].focus(); // 设置焦点
                    inputs[idx + 1].select(); // 选中文字
                }
                return false;// 取消默认的提交行为
            }
        });


        $(".all_fenlei_yin").css("display", "none");
        $("#btn-register").click(function () {
            var account = $("input[name='account']").val(); // 账号
            var password = $("input[name='password']").val();   // 密码
            var phone = $("input[name='phone']").val();   // 手机号码
            var email = $("input[name='email']").val();   // 邮箱号码
            var qq = $("input[name='qq']").val();   // QQ
            var yzm = $("input[name='yzm']").val();   // 验证码


            var confirmPassword = $("input[name='confirmPassword']").val(); // 确认密码
            var name = $("input[name='name']").val();   // 姓名
            if (!account) {
                $(".yhm").find(".info").hide();
                $(".yhm").find(".error").html("请输入用户名").show();
                return;
            }

            if (!account.match(/^[a-zA-Z][0-9a-zA-Z]{5,11}$/)) {
                $(".yhm").find(".info").hide();
                $(".yhm").find(".error").html("请输入以字母开头的6-12位字母、数字组成的用户名").show();
                return;
            }

            if (!password) {
                $(".mm").find(".info").hide();
                $(".mm").find(".error").html("请输入密码").show();
                return;
            }

            if (!password.match(/^[0-9a-zA-Z]{6,12}$/)) {
                $(".mm").find(".info").hide();
                $(".mm").find(".error").html("请输入6-12位字母、数字的密码").show();
                return;
            }

            if (!confirmPassword) {
                $(".qmm").find(".info").hide();
                $(".qmm").find(".error").html("请请输入确认密码").show();
                return;
            }

            if (confirmPassword != password) {
                $(".qmm").find(".info").hide();
                $(".qmm").find(".error").html("确认密码不正确").show();
                return;
            }

            if (!name) {
                $(".name").find(".info").hide();
                $(".name").find(".error").html("请输入姓名").show();
                return;
            }

            if (!name.match(/^[\u4e00-\u9fa5]+$/)) {
                $(".name").find(".info").hide();
                $(".name").find(".error").html("姓名只能是汉字").show();
                return;
            }

            if (!yzm) {
                $(".yzm").find(".info").hide();
                $(".yzm").find(".error").html("请输入验证码").show();
                return;
            }

            if(qqCheck && qq){
                $(".qq").find(".info").hide();
                $(".qq").find(".error").html("请输入验QQ").show();
                return;
            }

            if(iphoneCheck && phone){
                $(".sj").find(".info").hide();
                $(".sj").find(".error").html("请输入手机").show();
                return;
            }

            if(emailCheck && email){
                $(".yx").find(".info").hide();
                $(".yx").find(".error").html("请输入邮箱").show();
                return;
            }

            $(".erro .info").hide();
            $(".erro .error").hide();

            ajaxRequest({
                url: "<%=basePath%>member/ajaxRegister.json",
                data: {
                    account: account,
                    password: $.md5(password),
                    yzm: yzm,
                    name: name,
                    phone: phone,
                    email: email,
                    agentId: $.cookie("agentId"),
                    qq: qq
                },
                beforeSend: function() {
                    showLoading();
                },
                success: function (json) {
                    if (json.result == 1) {
                        Tools.toast("注册成功");
                        $.cookie("uid", json.userId, {path: "/"});
                        $.cookie("token", json.token, {path: "/"});
                        window.location.href = "<%=basePath%>main.html";
                    }else {
                        Tools.toast("注册失败：" + json.description);
                    }
                },
                complete: function() {
                    hideLoading();
                }
            });
        });
    });
    function showLoading() {
        layer.load(2, {
            shade: [0.1, '#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
</script>




