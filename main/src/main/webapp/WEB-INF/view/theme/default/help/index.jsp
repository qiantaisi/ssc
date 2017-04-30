<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<c:import url="../common/checkIsChildFrame.jsp" />
<c:import url="../index/top.jsp"/>

<div class="men_list">
    <div class="wid1">
        <div class="logo">
            <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}"  alt=""></a>
        </div>
        <c:import url="../common/navList.jsp"/>
    </div>
</div>

<div class="main wi">
    <c:import url="common/left.jsp"/>
    <div class="rt">
        <c:import url="common/top.jsp"/>
        <c:import url="common/right.jsp"/>
        <div id="helpRightContent">
            <div class="type">
                <h5>彩票种类</h5>
                <div class="type_list">
                    <ul>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/bjpk10.html"><img src="${resPath}img/ico18.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/bjpk10.html"><p>北京PK10</br><span>北京PK10</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/jspk10.html"><img src="${resPath}img/jspk10.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/jspk10.html"><p>极速PK10</br><span>极速PK10</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/xyft.html"><img src="${resPath}img/xyft.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/xyft.html"><p>幸运飞艇</br><span>幸运飞艇</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/lhc.html"><img src="${resPath}img/ico17.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/lhc.html"><p>香港六合彩</br><span>香港六合彩</span></p></a>
                        </li>
                        <!--<li>
                            <h4><span><a href="<%=basePath%>help/rule/sflhc.html"><img src="${resPath}img/sflhc.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/sflhc.html"><p>十分六合彩</br><span>十分六合彩</span></p></a>
                        </li>-->
                        <li class="li6">
                            <h4><span><a href="<%=basePath%>help/rule/cqssc.html"><img src="${resPath}img/ico16.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/cqssc.html"><p>重庆时时彩</br><span>重庆时时彩</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/tjssc.html"><img src="${resPath}img/ico27.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/tjssc.html"><p>天津时时彩</br><span>天津时时彩</span></p></a>
                        </li>

                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/xjssc.html"><img src="${resPath}img/ico28.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/xjssc.html"><p>新疆时时彩</br><span>新疆时时彩</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/ffssc.html"><img src="${resPath}img/ffssc.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/ffssc.html"><p>分分时时彩</br><span>分分时时彩</span></p></a>
                        </li>
                        <li class="li6">
                            <h4><span><a href="<%=basePath%>help/rule/efssc.html"><img src="${resPath}img/efssc.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/efssc.html"><p>两分时时彩</br><span>两分时时彩</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/sfssc.html"><img src="${resPath}img/sfssc.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/sfssc.html"><p>三分时时彩</br><span>三分时时彩</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/wfssc.html"><img src="${resPath}img/wfssc.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/wfssc.html"><p>五分时时彩</br><span>五分时时彩</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/jsk3.html"><img src="${resPath}img/jsk3.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/jsk3.html"><p>江苏快3</br><span>江苏快3</span></p></a>
                        </li>
                        <li class="li6">
                            <h4><span><a href="<%=basePath%>help/rule/hbk3.html"><img src="${resPath}img/hbk3.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/hbk3.html"><p>湖北快3</br><span>湖北快3</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/ahk3.html"><img src="${resPath}img/ahk3.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/ahk3.html"><p>安徽快3</br><span>安徽快3</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/jlk3.html"><img src="${resPath}img/jlk3.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/jlk3.html"><p>吉林快3</br><span>吉林快3</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/cqxync.html"><img src="${resPath}img/ico29.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/cqxync.html"><p>重庆幸运农场</br><span>重庆幸运农场</span></p></a>
                        </li>
                        <li class="li6">
                            <h4><span><a href="<%=basePath%>help/rule/gd10.html"><img src="${resPath}img/ico26.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/gd10.html"><p>广东快乐十分</br><span>广东快乐十分</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/fc3d.html"><img src="${resPath}img/ico24.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/fc3d.html"><p>福彩3D</br><span>福彩3D</span></p></a>
                        </li>

                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/pl3.html"><img src="${resPath}img/ico20.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/pl3.html"><p>体彩排列3</br><span>体彩排列3</span></p></a>
                        </li>
                        <li>
                            <h4><span><a href="<%=basePath%>help/rule/bjkl8.html"><img src="${resPath}img/ico25.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/bjkl8.html"><p>北京快乐8</br><span>北京快乐8</span></p></a>
                        </li>
                        <li class="li6">
                            <h4><span><a href="<%=basePath%>help/rule/xy28.html"><img src="${resPath}img/ico30.png"/></a></span></h4>
                            <a href="<%=basePath%>help/rule/xy28.html"><p>幸运28</br><span>幸运28</span></p></a>
                        </li>
                    </ul>
                </div>
                <h5 id="flip">功能指引</h5>
                <div class="type_links">
                    <div class="slide">
                        <ul>
                            <h4>注册</h4>
                            <li><p><a href="<%=basePath%>help/question/zc_1.html">1、如何免费注册成为会员？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/zc_2.html">2、注册时用户需要注意什么？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/zc_3.html">3、是否可以注册多个账号？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/zc_4.html">4、注册后为什么要绑定银行卡？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/zc_5.html">5、真实姓名填写错误如何修改？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/zc_6.html">6、如何修改个人资料？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/zc_7.html">7、如何修改密码？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/zc_8.html">8、未成年人购彩限制</a></p></li>
                        </ul>
                    </div>
                    <div class="slide">
                        <ul style="border-right: none;">
                            <h4>充值投注</h4>
                            <li><p><a href="<%=basePath%>help/question/cz_1.html">1、如何银行汇款充值？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/cz_2.html">2、支付宝支付？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/cz_3.html">3、微信支付？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/cz_4.html">4、网站有哪些充值方式？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/cz_5.html">5、充值后多久可以到账？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/cz_6.html">6、充值未到账？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/cz_7.html">7、账户充值会收手续费吗?</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/cz_8.html">8、银行转账未及时到账？？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/cz_9.html">9、如何开通网上银行？</a></p></li>
                        </ul>
                    </div>
                    <div class="slide">
                        <ul>
                            <h4>兑奖提款</h4>
                            <li><p><a href="<%=basePath%>help/question/tk_1.html">1、中奖后怎么兑奖？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/tk_2.html">2、提款须知</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/tk_3.html">3、为什么我的提款不成功？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/tk_4.html">4、申请提款，网站是否有通知？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/tk_5.html">5、如何提款？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/tk_6.html">6、是否收取提款手续费？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/tk_7.html">7、提款金额有没有限制？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/tk_8.html">8、提款次数有没有限制？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/tk_9.html">9、提款不成功怎么办？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/tk_10.html">10、中奖查询</a></p></li>
                        </ul>
                    </div>
                    <ul class="no">
                        <h4>特色功能</h4>
                        <li><a href="<%=basePath%>help/rule/Extension.html">1、推广赚钱</a></li>
                    </ul>
                </div>
                <div class="slide">
                    <h5 id="flip2">常见问题</h5>
                    <div class="problem">
                        <ul>
                            <h4>新手指引</h4>
                            <li><p><a href="<%=basePath%>help/question/mima_3.html">忘记了登录密码怎么办？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/mima_4.html">忘记用户名怎么办？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/mima_5.html">登录时验证码输入是对的，为什么提示输入错误？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/mima_1.html">如何修改绑定的联系电话？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/mima_6.html">我从来没买过彩票，这些彩种都怎么玩？</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/mima_2.html">购彩的流程是什么样的？</a></p></li>
                            <%--<li><p><a href="<%=basePath%>help/rule/5.html#mi6">从哪里可以查看中奖？</a></p></li>--%>
                        </ul>
                        <ul class="no">
                            <h4>安全保障</h4>
                            <li><p><a href="<%=basePath%>help/question/aq_1.html">购彩支付和充值安全</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/aq_2.html">账户资金安全</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/aq_3.html">个人隐私安全</a></p></li>
                            <li><p><a href="<%=basePath%>help/question/aq_4.html">购彩优势</a></p></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="../common/bottomInfo.jsp"/>
<c:import url="../common/copyright.jsp"/>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/jsCommonLogin.jsp"/>
<c:import url="common/bottom.jsp" />
<c:import url="../common/bodyEnd.jsp"/>
<script>
    //    $(document).ready(function(){
    //        $("#flip").click(function(){
    //            $(".type_links").slideToggle("slow");
    //        });
    //    });

    //    $(document).ready(function(){
    //        $("#flip2").click(function(){
    //            $(".problem").slideToggle("slow");
    //        });
    //    });


</script>