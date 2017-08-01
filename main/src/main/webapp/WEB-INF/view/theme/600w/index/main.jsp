<%@ page import="project38.api.common.utils.JSONUtils" %>
<%@ page import="project38.api.result.WebNoticeResult" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("www.", "");
%>
<c:import url="../common/bodyStart.jsp"/>
<c:import url="../common/checkIsChildFrame.jsp"/>
<c:import url="top.jsp"/>
<div class="men_list">
    <div class="wid1">
        <div class="logo mt0">
            <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt=""></a>
        </div>
        <c:import url="../common/navList.jsp"/>
    </div>
</div>

<div class="main_layout wid1">
    <div class="left_layout">
        <h1>选择彩种</h1>
        <c:import url="leftMenu.jsp"/>
    </div>

    <div class="right_layotu">
        <div class="left_wrap">
            <div class="scroll_pic">
                <ul>
                    <c:forEach items="${carouseList.carouselList}" var="item">
                        <c:choose>
                            <c:when test="${empty item.url}">
                                <li><a href="javascript:void(0)"><img src="<%=basePath%>images/${item.imageId}"
                                                                      alt="${item.title}"></a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="${item.url}" target="_blank"><img
                                        src="<%=basePath%>images/${item.imageId}" alt="${item.title}"></a></li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </ul>
                <p>
                    <c:forEach items="${carouseList.carouselList}" var="item" varStatus="status">
                        <c:choose>
                            <c:when test="${status.index == 0}"><i class="acti">${status.index + 1}</i></c:when>
                            <c:otherwise><i>${status.index + 1}</i></c:otherwise>
                        </c:choose>
                    </c:forEach>
                </p>
            </div>
            <div class="Bettingbag">
                <div class="tabs_cg" >
                    <ul>
                        <li class="acti first"><i>重庆时时彩</i></li>
                        <li><i>香港六合彩</i></li>
                        <li><i>PK10</i></li>
                        <%--<li><i>双色球</i></li>--%>
                        <%--<li><i>大乐透</i></li>--%>
                        <li><i>新疆时时彩</i></li>
                        <li><i>天津时时彩</i></li>
                    </ul>
                </div>
                <div class="num_bett" id="ssc_id_1">
                    <p class="p1"><span class="sp0 number"></span><span class="currentTime leftTime"></span><span
                            class="sp1 jiangchi"></span><span><a
                            <%--href="<%=basePath%>ssc/index.html?module=gcdt/cqssc&caizhong=cqssc&navIndex=1"--%>
                            href="javascript:void(0);"
                            onclick="openGcdt('gcdt/cqssc')"
                            target="_blank">手动选号</a> | <a href="javascript:void(0)" onclick="xyxh(this,1)">幸运选号</a> | <a
                            href="<%=basePath%>ssc/zst/cqssc.html" target="_blank"
                            class="sp0">走势图</a></span></p>
                    <div class="box_n at hei1" id="xyxhContent_1">
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                    </div>
                    <div class="val_add at">
                        <div class="reduce">
                            <a onclick="xyxhMinute(1, 5)" class="fl" href="javascript:void(0)">-</a>
                            <input type="text" value="1" id="xyxhInput_1"
                                   onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')} checkValue(1, 5);"
                                   onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"/>
                            <a onclick="xyxhAdd(1, 5)" class="fr" href="javascript:void(0)">+</a>
                            <span id="xyxhMoney_1">共：5 元</span>
                        </div>
                        <p class="fr">
                            <a href="javascript:void(0)" onclick="xyxh(this,1)"><img src="${resPath}img/ico82.png"
                                                                                     alt="">换一注</a>
                            <a href="javascript:void(0)" class="a1" onclick="openXyxh(1)">立即投注</a>
                        </p>
                    </div>
                </div>
                <div class="num_bett" id="ssc_id_6">
                    <p class="p1"><span class="sp0 number"></span><span class="currentTime leftTime"></span><span
                            class="sp1 angchi"></span><span><a
                            <%--href="<%=basePath%>ssc/index.html?module=gcdt/lhc&caizhong=lhc&navIndex=0"--%>
                            href="javascript:void(0);"
                            onclick="openGcdt('gcdt/lhc')"
                            target="_blank">手动选号</a> | <a
                            href="javascript:void(0)" onclick="xyxh(this,6)">幸运选号</a> | <a
                            href="<%=basePath%>ssc/zst/lhc.html" target="_blank" class="sp0">走势图</a></span>
                    </p>
                    <div class="box_n at hei1" id="xyxhContent_6">
                        <span class="s0"></span>
                        <span class="s0"></span>

                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <p>
                            <var><em></em></var>
                            <var><em></em></var>
                            <var><em></em></var>
                            <var><em></em></var>
                            <var><em></em></var>
                            <var><em></em></var>
                            <var><em></em></var>
                        </p>
                    </div>
                    <div class="val_add at">
                        <div class="reduce">
                            <a onclick="xyxhMinute(6, 7)" class="fl" href="javascript:void(0)">-</a>
                            <input type="text" value="1" id="xyxhInput_6"
                                   onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')} checkValue(6, 7);"
                                   onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"/>
                            <a onclick="xyxhAdd(6, 7)" class="fr" href="javascript:void(0)">+</a>
                            <span id="xyxhMoney_6">共：<i>7</i> 元</span>
                        </div>
                        <p class="fr">
                            <a href="javascript:void(0)" onclick="xyxh(this,6)"><img src="${resPath}img/ico82.png"
                                                                                     alt="">换一注</a>
                            <a href="javascript:void(0)" class="a1" onclick="openXyxh(6)">立即投注</a>
                        </p>
                    </div>
                </div>
                <div class="num_bett" id="ssc_id_9">
                    <p class="p1"><span class="sp0 number"></span><span class="currentTime leftTime"></span><span
                            class="sp1 jiangchi"></span><span><a
                            <%--href="<%=basePath%>ssc/index.html?module=gcdt/lhc&caizhong=pk10&navIndex=1"--%>
                            href="javascript:void(0);"
                            onclick="openGcdt('gcdt/pk10')"
                            target="_blank">手动选号</a> | <a href="javascript:void(0)" onclick="xyxh(this,9)">幸运选号</a> | <a
                            href="<%=basePath%>ssc/zst/pk10.html" target="_blank" class="sp0">走势图</a></span>
                    </p>
                    <div class="box_n at hei1 pk10" id="xyxhContent_9">
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                    </div>
                    <div class="val_add at">
                        <div class="reduce">
                            <a onclick="xyxhMinute(9, 10)" class="fl" href="javascript:void(0)">-</a>
                            <input type="text" value="1" id="xyxhInput_9"
                                   onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')} checkValue(9, 10);"
                                   onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"/>
                            <a onclick="xyxhAdd(9, 10)" class="fr" href="javascript:void(0)">+</a>
                            <span id="xyxhMoney_9">共：<i>10</i> 元</span>
                        </div>
                        <p class="fr">
                            <a href="javascript:void(0)" onclick="xyxh(this,9)"><img src="${resPath}img/ico82.png"
                                                                                     alt="">换一注</a>
                            <a href="javascript:void(0)" class="a1" onclick="openXyxh(9)">立即投注</a>
                        </p>
                    </div>
                </div>
                <%--<div class="num_bett">--%>
                <%--<p class="p1"><span class="sp0">第2016292期</span> 截止：0天5小时6分0秒 <span class="sp1">当前奖池：11.6亿</span><span><a href="javascript:void(0)">手动选号</a> | <a  href="javascript:void(0)" onclick="xyxh(this)">幸运选号</a> | <a href="javascript:void(0)" class="sp0">走势图</a></span></p>--%>
                <%--<div class="box_n at">--%>
                <%--<span  class="s0">5</span>--%>
                <%--<span  class="s1">6</span>--%>
                <%--<span  class="s0">11</span>--%>
                <%--<span  class="s2">23</span>--%>
                <%--<span  class="s0">29</span>--%>
                <%--<span  class="s1">33</span>--%>
                <%--</div>--%>
                <%--<div class="val_add at">--%>
                <%--<div class="reduce">--%>
                <%--<a class="fl">-</a>--%>
                <%--<input type="text" value="1">--%>
                <%--<a class="fr">+</a>--%>
                <%--<span>共：<i>200</i> 元</span>--%>
                <%--</div>--%>
                <%--<p class="fr">--%>
                <%--<a><img src="${resPath}img/ico82.png" alt="">换一注</a>--%>
                <%--<a href="javascript:void(0)" onclick="touzhutishi()" class="a1">立即投注</a>--%>
                <%--</p>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<div class="num_bett">--%>
                <%--<p class="p1"><span class="sp0">第2016292期</span> 截止：0天5小时6分0秒 <span class="sp1">当前奖池：11.6亿</span><span><a href="javascript:void(0)">手动选号</a> | <a  href="javascript:void(0)" onclick="xyxh(this)">幸运选号</a> | <a href="javascript:void(0)" class="sp0">走势图</a></span></p>--%>
                <%--<div class="box_n at">--%>
                <%--<span class="s0">5</span>--%>
                <%--<span class="s2">6</span>--%>
                <%--<span class="s0">11</span>--%>
                <%--<span class="s1">23</span>--%>
                <%--<span class="s0">29</span>--%>
                <%--<span class="s1">33</span>--%>
                <%--</div>--%>
                <%--<div class="val_add at">--%>
                <%--<div class="reduce">--%>
                <%--<a class="fl">-</a>--%>
                <%--<input type="text" value="1">--%>
                <%--<a class="fr">+</a>--%>
                <%--<span>共：<i>200</i> 元</span>--%>
                <%--</div>--%>
                <%--<p class="fr">--%>
                <%--<a><img src="${resPath}img/ico82.png" alt="">换一注</a>--%>
                <%--<a href="javascript:void(0)" onclick="touzhutishi()" class="a1">立即投注</a>--%>
                <%--</p>--%>
                <%--</div>--%>
                <%--</div>--%>
                <div class="num_bett" id="ssc_id_3">
                    <p class="p1"><span class="sp0 number"></span><span class="currentTime leftTime"></span><span
                            class="sp1 jiangchi"></span><span><a
                            <%--href="<%=basePath%>ssc/index.html?module=gcdt/cqssc&caizhong=xjssc&navIndex=1"--%>
                            href="javascript:void(0);"
                            onclick="openGcdt('gcdt/xjssc')"
                            target="_blank">手动选号</a> | <a href="javascript:void(0)" onclick="xyxh(this,3)">幸运选号</a> | <a
                            href="<%=basePath%>ssc/zst/xjssc.html" target="_blank"
                            class="sp0">走势图</a></span></p>
                    <div class="box_n at hei1" id="xyxhContent_3">
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                    </div>
                    <div class="val_add at">
                        <div class="reduce">
                            <a onclick="xyxhMinute(3, 5)" class="fl" href="javascript:void(0)">-</a>
                            <input type="text" value="1" id="xyxhInput_3"
                                   onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')} checkValue(3, 5);"
                                   onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"/>
                            <a onclick="xyxhAdd(3, 5)" class="fr" href="javascript:void(0)">+</a>
                            <span id="xyxhMoney_3">共：<i>5</i> 元</span>
                        </div>
                        <p class="fr">
                            <a href="javascript:void(0)" onclick="xyxh(this,3)"><img src="${resPath}img/ico82.png"
                                                                                     alt="">换一注</a>
                            <a href="javascript:void(0)" class="a1" onclick="openXyxh(3)">立即投注</a>
                        </p>
                    </div>
                </div>
                <div class="num_bett" id="ssc_id_2">
                    <p class="p1"><span class="sp0 number"></span><span class="currentTime leftTime"></span><span
                            class="sp1 jiangchi"></span><span><a
                            <%--href="<%=basePath%>ssc/index.html?module=gcdt/cqssc&caizhong=tjssc&navIndex=1"--%>
                            href="javascript:void(0);"
                            onclick="openGcdt('gcdt/tjssc')"
                            target="_blank">手动选号</a> | <a href="javascript:void(0)" onclick="xyxh(this,2)">幸运选号</a> | <a
                            href="<%=basePath%>ssc/zst/tjssc.html" target="_blank" class="sp0">走势图</a></span>
                    </p>
                    <div class="box_n at hei1" id="xyxhContent_2">
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                        <span class="s0"></span>
                    </div>
                    <div class="val_add at">
                        <div class="reduce">
                            <a onclick="xyxhMinute(2, 5)" class="fl" href="javascript:void(0)">-</a>
                            <input type="text" value="1" id="xyxhInput_2"
                                   onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')} checkValue(2, 5);"
                                   onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"/>
                            <a onclick="xyxhAdd(2, 5)" class="fr" href="javascript:void(0)">+</a>
                            <span id="xyxhMoney_2">共：<i>5</i> 元</span>
                        </div>
                        <p class="fr">
                            <a href="javascript:void(0)" onclick="xyxh(this,2)"><img src="${resPath}img/ico82.png"
                                                                                     alt="">换一注</a>
                            <a href="javascript:void(0)" class="a1" onclick="openXyxh(2)">立即投注</a>
                        </p>
                    </div>
                </div>
            </div><!--Bettingbag-->
        </div>
        <div class="right_wrap" style="overflow:hidden;">
            <div class="login">
                <h2>
                    <p><img src="${resPath}img/ico84.png" alt="">登录</p>
                </h2>

                <c:choose>
                    <c:when test="${not empty userSession}">
                        <ul class="state">
                            <li>尊敬的：<i style="cursor: pointer;" onclick="openHyzx()">${userSession.account}</i>
                                <script>
                                    var hour = (new Date()).getHours();
                                    if (hour < 6) {
                                        hour = '凌晨好！';
                                    } else if (hour < 12) {
                                        hour = '上午好！';
                                    } else if (hour < 14) {
                                        hour = '中午好！';
                                    } else if (hour < 18) {
                                        hour = '下午好！';
                                    } else if (hour < 24) {
                                        hour = '晚上好！'
                                    }
                                    document.write(hour);
                                </script>
                            </li>
                            <li>
                                <a href="javascript:void(0)" onclick="openHyzx('member/zhcz.html?module=yhzz')">充值</a>|
                                <a href="javascript:void(0)" onclick="openHyzx('member/withdraw.html')">提款</a>|
                                <a onclick="openHyzx('member/lsjl.html?module=ckjl')" href="javascript:void(0)">历史记录</a>|
                                <a onclick="openHyzx()" href="javascript:void(0)">会员中心</a>
                            </li>
                            <li>余额：<i class="i0">${userSession.balance}</i> 元</li>
                            <li>
                                <button onclick="sigout()" type="button">退出</button>
                            </li>
                        </ul>
                    </c:when>
                    <c:otherwise>
                        <form onsubmit="login1();return false;">
                            <ul>
                                <li><input type="text" placeholder="会员名" id="loginAccount1"></li>
                                <li><input type="password" placeholder="密码" id="loginPassword1"></li>
                                <li><input type="text" style="vertical-align:middle"
                                           placeholder="验证码"
                                           id="loginYzm1" class="short"><img id="yzmImg1" onclick="refreshYzm(this)"
                                                                             style="vertical-align:middle"
                                                                             src="<%=basePath%>code/yzm?imgWidth=50&imgHeight=30&imgFontHeight=26&imgCodeY=23&imgCodeX=2"
                                                                             alt=""><a
                                        href="${kefuUrl}" target="_blank">忘记密码?</a></li>
                                <li>
                                    <button type="submit">登录</button>
                                    <a href="<%=basePath%>register.html" class="a0">立即注册</a><a
                                        href="javascript:void(0)" onclick="shiwan()" class="a0">免费试玩</a></li>
                            </ul>
                        </form>
                    </c:otherwise>
                </c:choose>
            </div>
            <div class="down_file">
                <p><i class="iphone"></i>手机客户端下载<a href="<%=mHostName%>" target="_blank">more&gt;&gt;</a></p>
            </div>
            <div class="code_layout">
                <div class="code_wrap">
                    <img src="${resPath}img/ico89.png" alt="" width="102" height="102">
                    <div class="text">
                        <a href="<%=mHostName%>" target="_blank"><img src="${resPath}img/ico87.png" alt="">iOS下载</a>
                        <a href="<%=mHostName%>" target="_blank"><img src="${resPath}img/ico88.png" alt="">Android下载</a>
                    </div>
                </div>
                <div class="Notice">
                    <b>公告</b>
                    <div style="height:50px;overflow:hidden;">
                        <div id="gonggao_marquee" style="width: 100%;height:100%;background:#fff"></div>
                    </div>
                </div>

            </div>

        </div>
        <div class="chart">
            <div class="title">
                <h2>走势图</h2>
                <a href="<%=basePath%>ssc/index.html?module=zstIndex" target="_blank">更多&gt;&gt;</a>
            </div>
            <div class="pic_wp">
                <div class="pic_box">
                    <img src="${resPath}img/img11.jpg" alt="">
                </div>
                <div class="links">
                    <p>
                        <span>高频彩</span>
                        <a href="<%=basePath%>ssc/zst/cqssc.html" target="_blank">重庆时时彩</a>
                        <a href="<%=basePath%>ssc/zst/tjssc.html" target="_blank">天津时时彩</a>
                        <a href="<%=basePath%>ssc/zst/xjssc.html" target="_blank">新疆时时彩</a>
                        <a href="<%=basePath%>ssc/zst/ffssc.html" target="_blank">分分时时彩</a>
                        <a href="<%=basePath%>ssc/zst/efssc.html" target="_blank">两分时时彩</a>
                        <a href="<%=basePath%>ssc/zst/sfssc.html" target="_blank">三分时时彩</a>
                        <a href="<%=basePath%>ssc/zst/wfssc.html" target="_blank">五分时时彩</a>
                        <a href="<%=basePath%>ssc/zst/pk10.html" target="_blank">北京PK10</a>
                        <a href="<%=basePath%>ssc/zst/jspk10.htm" target="_blank">极速PK10</a>
                        <a href="<%=basePath%>ssc/zst/xyft.html" target="_blank">幸运飞艇</a>
                        <a href="<%=basePath%>ssc/zst/wfssc.html" target="_blank">江苏快3</a>
                        <a href="<%=basePath%>ssc/zst/hbk3.html" target="_blank">湖北快3</a>
                        <a href="<%=basePath%>ssc/zst/ahk3.html" target="_blank">安徽快3</a>
                        <a href="<%=basePath%>ssc/zst/jlk3.html" target="_blank">吉林快3</a>
                        <a href="<%=basePath%>ssc/zst/xync.html" target="_blank">幸运农场</a>
                        <a href="<%=basePath%>ssc/zst/klsf.html" target="_blank">快乐十分</a>
                        <a href="<%=basePath%>ssc/zst/kl8.html" target="_blank">北京快乐8</a>
                        <a href="<%=basePath%>ssc/zst/xy28.html" target="_blank">幸运28</a>
                    </p>
                    <p>
                        <span>低频彩</span>
                        <a href="<%=basePath%>ssc/zst/lhc.html" target="_blank">香港六合彩</a>
                        <a href="<%=basePath%>ssc/zst/fc3d.html" target="_blank">福彩3D</a>
                        <a href="<%=basePath%>ssc/zst/pl3.html" target="_blank">体彩排列3</a>
                    </p>
                </div>

            </div>
        </div>


    </div>
