<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>开奖结果</title>
    <title>开奖结果</title>
    <link rel="stylesheet" href="css/style.css" type="text/css"><!--页面CSS-->
    <link rel="stylesheet" href="css/animate.min.css" type="text/css"><!--CSS3动画-->
    <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script><!--jQuery库-->
</head>
<body>

<div class="type_top">
    <div class="wid1">
        <div class="left fl">
            <div class="left_div">你好，欢迎来到600WAN! <a href="#" class="log">请登录<i class="ico-d"></i></a><span><a href="#"
                                                                                                              class="a1">免费注册</a><a
                    href="#" class="par">合作账号登录<i class="ico-d"></i></a></span>
                <div class="alert_log">
                    <h5><input type="text" placeholder="会员名"/></h5>
                    <h5><input type="password" placeholder="密码"/></h5>
                    <h5><input type="text" class="yzm"/><img src="img/yzm.png"/></h5>
                    <h5><input type="submit" value="登录" class="sub"/><a href="#">立即注册</a></h5>
                    <h3><a href="<%=basePath%>?u=${kefuUrl}" target="_blank">忘记密码？</a></h3>
                </div>
                <div class="alert_par">
                    <ul>
                        <li><h5><span><img src="img/i1.png"/></span></h5><a href="#">支付宝</a></li>
                        <li><h5><span><img src="img/i2.png"/></span></h5><a href="#">QQ</a></li>
                        <li><h5><span><img src="img/i3.png"/></span></h5><a href="#">新浪微博</a></li>
                        <li><h5><span><img src="img/i4.png"/></span></h5><a href="#">139邮箱</a></li>
                        <li><h5><span><img src="img/i5.png"/></span></h5><a href="#">PPTV</a></li>
                        <li><h5><span><img src="img/i6.png"/></span></h5><a href="#">纵横中文网</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="right fr">
            <ul>
                <li class="li0"><a href="#">首页</a></li>
                <li class="l"><a href="#"><b>购买彩票</b><i class="ico-d"></i></a>
                    <div class="pay">
                        <div class="pay_list">
                            <h4>竟足：</h4>
                            <p><span><a href="#">胜平负/让球</a></span><span><a href="#">混合过关</a></span><span><a
                                    href="#">比分</a></span><span><a href="#">进球数</a></span><span><a href="#">半全场精选2串1</a></span><span><a
                                    href="#">2选1</a></span><span><a href="#">一场制胜</a></span><span><a
                                    href="#">热门竞猜</a></span></p>
                        </div>
                        <div class="pay_list">
                            <h4>竟足：</h4>
                            <p><span><a href="#">胜平负/让球</a></span><span><a href="#">混合过关</a></span><span><a
                                    href="#">比分</a></span><span><a href="#">进球数</a></span><span><a href="#">半全场精选2串1</a></span><span><a
                                    href="#">2选1</a></span><span><a href="#">一场制胜</a></span><span><a
                                    href="#">热门竞猜</a></span></p>
                        </div>
                        <div class="pay_list">
                            <h4>竟足：</h4>
                            <p><span><a href="#">胜平负/让球</a></span><span><a href="#">混合过关</a></span><span><a
                                    href="#">比分</a></span><span><a href="#">进球数</a></span><span><a href="#">半全场精选2串1</a></span><span><a
                                    href="#">2选1</a></span><span><a href="#">一场制胜</a></span><span><a
                                    href="#">热门竞猜</a></span></p>
                        </div>
                        <div class="pay_list">
                            <h4>竟足：</h4>
                            <p><span><a href="#">胜平负/让球</a></span><span><a href="#">混合过关</a></span><span><a
                                    href="#">比分</a></span><span><a href="#">进球数</a></span><span><a href="#">半全场精选2串1</a></span><span><a
                                    href="#">2选1</a></span><span><a href="#">一场制胜</a></span><span><a
                                    href="#">热门竞猜</a></span></p>
                        </div>
                    </div>
                </li>
                <li><a href="#">资讯</a></li>
                <li><a href="#">乐豆</a></li>
                <li><a href="#">论坛</a></li>
                <li><a href="#">帮助</a></li>
                <li class="l"><a href="#"><b>网站导航</b><i class="ico-d"></i></a>
                    <div class="link">
                        <h5>
                            <a href="#">购买彩票</a>
                            <a href="#">彩票资讯</a>
                            <a href="#">手机购彩</a>
                        </h5>
                        <h4>
                            <strong>彩票工具</strong>
                            <p><a href="#">手机客户端</a> <a href="#">号码篮彩票</a> <a href="#">软件中奖</a> <a href="#">计算器</a> <a
                                    href="#">小秘书</a> <a href="#">复式计算器</a> <a href="#">奖金预算</a> <a href="#">器欧亚赔转换</a>
                            </p>
                        </h4>
                        <h5 class="last">
                            <a href="#">热门标签</a>
                            <a href="#">热门标签</a>
                        </h5>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="img"><a href="#"><img src="img/logo1.png" alt=""></a></div>
