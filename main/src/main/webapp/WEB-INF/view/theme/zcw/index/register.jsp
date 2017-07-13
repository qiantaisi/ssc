<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<c:import url="../common/checkIsChildFrame.jsp"/>
<c:import url="top.jsp"/>

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
                    <input type="text"  name="account" class="inputStr left" placeholder="请输入用户名" />
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
                    <input type="password"  name="password" class="inputStr left" placeholder="请输入密码" />
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
                    <input type="password"  name="confirmPassword" class="inputStr left" placeholder="确认密码" />
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
                    <input type="text"  name="name" class="inputStr left" placeholder="请输入姓名" />
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
                    <input type="text"  name="phone" class="inputStr left" placeholder="请输入手机" />
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
                    <input type="text"  name="email" class="inputStr left" placeholder="请输入邮箱" />
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
                    <input type="text"  name="qq" class="inputStr left" placeholder="请输入QQ" />
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
                <a href="${kefuUrl}" target="_blank">在线客服</a>
            </div>
        </div>
    </div>
</div>

<c:import url="bottom.jsp"/>

<script type="text/html" id="template_khxy">
    ${khxy.khxy}
</script>

<c:import url="../common/commonJs.jsp" />
<c:import url="../common/jsCommonLogin.jsp" />

<c:import url="../common/bodyEnd.jsp"/>

<script>
    $(function () {
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


        $(".all_fenlei_yin").css("display","none");
        $("#btn-register").click(function () {
            var account = $("input[name='account']").val(); // 账号
            var password = $("input[name='password']").val();   // 密码
            var phone = $("input[name='phone']").val();   // 手机号码
            var email = $("input[name='email']").val();   // 邮箱号码
            var qq = $("input[name='qq']").val();   // QQ


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
            alert(qq);
            ajaxRequest({
                url: "<%=basePath%>member/ajaxRegister.json",
                data: {
                    account: account,
                    password: $.md5(password),
                    name: name,
                    phone: phone,
                    email: email,
                    qq: qq
                },
                success: function (json) {
                    hideLoading();
                    if (json.result == 1) {
                        Tools.toast("注册成功");
                        $.cookie("uid", json.userId, {path: "/"});
                        $.cookie("token", json.token, {path: "/"});
                        window.location.href = "<%=basePath%>login.html";
                    } else if (json.result == -6) {
                        Tools.toast("注册成功，请登录");
                        window.location.href = "<%=basePath%>login.html";
                    }else if (json.result == "0"){

                        Tools.toast("注册失败：" + json.description);
                    }
                }
            });
        });
    });
        function showLoading() {
            layer.load(2, {
                shade: [0.1,'#000'] //0.1透明度的白色背景
            })
        }
        function hideLoading() {
            layer.closeAll();
        }


</script>



