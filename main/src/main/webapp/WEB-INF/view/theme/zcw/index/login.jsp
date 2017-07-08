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


<div class="main login_main">
    <div class="container login_nr">
        <div class="login_nr_t clearfix">
            <div class="left login_nr_t_lf">
                账号登录
            </div>
            <div class="right">
                没有账号?<a href="<%=basePath%>register.html">立即注册</a>
            </div>
        </div>
        <div class="login_nr_b">
            <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			用户名:
			    		</span>
                <div class="login_nr_gp_rt clearfix">
                    <input type="text" class="left" placeholder="请输入用户名" />
                    <div class="left erro">
                        请输入用户名（3-15个英文、数字）
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
                    <input type="password" class="left" placeholder="请输入密码" />

                </div>
            </div>
            <div class="clearfix login_nr_gp login_yz">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			验证码:
			    		</span>
                <div class="login_nr_gp_rt clearfix">
                    <input type="text" class="left" placeholder="请输入验证码" />
                    <a href="#" class="left">
                        <img src="${resPath}images/index_51.png" />
                    </a>
                </div>
            </div>
            <div class="login_b">
                <p>
                    <a href="#">登录</a>
                </p>
                <p>
                    <a href="<%=basePath%>register.html">免费开户</a>
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
<!--弹窗-->
<div class="bg"></div>
<div class="login_alert">
    <div class="login_alert_tl clearfix">
        <span class="left">易名彩登录</span>
        <a href="javascript:;" class="cha right"></a>
    </div>
    <form>
        <div class="login_alert_b">
            <div class="login_alert_gp">
                <img src="${resPath}images/alert2.png" class="login_alert_ico" />
                <input type="text" placeholder="手机号/用户名" />
            </div>
            <div class="login_alert_gp">
                <img src="${resPath}images/alert3.png" class="login_alert_ico" />
                <input type="password" placeholder="密码" />
            </div>
            <input type="button" class="btn_red login_alertbtn" value="立即登录" />
            <div class="login_alert_link">
                <a href="#">忘记密码</a>
                <span>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <a href="#">立即注册</a>
            </div>
        </div>
    </form>
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

<script type="text/javascript">

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