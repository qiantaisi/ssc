<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("www.", "");
%>
<div class="head_middle">
    <div class="container clearfix">
        <a href="index.html" class="left logo">
            <img src="${resPath}images/index_11.png" />
        </a>
        <div class="left head_middle_yuye">
            <a href="#">
                <img src="${resPath}images/index_14.png" />
            </a>
        </div>
        <div class="right clearfix">
            <div class="left head_middle_tel">
                400-690-8888
            </div>
            <a href="#" class="left head_middle_kf">
                <img src="${resPath}images/index_20.png" />
                联系客服
            </a>
        </div>
    </div>
</div>
<div class="menu">
    <div class="container clearfix">
        <div class="left all_fenlei clearfix">
            <span class="left all_fenlei_tl">全部彩种</span>
            <img src="${resPath}images/index_30.png" class="right all_fenlei_img" />
            <div class="all_fenlei_yin" style="display: none;">
                <a href="#" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index_39.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        分分时时彩
                    </div>
                </a>
                <a href="#" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index_42.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        极速PK拾
                    </div>
                </a>
                <a href="#" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index_45.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        三分彩
                    </div>
                </a>
                <a href="#" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index_49.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        北京PK拾
                    </div>
                </a>
                <a href="#" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index51.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        北京快乐8
                    </div>
                </a>
                <a href="#" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index1-16.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        天津时时彩
                    </div>
                </a>
                <a href="#" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index51-17.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        香港六合彩
                    </div>
                </a>
                <div class="all_fenlei_b">
                    <div class="all_fenlei_b_gp clearfix">
                        <div class="left all_fenlei_b_name" style="background: #ffcdcd;border: 1px solid #ffcdcd;color: #ff4444;">
                            高频彩
                        </div>
                        <div class="all_fenlei_b_gp_rt clearfix">
                            <ul class="all_fenlei_b_gp_rt_ul_lf clearfix">
                                <li>
                                    <a href="#">分分时时彩</a>
                                </li>
                                <li>
                                    <a href="#">极速PK拾</a>
                                </li>
                                <li>
                                    <a href="#">三分彩</a>
                                </li>
                                <li>
                                    <a href="#">北京PK拾</a>
                                </li>
                            </ul>
                        </div>
                        <div class="all_fenlei_b_yin">
                            <p class="all_fenlei_b_yin_tl">高频彩</p>
                            <div class="clearfix all_fenlei_b_yin_a">
                                <a href="#">北京PK10</a>
                                <a href="#">极速PK10</a>
                                <a href="#">幸运飞艇</a>
                                <a href="#">重庆时时彩</a>
                                <a href="#">天津时时彩</a>
                                <a href="#">新疆时时彩</a>
                                <a href="#">分分时时彩</a>
                                <a href="#">两分时时彩</a>
                                <a href="#">三分时时彩</a>
                                <a href="#">五分时时彩</a>
                                <a href="#">江苏快3</a>
                                <a href="#">湖北快3</a>
                                <a href="#">安徽快3</a>
                                <a href="#">吉林快3</a>
                                <a href="#">重庆幸运农场</a>
                                <a href="#">广东快乐十分</a>
                                <a href="#">北京快乐8</a>
                                <a href="#">幸运28</a>

                            </div>
                        </div>
                    </div>
                    <div class="all_fenlei_b_gp clearfix">
                        <div class="left all_fenlei_b_name" style="background: #c3cbf6;border: 1px solid #a7bdfd;color: #4041d0;">
                            低频彩
                        </div>
                        <div class="all_fenlei_b_gp_rt clearfix">
                            <ul class="all_fenlei_b_gp_rt_ul_lf clearfix">
                                <li>
                                    <a href="#">香港六合彩</a>
                                </li>
                                <li>
                                    <a href="#">福彩3d</a>
                                </li>
                                <li>
                                    <a href="#">排列三</a>
                                </li>

                            </ul>
                        </div>
                        <div class="all_fenlei_b_yin">
                            <p class="all_fenlei_b_yin_tl">低频彩</p>
                            <div class="clearfix all_fenlei_b_yin_a">

                                <a href="#">香港六合彩</a>
                                <a href="#">福彩3D</a>
                                <a href="#">体彩排列3</a>

                            </div>
                        </div>
                    </div>

                    <div class="all_fenlei_b_gp clearfix">
                        <div class="left all_fenlei_b_name" style="background: #d9f9df;border: 1px solid #c5f4cf;color: #005d19;padding-top: 11px;height: 47px;">
                            全部
                        </div>
                        <div class="all_fenlei_b_gp_rt clearfix">
                            <ul class="all_fenlei_b_gp_rt_ul_lf clearfix">
                                <li>
                                    <a href="#">分分时时彩</a>
                                </li>
                                <li>
                                    <a href="#">极速PK拾</a>
                                </li>
                                <li>
                                    <a href="#">三分彩</a>
                                </li>
                                <li>
                                    <a href="#">北京PK拾</a>
                                </li>
                            </ul>
                        </div>
                        <div class="all_fenlei_b_yin">
                            <p class="all_fenlei_b_yin_tl">全部</p>
                            <div class="clearfix all_fenlei_b_yin_a">

                                <a href="#">重庆时时彩</a>
                                <a href="#">天津时时彩</a>
                                <a href="#">新疆时时彩</a>
                                <a href="#">分分时时彩</a>
                                <a href="#">两分时时彩</a>
                                <a href="#">三分时时彩</a>
                                <a href="#">五分时时彩</a>
                                <a href="#">北京PK10</a>
                                <a href="#">极速PK10</a>
                                <a href="#">幸运飞艇</a>
                                <a href="#">香港六合彩</a>
                                <a href="#">江苏快3</a>
                                <a href="#">湖北快3</a>
                                <a href="#">安徽快3</a>
                                <a href="#">吉林快3</a>
                                <a href="#">快乐十分</a>
                                <a href="#">幸运农场</a>
                                <a href="#">北京快乐8</a>
                                <a href="#">福彩3D</a>
                                <a href="#">体彩排列3</a>
                                <a href="#">幸运28</a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu_main clearfix left">
            <a href="#" class="ahover">
                首页
            </a>
            <a href="#">
                购彩大厅
            </a>
            <a href="#">
                优惠活动
            </a>
            <a href="#">
                开奖公告
            </a>
            <a href="#">
                走势图表
            </a>
            <a href="#">
                <em class="hot"></em>
                <img src="${resPath}images/index30.png" class="menu_a_img" />
                手机购买
            </a>
        </div>
    </div>
</div>

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