</div>


<c:import url="../common/bottomInfo.jsp"/>
<c:import url="../common/copyright.jsp"/>

<c:import url="../common/commonJs.jsp"/>

<div id="gonggao_container"></div>
<script>
    $(function () {
        getWebPopUpNotice();

        xyxh(null, 6);
        xyxh(null, 1);
        xyxh(null, 9);
        xyxh(null, 2);
        xyxh(null, 3);
    });

    function showGonggao(id) {
        $("#gonggao_" + id).show();
    }

    function touzhutishi() {
        alert("游戏暂未上线，敬请期待！");
    }

    <%--var popupNotice = <%=JSONUtils.toJSONStr(((WebNoticeResult)request.getAttribute("webPopUpNoticeResult")).getWebNoticeList())%>;--%>
    <%--function openPopUpNotice() {--%>
    <%--showPopUp(popupNotice);--%>
    <%--}--%>

    function goZst(url) {
        showLoading();
        window.location.href = url;
    }

    $(function () {

//        numadd(".main_layout .right_layotu .left_wrap .Bettingbag .num_bett .val_add .reduce a",".main_layout .right_layotu .left_wrap .Bettingbag .num_bett .val_add .reduce a.fl",".main_layout .right_layotu .left_wrap .Bettingbag .num_bett .val_add .reduce a.fr")
        tabs_cg(".Newest .tabs_cg ul li:lt(11)", ".Newest .layout .Analysis", "hover", "acti", "", "");//下面
        tabs_cg(".main_layout .right_layotu .left_wrap .tabs_cg ul li", ".main_layout .right_layotu .left_wrap .Bettingbag .num_bett", "hover", "acti", "", "");
        two_scroll(".main_layout .right_layotu .left_wrap .scroll_pic ul li", "", "", ".main_layout .right_layotu .left_wrap .scroll_pic p i", "", 189);

        $(".Newest .Analysis .box3 .timer_wrap").each(function (index, element) {
            $(this).attr("index", "ti" + index);
            $(this).addClass("ti" + index);
        });

//        setInterval(function(){
//            $(".Newest .Analysis .box3 .timer_wrap").each(function(index, element) {
//                //console.log();
//                abc('".Newest .Analysis .box3 ".'+$(this).attr("index")+'"');
//            });
//
//        },1000);

        function abc(mainDiv) {
            //console.log(mainDiv);

            var i = $(mainDiv + " ol.m span.sp2").text();
            i--;
            if (i == -1) {
                i = 9;
                $(mainDiv + " ol.m span.sp2").text(i);

                var te = $(mainDiv + " ol.m span.sp1").text() - 1
                if (te < 0) {
                    if ($(mainDiv + " ol.f span.sp2").text() == 0) {
                        $(mainDiv + " ol.f span.sp2").text(9);

                        if ($(mainDiv + " ol.f span.sp1").text() == 0) { //分

                            $(mainDiv + " ol.f span.sp1").text(6);

                            if ($(mainDiv + " ol.s span.sp2").text() == 0) {
                                $(mainDiv + " ol.s span.sp2").text(9);
                                $(mainDiv + " ol.s span.sp1").text($(mainDiv + " ol.s span.sp1").text() - 1);

                            } else {
                                $(mainDiv + " ol.s span.sp2").text($(mainDiv + " ol.s span.sp2").text() - 1);
                            }
                        }
                        $(mainDiv + " ol.f span.sp1").text($(mainDiv + " ol.f span.sp1").text() - 1);

                    } else {

                        $(mainDiv + " ol.f span.sp2").text($(mainDiv + " ol.f span.sp2").text() - 1)//分钟
                    }
                    te = 5;
                }
                $(mainDiv + " ol.m span.sp1").text(te)
            }

            $(mainDiv + " ol.m span.sp2").text(i)
        }


    });


    function showLoading() {
        layer.load(2, {
            shade: [0.1, '#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
    function login1() {
        var loginAccount = $.trim($("#loginAccount1").val());
        var loginPassword = $.trim($("#loginPassword1").val());
        var yzm = $.trim($("#loginYzm1").val());

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
            beforeSend: function () {
                layer.load(2, {
                    shade: [0.1, '#000'] //0.1透明度的白色背景
                });
                $.cookie("uid", '', {path: "/", expires: -1});
                $.cookie("token", '', {path: "/", expires: -1});
            },
            success: function (json) {
                setTimeout(function () {
                    layer.closeAll();
                    if (json.result == 1) {
                        $.cookie("uid", json.userId, {path: "/"});
                        $.cookie("token", json.token, {path: "/"});

                        if (json.webNoticeList.length > 0) {
                            var hh = "\n";
                            if (document.all) {
                                hh = "\r\n";
                            }
                            var str = "尊敬的会员您好！" + hh + hh;
                            $.each(json.webNoticeList, function (index, value) {
                                str += value.title.replace(/<[^>]+>/g, "") + hh;
                                str += value.content.replace(/<[^>]+>/g, "") + hh + hh;
                            });
                            //console.log(str);
                            alert(str);
                        }
                        location.reload();
                    } else {
                        refreshYzm(document.getElementById('yzmImg1'));
                        alert("登录失败：" + json.description);
                    }
                }, 1000)
            }
        });
    }
</script>
<script>
    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);

        src = "<%=basePath%>code/yzm?timestamp=" + (new Date()).getTime();
        $.each(params, function (index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        $(obj).attr("src", src);
    }

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

    function xytz(type) {
        if (type == 6) {
            var arr = [];
            for (var i = 0; i < 7; ++i) {
                arr.push(Tools.parseInt($("#xyxhContent_6 span").eq(i).data("num")));
            }

        }
    }

    function checkColor(num) {
        var colorFlag;
        var status = false;
        var blueflag = [3, 4, 9, 10, 14, 15, 20, 25, 26, 31, 36, 37, 41, 42, 47, 48];
        var redflag = [1, 2, 7, 8, 12, 13, 18, 19, 23, 24, 29, 30, 34, 35, 40, 45, 46];

        for (var j = 0; j < blueflag.length; j++) {
            if (num == blueflag[j]) {
                colorFlag = 'blue';
                status = true;//标识已找到颜色
            }
        }

        if (status == false) {
            for (var k = 0; j < redflag.length; k++) {
                if (num == redflag[k]) {
                    colorFlag = 'red';
                    status = true;//标识已找到颜色
                }
            }

            if (status == false) {
                colorFlag = 'green';
            }
        }
        return colorFlag;
    }
    $(function () {
//        getSscOpenTime();
    });

    function layerOpen(title, url, width, height) {
        layer.open({
            type: 2,
            title: title,
            shadeClose: true,
            shade: false,
            maxmin: true, //开启最大化最小化按钮
//            area: ['893px', '600px'],
            area: [width + 'px', height + 'px'],
            content: url
        });
    }


    function openXyxh(type) {
        var caizhong = '';
        var nums = '';
        var money = '';
        var navIndex = '';

        if (type == 6) {
            caizhong = 'lhc';
            navIndex = 0;
            numsArr = [];
            for (var i = 0; i < 7; ++i) {
                var v = $("#xyxhContent_6 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);  //join() 方法用于把数组中的所有元素转换一个字符串。
            }
            nums = numsArr.join(",");
            money = $("#xyxhInput_6").val();
        } else if (type == 1) {
            caizhong = 'cqssc';
            navIndex = 1;
            var numsArr = [];
            for (var i = 0; i < 5; ++i) {
                var v = $("#xyxhContent_1 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);
            }
            nums = numsArr.join(",");
            money = $("#xyxhInput_1").val();
        } else if (type == 2) {
            caizhong = 'tjssc';
            navIndex = 1;
            var numsArr = [];
            for (var i = 0; i < 5; ++i) {
                var v = $("#xyxhContent_2 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);
            }
            nums = numsArr.join(",");
            money = $("#xyxhInput_2").val();
        } else if (type == 3) {
            caizhong = 'xjssc';
            navIndex = 1;
            var numsArr = [];
            for (var i = 0; i < 5; ++i) {
                var v = $("#xyxhContent_3 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);
            }
            nums = numsArr.join(",");
            money = $("#xyxhInput_3").val();
        } else if (type == 9) {
            caizhong = 'pk10';
            navIndex = 1;
            var numsArr = [];
            for (var i = 0; i < 10; ++i) {
                var v = $("#xyxhContent_9 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);
            }
            nums = numsArr.join(",");
            money = $("#xyxhInput_9").val();
        }

        if (numsArr.length == 0) {
            return;
        }
        openXyxhGcdt(caizhong, nums, money, navIndex);
    }

    function openXyxhGcdt(caizhong, nums, money, navIndex) {
        windowOpenBlank('<%=basePath%>ssc/index.html?caizhong=' + caizhong + '&nums=' + nums + '&money=' + money + '&navIndex=' + navIndex);
        //goSubUrl(CONFIG.BASEURL + "ssc/gcdt/" + caizhong + ".html?caizhong=" + caizhong + "&nums=" + nums + "&money=" + money + "&navIndex=" + navIndex);
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

//    function getCaiZhongEnable(playGroupId) {
//        var enable = '';
//        ajaxRequest({
//            url: CONFIG.BASEURL + "ssc/getSscOpenTime2.json",
//            data: {
//                playGroupId: playGroupId
//            },
//            success: function (json) {
//                if (json.result != 1) {
//                    return;
//                }
//
//                $.each(json.sscTimeList, function (index, value) {
//                    var obj = $("#ssc_" + value.playGroupId);
//
//                    if ($(obj).length == 0) {
//                        return;
//                    }
//
//                    enable = $(obj).data("enable", value.enable);
//
//                });
//            }
//        });
//        return enable;
//    }

//    function getPlayGroupId(param_url) {
//        var idPl = 0;
//        if (param_url == 'jlk3') {
//            idPl = 21;
//        }
//        return idPl;
//    }


    function openZstIndex(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        <%--windowOpen('<%=basePath%>ssc/index.html?module=' + module, '走势图首页', 1285, 800);--%>
        windowOpenBlank('<%=basePath%>ssc/index.html?module=' + module);
    }

    function openZst(zst, type) {
        <%--windowOpen('<%=basePath%>ssc/index.html?zst=' + zst + '&type=' + type, '购彩大厅走势图', 1285, 800);--%>
        windowOpenBlank('<%=basePath%>ssc/index.html?zst=' + zst + '&type=' + type);
    }

    function openHyzx(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        if (typeof $.cookie("uid") == 'undefined' || typeof $.cookie("token") == 'undefined') {
            alert("请先登录");
            if ($("#loginAccount1").length > 0) {
                $("#loginAccount1").focus();
                return;
            }
            window.location.href = "<%=basePath%>main.html";
            return;
        }
        var subUrl = "";
        if (module) {
            subUrl = "#" + CONFIG.BASEURL + module;
        }
        windowOpen(CONFIG.BASEURL + 'member/index.html' + subUrl, '会员中心', 1250, 834);
    }

    var content_G = '';
    function getWebPopUpNotice() {
        ajaxRequest({
            url: "<%=basePath%>member/ajaxGetWebPopUpNotice.json",
            beforeSend: function () {
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }

                <c:forEach items="${webPopUpNoticeResult.webNoticeList}" var="item" varStatus="status">

                </c:forEach>

                var str = '';
                var str2 = ''
                if (json.webNoticeList.length != 0) {
                    $.each(json.webNoticeList, function (index, value) {
                        var len = value.content.replace(/<p>/g, "").replace(/<\/p>/g, "").length;
                        if (len > 13) {
                            content_G = value.content.replace(/<p>/g, "").replace(/<\/p>/g, "").substr(0, 13) + "...";
                        } else {
                            content_G = value.content.replace(/<p>/g, "").replace(/<\/p>/g, "");
                        }

                        str += '<p onclick="showGonggao(' + index + ')" style="white-space:nowrap; overflow:hidden; text-overflow:ellipsis;height:25px;margin:0;">' + value.title + "&nbsp;:&nbsp;" + content_G + '</p></br>';

                        str2 += '<div class="alert hide" id="gonggao_' + index + '">';
                        str2 += '<div class="alert_col">';
                        str2 += '<h5><span>公告</span><i>×</i></h5>';
                        str2 += '<h2>' + value.title + '</h2>';
                        str2 += '<div>' + value.content + '</div>';
                        str2 += '<h4>${webName}</h4>';
                        str2 += '<h4 style="margin-top:15px">' + Tools.formatDate(value.createTime) + '</h4>';
                        str2 += '</div>';
                        str2 += '</div>';
                    });
                } else {
                    str = '暂无公告';
                }
                $("#gonggao_marquee").html(str);
                $("#gonggao_marquee p").css({margin: "-10px auto"});
                $("#gonggao_container").html(str2);

                $('#gonggao_marquee').liMarquee({
                    direction: 'up',
                    scrollamount: 10
                });
                $('.alert_col h5 i').click(function () {
                    $('.alert').hide();
                });
            }
        });
    }

    function xyxhAdd(id, size) {
        var num = $("#xyxhInput_" + id).val();
        if (isNaN(num) || num <= 0) {
            num = 1;
        } else {
            num++;
        }
        $("#xyxhInput_" + id).val(num);
        $("#xyxhMoney_" + id).html('共：<i>' + mul(num, size) + '</i> 元');
    }
    function checkValue(id, size) {
        var num = $("#xyxhInput_" + id).val();
        if (isNaN(num) || num <= 1) {
            num = 1;
            $("#xyxhInput_" + id).val(num);
        }
        $("#xyxhMoney_" + id).html('共：<i>' + mul(num, size) + '</i> 元');
    }
    function xyxhMinute(id, size) {
        var num = $("#xyxhInput_" + id).val();
        if (isNaN(num) || num <= 1) {
            num = 1;
        } else {
            num--;
        }
        $("#xyxhInput_" + id).val(num);
        $("#xyxhMoney_" + id).html('共：<i>' + mul(num, size) + '</i> 元');
    }


    function xyxh(obj, type) {
        if (typeof type == 'undefined') {
            return;
        }

        var index_6 = null;
        var index_1 = null;
        var index_2 = null;
        var index_3 = null;
        var index_9 = null;
        if (type == 6) {
            $("#xyxhContent_6 span").each(function () {
                $(this).data("num", '');
            });

            index_6 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 49 + 1);
                var num2 = Math.floor(Math.random() * 49 + 1);
                var num3 = Math.floor(Math.random() * 49 + 1);
                var num4 = Math.floor(Math.random() * 49 + 1);
                var num5 = Math.floor(Math.random() * 49 + 1);
                var num6 = Math.floor(Math.random() * 49 + 1);
                var num7 = Math.floor(Math.random() * 49 + 1);

                var bose1 = getBose(num1);
                var bose2 = getBose(num2);
                var bose3 = getBose(num3);
                var bose4 = getBose(num4);
                var bose5 = getBose(num5);
                var bose6 = getBose(num6);
                var bose7 = getBose(num7);

                bose1 = bose1 == 0 ? 's0' : (bose1 == 1 ? 's1' : 's2');
                bose2 = bose2 == 0 ? 's0' : (bose2 == 1 ? 's1' : 's2');
                bose3 = bose3 == 0 ? 's0' : (bose3 == 1 ? 's1' : 's2');
                bose4 = bose4 == 0 ? 's0' : (bose4 == 1 ? 's1' : 's2');
                bose5 = bose5 == 0 ? 's0' : (bose5 == 1 ? 's1' : 's2');
                bose6 = bose6 == 0 ? 's0' : (bose6 == 1 ? 's1' : 's2');
                bose7 = bose7 == 0 ? 's0' : (bose7 == 1 ? 's1' : 's2');

                $("#xyxhContent_6 span").eq(0).attr("class", bose1).html(num1);
                $("#xyxhContent_6 span").eq(1).attr("class", bose2).html(num2);
                $("#xyxhContent_6 span").eq(2).attr("class", bose3).html(num3);
                $("#xyxhContent_6 span").eq(3).attr("class", bose4).html(num4);
                $("#xyxhContent_6 span").eq(4).attr("class", bose5).html(num5);
                $("#xyxhContent_6 span").eq(5).attr("class", bose6).html(num6);
                $("#xyxhContent_6 span").eq(6).attr("class", bose7).html(num7);

                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(1).html(getSxName(num2));
                $("#xyxhContent_6 var em").eq(2).html(getSxName(num3));
                $("#xyxhContent_6 var em").eq(3).html(getSxName(num4));
                $("#xyxhContent_6 var em").eq(4).html(getSxName(num5));
                $("#xyxhContent_6 var em").eq(5).html(getSxName(num6));
                $("#xyxhContent_6 var em").eq(6).html(getSxName(num7));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
            }, 50);

            setTimeout(function () {
                var arr = [];
                while (arr.length != 7) {
                    var randNum = Math.floor(Math.random() * 49 + 1);

                    var hasExist = false;
                    for (var j = 0; j < arr.length; ++j) {
                        if (arr[j] == randNum) {
                            hasExist = true;
                            break;
                        }
                    }
                    if (!hasExist) {
                        arr.push(randNum);
                    }
                }

                var num1 = arr[0];
                var num2 = arr[1];
                var num3 = arr[2];
                var num4 = arr[3];
                var num5 = arr[4];
                var num6 = arr[5];
                var num7 = arr[6];

                var bose1 = getBose(num1);
                var bose2 = getBose(num2);
                var bose3 = getBose(num3);
                var bose4 = getBose(num4);
                var bose5 = getBose(num5);
                var bose6 = getBose(num6);
                var bose7 = getBose(num7);

                bose1 = bose1 == 0 ? 's0' : (bose1 == 1 ? 's1' : 's2');
                bose2 = bose2 == 0 ? 's0' : (bose2 == 1 ? 's1' : 's2');
                bose3 = bose3 == 0 ? 's0' : (bose3 == 1 ? 's1' : 's2');
                bose4 = bose4 == 0 ? 's0' : (bose4 == 1 ? 's1' : 's2');
                bose5 = bose5 == 0 ? 's0' : (bose5 == 1 ? 's1' : 's2');
                bose6 = bose6 == 0 ? 's0' : (bose6 == 1 ? 's1' : 's2');
                bose7 = bose7 == 0 ? 's0' : (bose7 == 1 ? 's1' : 's2');

                clearInterval(index_6);
                $("#xyxhContent_6 span").eq(0).attr("class", bose1).data("num", "tm_b-" + num1).html(num1);
                $("#xyxhContent_6 span").eq(1).attr("class", bose2).data("num", "tm_b-" + num2).html(num2);
                $("#xyxhContent_6 span").eq(2).attr("class", bose3).data("num", "tm_b-" + num3).html(num3);
                $("#xyxhContent_6 span").eq(3).attr("class", bose4).data("num", "tm_b-" + num4).html(num4);
                $("#xyxhContent_6 span").eq(4).attr("class", bose5).data("num", "tm_b-" + num5).html(num5);
                $("#xyxhContent_6 span").eq(5).attr("class", bose6).data("num", "tm_b-" + num6).html(num6);
                $("#xyxhContent_6 span").eq(6).attr("class", bose7).data("num", "tm_b-" + num7).html(num7);

                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(1).html(getSxName(num2));
                $("#xyxhContent_6 var em").eq(2).html(getSxName(num3));
                $("#xyxhContent_6 var em").eq(3).html(getSxName(num4));
                $("#xyxhContent_6 var em").eq(4).html(getSxName(num5));
                $("#xyxhContent_6 var em").eq(5).html(getSxName(num6));
                $("#xyxhContent_6 var em").eq(6).html(getSxName(num7));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
            }, 2000);
        } else if (type == 1) {
            $("#xyxhContent_1 span").each(function () {
                $(this).data("num", '');
            });

            index_1 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                $("#xyxhContent_1 span").eq(0).html(num1);
                $("#xyxhContent_1 span").eq(1).html(num2);
                $("#xyxhContent_1 span").eq(2).html(num3);
                $("#xyxhContent_1 span").eq(3).html(num4);
                $("#xyxhContent_1 span").eq(4).html(num5);
            }, 50);

            setTimeout(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                clearInterval(index_1);
                $("#xyxhContent_1 span").eq(0).data("num", "wan-" + num1).html(num1);
                $("#xyxhContent_1 span").eq(1).data("num", "qian-" + num2).html(num2);
                $("#xyxhContent_1 span").eq(2).data("num", "bai-" + num3).html(num3);
                $("#xyxhContent_1 span").eq(3).data("num", "shi-" + num4).html(num4);
                $("#xyxhContent_1 span").eq(4).data("num", "ge-" + num5).html(num5);
            }, 2000);
        } else if (type == 2) {
            $("#xyxhContent_2 span").each(function () {
                $(this).data("num", '');
            });

            index_2 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                $("#xyxhContent_2 span").eq(0).html(num1);
                $("#xyxhContent_2 span").eq(1).html(num2);
                $("#xyxhContent_2 span").eq(2).html(num3);
                $("#xyxhContent_2 span").eq(3).html(num4);
                $("#xyxhContent_2 span").eq(4).html(num5);
            }, 50);

            setTimeout(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                clearInterval(index_2);
                $("#xyxhContent_2 span").eq(0).data("num", "wan-" + num1).html(num1);
                $("#xyxhContent_2 span").eq(1).data("num", "qian-" + num2).html(num2);
                $("#xyxhContent_2 span").eq(2).data("num", "bai-" + num3).html(num3);
                $("#xyxhContent_2 span").eq(3).data("num", "shi-" + num4).html(num4);
                $("#xyxhContent_2 span").eq(4).data("num", "ge-" + num5).html(num5);
            }, 2000);
        } else if (type == 3) {
            $("#xyxhContent_3 span").each(function () {
                $(this).data("num", '');
            });

            index_3 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                $("#xyxhContent_3 span").eq(0).html(num1);
                $("#xyxhContent_3 span").eq(1).html(num2);
                $("#xyxhContent_3 span").eq(2).html(num3);
                $("#xyxhContent_3 span").eq(3).html(num4);
                $("#xyxhContent_3 span").eq(4).html(num5);
            }, 50);

            setTimeout(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                clearInterval(index_3);
                $("#xyxhContent_3 span").eq(0).data("num", "wan-" + num1).html(num1);
                $("#xyxhContent_3 span").eq(1).data("num", "qian-" + num2).html(num2);
                $("#xyxhContent_3 span").eq(2).data("num", "bai-" + num3).html(num3);
                $("#xyxhContent_3 span").eq(3).data("num", "shi-" + num4).html(num4);
                $("#xyxhContent_3 span").eq(4).data("num", "ge-" + num5).html(num5);
            }, 2000);
        } else if (type == 9) {
            $("#xyxhContent_9 span").each(function () {
                $(this).data("num", '');
            });

            index_9 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 10 + 1);
                var num2 = Math.floor(Math.random() * 10 + 1);
                var num3 = Math.floor(Math.random() * 10 + 1);
                var num4 = Math.floor(Math.random() * 10 + 1);
                var num5 = Math.floor(Math.random() * 10 + 1);
                var num6 = Math.floor(Math.random() * 10 + 1);
                var num7 = Math.floor(Math.random() * 10 + 1);
                var num8 = Math.floor(Math.random() * 10 + 1);
                var num9 = Math.floor(Math.random() * 10 + 1);
                var num10 = Math.floor(Math.random() * 10 + 1);

                $("#xyxhContent_9 span").eq(0).attr("class", 'fang bg-' + num1).html(num1);
                $("#xyxhContent_9 span").eq(1).attr("class", 'fang bg-' + num2).html(num2);
                $("#xyxhContent_9 span").eq(2).attr("class", 'fang bg-' + num3).html(num3);
                $("#xyxhContent_9 span").eq(3).attr("class", 'fang bg-' + num4).html(num4);
                $("#xyxhContent_9 span").eq(4).attr("class", 'fang bg-' + num5).html(num5);
                $("#xyxhContent_9 span").eq(5).attr("class", 'fang bg-' + num6).html(num6);
                $("#xyxhContent_9 span").eq(6).attr("class", 'fang bg-' + num7).html(num7);
                $("#xyxhContent_9 span").eq(7).attr("class", 'fang bg-' + num8).html(num8);
                $("#xyxhContent_9 span").eq(8).attr("class", 'fang bg-' + num9).html(num9);
                $("#xyxhContent_9 span").eq(9).attr("class", 'fang bg-' + num10).html(num10);
            }, 50);

            setTimeout(function () {
                var num1 = Math.floor(Math.random() * 10 + 1);
                var num2 = Math.floor(Math.random() * 10 + 1);
                var num3 = Math.floor(Math.random() * 10 + 1);
                var num4 = Math.floor(Math.random() * 10 + 1);
                var num5 = Math.floor(Math.random() * 10 + 1);
                var num6 = Math.floor(Math.random() * 10 + 1);
                var num7 = Math.floor(Math.random() * 10 + 1);
                var num8 = Math.floor(Math.random() * 10 + 1);
                var num9 = Math.floor(Math.random() * 10 + 1);
                var num10 = Math.floor(Math.random() * 10 + 1);

                clearInterval(index_9);
                $("#xyxhContent_9 span").eq(0).attr("class", 'fang bg-' + num1).data('num', 'gj-' + num1).html(num1);
                $("#xyxhContent_9 span").eq(1).attr("class", 'fang bg-' + num2).data('num', 'yj-' + num2).html(num2);
                $("#xyxhContent_9 span").eq(2).attr("class", 'fang bg-' + num3).data('num', 'jj-' + num3).html(num3);
                $("#xyxhContent_9 span").eq(3).attr("class", 'fang bg-' + num4).data('num', 'q4-' + num4).html(num4);
                $("#xyxhContent_9 span").eq(4).attr("class", 'fang bg-' + num5).data('num', 'q5-' + num5).html(num5);
                $("#xyxhContent_9 span").eq(5).attr("class", 'fang bg-' + num6).data('num', 'q6-' + num6).html(num6);
                $("#xyxhContent_9 span").eq(6).attr("class", 'fang bg-' + num7).data('num', 'q7-' + num7).html(num7);
                $("#xyxhContent_9 span").eq(7).attr("class", 'fang bg-' + num8).data('num', 'q8-' + num8).html(num8);
                $("#xyxhContent_9 span").eq(8).attr("class", 'fang bg-' + num9).data('num', 'q9-' + num9).html(num9);
                $("#xyxhContent_9 span").eq(9).attr("class", 'fang bg-' + num10).data('num', 'q10-' + num10).html(num10);
            }, 2000);
        }
    }
</script>
<c:import url="../common/popupDiv.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>