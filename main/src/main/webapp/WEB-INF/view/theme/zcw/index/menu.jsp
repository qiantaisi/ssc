<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = RequestUtils.getScheme(request) + "://" + "m." + request.getServerName().replace("www.", "");
%>
<div class="head_middle">
    <div class="container clearfix">
        <a href="<%=basePath%>main.html" class="left logo">

            <img src="<%=basePath%>images/${logo.imageId}" class="top_img"/>
        </a>
        <div class="left head_middle_yuye">
            <a href="javascript:void(0);">
                <img src="${resPath}images/index_14.png" class="top_img"/>
            </a>
        </div>
     <div class="right clearfix">
         <%--  <div class="left head_middle_tel">
            400-690-8888
        </div>
        --%>
            <a href="${kefuUrl}" target="_blank" class="left head_middle_kf">
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
            <div class="all_fenlei_yin" <c:choose><c:when test="${not empty param.isShow && param.isShow == true}">style="display:block;"</c:when><c:otherwise>style="display:none"</c:otherwise></c:choose>>
                <a href="javascript:void(0)" onclick="openGcdt('gcdt/ffssc')" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index_39.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        分分时时彩
                    </div>
                </a>
                <a href="javascript:void(0)" onclick="openGcdt('gcdt/cqssc')" class="all_fenlei_yin_list clearfix">

                    <div class="left">
                        <img src="${resPath}images/index1_6.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        重庆时时彩
                    </div>
                </a>
                <a href="javascript:void(0)" onclick="openGcdt('gcdt/jspk10')" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index_42.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        极速PK拾
                    </div>
                </a>
                <a href="javascript:void(0)" onclick="openGcdt('gcdt/pk10')" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index_49.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        北京PK拾
                    </div>
                </a>
                <a href="javascript:void(0)" onclick="openGcdt('gcdt/lhc')" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index51-17.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        香港六合彩
                    </div>
                </a>
                <a href="javascript:void(0)" onclick="openGcdt('gcdt/xyft')"  class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index1_11.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        幸运飞艇
                    </div>
                </a>
                <a href="javascript:void(0)" onclick="openGcdt('gcdt/ahk3')" class="all_fenlei_yin_list clearfix" >
                    <div class="left">
                        <img src="${resPath}images/index1_15.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        安徽快3
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
                                    <a href="javascript:void(0)" onclick="openGcdt('gcdt/ffssc')">分分时时彩</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" onclick="openGcdt('gcdt/jspk10')" >极速PK10</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" onclick="openGcdt('gcdt/cqssc')">重庆时时彩</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" onclick="openGcdt('gcdt/pk10')">北京PK10</a>
                                </li>
                            </ul>
                        </div>
                        <div class="all_fenlei_b_yin">
                            <p class="all_fenlei_b_yin_tl">高频彩</p>
                            <div class="clearfix all_fenlei_b_yin_a">
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/cqssc')">重庆时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/tjssc')">天津时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/xjssc')">新疆时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/ffssc')">分分时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/efssc')">两分时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/sfssc')">三分时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/wfssc')">五分时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/pk10')">北京PK10</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/jspk10')">极速PK10</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/xyft')">幸运飞艇</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/lhc')">香港六合彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/jsk3')">江苏快3</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/hbk3')">湖北快3</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/ahk3')">安徽快3</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/jlk3')">吉林快3</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/klsf')">快乐十分</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/xync')">幸运农场</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/kl8')">北京快乐8</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/fc3d')">福彩3D</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/pl3')">体彩排列3</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/bj28')">北京28</a>

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
                                    <a href="javascript:void(0)" onclick="openGcdt('gcdt/lhc')">香港六合彩</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" onclick="openGcdt('gcdt/fc3d')">福彩3D</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" onclick="openGcdt('gcdt/pl3')">体彩排列3</a>
                                </li>

                            </ul>
                        </div>
                        <div class="all_fenlei_b_yin">
                            <p class="all_fenlei_b_yin_tl">低频彩</p>
                            <div class="clearfix all_fenlei_b_yin_a">

                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/lhc')">香港六合彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/fc3d')">福彩3D</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/pl3')">体彩排列3</a>

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
                                    <a href="javascript:void(0)" onclick="openGcdt('gcdt/ffssc')">分分时时彩</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" onclick="openGcdt('gcdt/jspk10')">极速PK10</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" onclick="openGcdt('gcdt/cqssc')">重庆时时彩</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" onclick="openGcdt('gcdt/pk10')">北京PK10</a>
                                </li>
                            </ul>
                        </div>
                        <div class="all_fenlei_b_yin">
                            <p class="all_fenlei_b_yin_tl">全部</p>
                            <div class="clearfix all_fenlei_b_yin_a">

                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/cqssc')">重庆时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/tjssc')">天津时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/xjssc')">新疆时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/ffssc')">分分时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/efssc')">两分时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/sfssc')">三分时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/wfssc')">五分时时彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/pk10')">北京PK10</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/jspk10')">极速PK10</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/xyft')">幸运飞艇</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/lhc')">香港六合彩</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/jsk3')">江苏快3</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/hbk3')">湖北快3</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/ahk3')">安徽快3</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/jlk3')">吉林快3</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/klsf')">快乐十分</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/xync')">幸运农场</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/kl8')">北京快乐8</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/fc3d')">福彩3D</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/pl3')">体彩排列3</a>
                                <a href="javascript:void(0)" onclick="openGcdt('gcdt/bj28')">北京28</a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu_main clearfix left">
            <c:choose>
                <c:when test="${param.noselect == 1 || param.yhhd != null || param.kjjg != null}">
                    <a href="<%=basePath%>main.html">
                        首页
                    </a>
                </c:when>
                <c:otherwise>
                    <a href="<%=basePath%>main.html" class="ahover">
                        首页
                    </a>
                </c:otherwise>
            </c:choose>

            <a href="JavaScript:void(0)" onclick="openGcdt('gcdt')"  target="_blank">
                购彩大厅
            </a>


            <c:choose>
                <c:when test="${param.yhhd == 3}">
                    <a href="<%=basePath%>yhhd.html" class="ahover">
                        优惠活动
                    </a>
                </c:when>
                <c:otherwise>
                    <a href="<%=basePath%>yhhd.html">
                        优惠活动
                    </a>
                </c:otherwise>
            </c:choose>


            <c:choose>
                <c:when test="${param.kjjg == 4}">
                    <a href="<%=basePath%>kjjg.html" class="ahover">
                        开奖公告
                    </a>
                </c:when>
                <c:otherwise>
                    <a href="<%=basePath%>kjjg.html">
                        开奖公告
                    </a>
                </c:otherwise>
            </c:choose>


            <a href="<%=basePath%>ssc/index.html?module=zstIndex" target="_blank">
                走势图表
            </a>
            <a href="<%=mHostName%>" target="_blank">
                <em class="hot"></em>
                <img src="${resPath}images/index30.png" class="menu_a_img" />
                手机购买
            </a>
        </div>
    </div>
