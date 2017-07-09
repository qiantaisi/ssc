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
                            <a href="<%=basePath%>help/question/zc_1.html">
                                如何注册账号
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/mima_3.html">
                                怎么找回登录密码
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/mima_1.html">
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
                            <a href="<%=basePath%>help/question/cz_4.html">
                                如何进行充值
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/mima_2.html">
                                如何购买彩票
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                如何查询购彩记录
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/aq_1.html">
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
                            <a href="<%=basePath%>help/question/tk_1.html">
                                怎样进行兑奖
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/tk_5.html">
                                如何进行提款
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/tk_6.html">
                                提款是否收手续费
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/tk_9.html">
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