<img src="img/bj.jpg" class="back" alt="" width="100%">
<div class="regedit">
    <div class="reg_col">
        <div class="reg_list">
            <ul>
                <li class="sli">
                    <h5>1</h5>
                    <p>填写信息</p>
                </li>
                <li>
                    <h5>2</h5>
                    <p>注册成功</p>
                </li>
                <li>
                    <h5>3</h5>
                    <p>充值购物</p>
                </li>
            </ul>
        </div>
        <div class="reg">
            <div class="reg_le">
                <div>
                    <h4><span><img src="img/r1.png"/></span></h4>
                    <p><input type="text" placeholder="请输入您的用户名"/></p>
                </div>
                <div>
                    <h4><span><img src="img/r2.png"/></span></h4>
                    <p><input type="password" placeholder="请输入密码"/></p>
                </div>
                <div>
                    <h4><span><img src="img/r2.png"/></span></h4>
                    <p><input type="apssword" placeholder="请输入确认密码"/></p>
                </div>
                <div>
                    <h4><span><img src="img/r3.png"/></span></h4>
                    <p><input class="short" type="text" placeholder="请输入验证码"/><img src="img/yz1.png"/></p>
                </div>
                <div class="no">
                    <h3><input type="submit" value="立即注册"/><br><span>注册即表示同意<a href="#">《600w彩票服务使用协议》</a></span></h3>
                </div>

            </div>
            <div class="reg_rt">
                <h5>已有账号，<span>直接登录</span></h5>
                <h3>注册帮助</h3>
                <ul>
                    <li>
                        <h6>1</h6>
                        <p><a href="#">新手操作指南</a></p>
                    </li>
                    <li>
                        <h6>2</h6>
                        <p><a href="#">手机注册时提示手机号码已被绑
                            定怎么办?</a></p>
                    </li>
                    <li>
                        <h6>3</h6>
                        <p><a href="#">注册600w时昵称显示“已经被注
                            册”如何处理?</a></p>
                    </li>
                    <li>
                        <h6>4</h6>
                        <p><a href="#">注册时提示"你所使用的IP地址异
                            常",该怎么办?</a></p>
                    </li>
                    <li class="no">
                        <h6></h6>
                        <p><a href="#">更多帮助》</a></p>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</div>

<div class="alert_log two2">
    <div class="alert_log_col">
        <h5>欢迎您登录<i>×</i></h5>
        <div>
            <h4><span><img src="img/l1.png"/></span></h4>
            <p><input type="text" placeholder="请输入您的账号"/></p>
        </div>
        <div>
            <h4><span><img src="img/l2.png"/></span></h4>
            <p><input type="password" placeholder="密码"/></p>
        </div>
        <div>
            <h4><span><img src="img/l2.png"/></span></h4>
            <p><input type="password" placeholder="密码"/><img src="img/yz3.png"/></p>
        </div>
        <h3><input type="checkbox"/><a href="#">记住密码</a><span><a href="<%=basePath%>?u=${kefuUrl}"
                                                                 target="_blank">忘记密码？</a></span></h3>
        <h6><input type="submit" class="sub" value="登录"/></h6>
    </div>
</div>

<div class="copy">
    <p>Copyright © 2016-2026 600w彩票</p>
</div>

</body>
<script type="text/javascript" src="js/scrollanim.min.js"></script> <!--"动画库"-->
<script src="js/type.js"></script><!--自定义封装函数-->
<script>
    $(window).resize(function () {
        ate()

    })
    ate()
    function ate() {
        var hei = $(window).height();
        $(".back").css("height", hei - 27 + "px");
    }


    $(".alert_log_col h5 i").click(function () {
        $(".two2").fadeOut();
    })
    autobox(".Customerservice", 1, 1180, 0);
    tabs_cg(".Resultt .latyout .tabs_ce ul li", "", "hover", "acti", "", "");
    click_addname(".Resultt .latyout .wrap_select a", "acti", "click")
    $('.reg_rt h5 span').click(function () {
        $('.two2').fadeIn();
    })
</script>
</html>