</div>

<script>
    $(function () {
        $('.type_top .left .left_div .log,.type_top .left .left_div .alert_log').hover(function () {
            $('.type_top .left .left_div .alert_log').show();
            $('.type_top .left .left_div .alert_par').hide();
        })
        $('.type_top').hover(function () {
        }, function () {
            $('.type_top .left .left_div .alert_log').hide();
            $('.type_top .left .left_div .alert_par').hide();
        })
        $('.type_top .right ul li.l').hover(function () {
            $(this).addClass('sli');
            $(this).find('div').show();
        })
        $('.type_top .right ul li').hover(function () {

        }, function () {
            $(this).removeClass('sli');
            $(this).find('div').hide();
        })
        $('.type_top .left .left_div a.par').hover(function () {
            $('.type_top .left .left_div .alert_par').show();
            $('.type_top .left .left_div .alert_log').hide();
        })
    });

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

    function openGcdt(module) {
//        if (typeof module == 'undefined') {
//            module = '';
//        }
        <%--windowOpenBlank('<%=basePath%>ssc/index.html?module=' + module);--%>
        var subUrl = "";
        if (module) {
            subUrl = "#" + CONFIG.BASEURL + "ssc/" +module + ".html";
        }
        windowOpenBlank(CONFIG.BASEURL + 'ssc/index.html' + subUrl);
    }

    function openGcdt(module) {
//        if (typeof module == 'undefined') {
//            module = '';
//        }
        <%--windowOpenBlank('<%=basePath%>ssc/index.html?module=' + module);--%>
        var subUrl = "";
        if (module) {
            subUrl = "#" + CONFIG.BASEURL + "ssc/" +module + ".html";
        }
        windowOpenBlank(CONFIG.BASEURL + 'ssc/index.html' + subUrl);
    }
</script>