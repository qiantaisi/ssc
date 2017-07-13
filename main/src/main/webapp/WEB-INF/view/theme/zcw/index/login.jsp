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

<c:import url="menu.jsp"/>


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
                    <input type="text" name="registerLoginAccount" id="registerLoginAccount" class="left"
                           placeholder="请输入用户名"/>
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
                    <input type="password" name="registerLoginPassword" id="registerLoginPassword" class="left"
                           placeholder="请输入密码"/>

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
                    <p><input type="text" id="registerLoginYzm" placeholder="验证码"
                              onfocus="refreshYzm(document.getElementById('registerYzmImg2'))"/><img
                            id="registerYzmImg2" onclick="refreshYzm(this)"
                            src="<%=basePath%>code/yzm?imgWidth=113&imgHeight=43&imgFontHeight=40&imgCodeY=35&imgCodeX=2"/>
                    </p>
                </div>
            </div>
            <div class="login_b">
                <p>
                    <a href="javascript:void(0)" onclick="login()">登录</a>
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
                <img src="${resPath}images/index_78.png" class="footer_t1_1"/>
                <p>
                    <img src="${resPath}images/index5.png" class="footer_t1_2"/>
                </p>
                <p>
                    扫一扫 手机购彩更方便
                </p>
            </div>
            <div class="footer_menu_main clearfix">
                <div class="footer_menu left">
                    <p class="footer_menu_t">
                        <img src="${resPath}images/index84.png"/>
                        平台优势
                    </p>
                    <ul>
                        <li>
                            <a href="#">
                                <img src="${resPath}images/index_93.png"/>
                                账户安全
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${resPath}images/index-36.png"/>
                                购彩简单
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${resPath}images/index2_92.png"/>
                                领奖方便
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>help/question/tk.html">
                                <img src="${resPath}images/index_135.png"/>
                                提款快速
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer_menu left">
                    <p class="footer_menu_t">
                        <img src="${resPath}images/index81.png"/>
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
                        <img src="${resPath}images/index_87.png"/>
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
                        <img src="${resPath}images/index-31.png"/>
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
            <img src="${resPath}images/index112.png"/>
            <br/>
            2009-2017©易名彩 公司版权所有 <br/>
            易名彩 郑重提示：彩票有风险，投注需谨慎。不向未满18周岁的青少年出售彩票！
        </div>
    </div>
</div>

<div class="copy recopy">
    <c:import url="../common/copyright_time.jsp"/>&nbsp;&nbsp;
</div>

<script type="text/html" id="template_khxy">
    ${khxy.khxy}
</script>

<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/jsCommonLogin.jsp"/>

<script type="text/javascript">

    $(window).resize(function () {
        ate();
    });

    $(function () {
        $(".all_fenlei_yin").css("display", "none");
        ate();
        $(".alert_log_col h5 i").click(function () {
            $(".two2").fadeOut();
        });
        autobox(".Customerservice", 1, 1180, 0);
        tabs_cg(".Resultt .latyout .tabs_ce ul li", "", "hover", "acti", "", "");
        click_addname(".Resultt .latyout .wrap_select a", "acti", "click");
        $('.reg_rt h5 span').click(function () {
            $('.two2').fadeIn();
        })
    });

    function ate() {
        var hei = $(window).height();
        $(".back").css("height", hei - 27 + "px");
    }
</script>
<c:import url="../common/bodyEnd.jsp"/>