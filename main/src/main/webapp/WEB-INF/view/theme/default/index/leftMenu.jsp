<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<ul>
    <li><a href="javascript:void(0)" onclick="openGcdt('ffssc')">
        <img src="${resPath}img/ffssc.png" alt="">分分时时彩</a><i class="i0">一分钟一期</i>
    </li>
    <li><a href="javascript:void(0)" onclick="openGcdt('cqssc')">
        <img src="${resPath}img/ico16.png" alt="">重庆时时彩</a><i class="i0">最火爆彩种</i>
    </li>
    <li><a href="javascript:void(0)" onclick="openGcdt('pk10')">
        <img src="${resPath}img/ico18.png" alt="">北京PK10</a><i class="i0">5分钟一期 快速</i>
    </li>
    <li><a href="javascript:void(0)" onclick="openGcdt('jspk10')">
        <img src="${resPath}img/jspk10.png" alt="">极速PK10</a><i class="i0">分分PK10</i>
    </li>
    <li><a href="javascript:void(0)" onclick="openGcdt('lhc')">
        <img src="${resPath}img/ico17.png" alt="">六合彩</a><i class="i0">火爆低频 每周三期</i>
    </li>
    <li><a href="javascript:void(0)" onclick="openGcdt('ahk3')">
        <img src="${resPath}img/ahk3.png" alt="">安徽快3</a><i class="i0">10分钟一期</i>
    </li>
    <li><a href="javascript:void(0)" onclick="openGcdt('xyft')">
        <img src="${resPath}img/xyft.png" alt="">幸运飞艇</a><i class="i0">激情飞艇 快速</i>
    </li>
    <li><a href="javascript:void(0)" onclick="openGcdt('xync')">
        <img src="${resPath}img/ico29.png" alt="">幸运农场</a><i class="i0">重庆快乐十分</i>
    </li>
    <%--<li><a href="javascript:void(0)" onclick="openGcdt('sfssc')">--%>
    <%--<img src="${resPath}img/sfssc.png" alt="">三分时时彩</a><i class="i0">三分钟一期</i>--%>
    <%--</li>--%>
    <%--<li><a href="javascript:void(0)" onclick="openGcdt('fc3d')">--%>
    <%--<img src="${resPath}img/ico24.png" alt="">福彩3D</a><i>每天20:30开奖</i>--%>
    <%--</li>--%>
    <%--<li><a href="javascript:void(0)" onclick="openGcdt('pl3')">--%>
    <%--<img src="${resPath}img/ico20.png" alt="">体彩排列3</a><i>每日20:30开奖</i>--%>
    <%--</li>--%>
    <%--<li><a href="javascript:void(0)" onclick="openGcdt('xjssc')">--%>
    <%--<img src="${resPath}img/ico28.png" alt="">新疆时时彩</a><i class="i0">最火彩种之一</i>--%>
    <%--</li>--%>
    <!--<li><a href="javascript:void(0)" onclick="openGcdt('klsf')"><img src="${resPath}img/ico26.png" alt="">广东快乐十分</a><i>十分钟一期</i></li>-->
</ul>
<div class="high">
    <b class="b0"><img src="${resPath}img/ico79.png" alt="">高 频 彩</b>
    <p>
        <a href="javascript:void(0)" onclick="openGcdt('ffssc')">分分时时彩</a>
        <a href="javascript:void(0)" onclick="openGcdt('cqssc')">重庆时时彩</a>
        <a href="javascript:void(0)" onclick="openGcdt('pk10')">北京PK10</a>
        <a href="javascript:void(0)" onclick="openGcdt('jspk10')">极速PK10</a>
        <a href="javascript:void(0)" onclick="openGcdt('xyft')">幸运飞艇</a>
        <a href="javascript:void(0)" onclick="openGcdt('ahk3')">安徽快3</a>
        <a href="javascript:void(0)" onclick="openGcdt('xync')">幸运农场</a>
        <a href="javascript:void(0)" onclick="openGcdt('klsf')">快乐十分</a>
    </p>

    <a href="javascript:void(0)" class="more"><img src="${resPath}img/ico81.png" alt=""></a>
    <div class="downt_more">
        <h5>高频彩</h5>
        <strong>
            <a href="javascript:void(0)" onclick="openGcdt('pk10')">北京PK10</a>
            <a href="javascript:void(0)" onclick="openGcdt('jspk10')">极速PK10</a>
            <a href="javascript:void(0)" onclick="openGcdt('xyft')">幸运飞艇</a>
            <a href="javascript:void(0)" onclick="openGcdt('cqssc')">重庆时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('tjssc')">天津时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('xjssc')">新疆时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('ffssc')">分分时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('efssc')">两分时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('sfssc')">三分时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('wfssc')">五分时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('jsk3')">江苏快3</a>
            <a href="javascript:void(0)" onclick="openGcdt('hbk3')">湖北快3</a>
            <a href="javascript:void(0)" onclick="openGcdt('ahk3')">安徽快3</a>
            <a href="javascript:void(0)" onclick="openGcdt('jlk3')">吉林快3</a>
            <a href="javascript:void(0)" onclick="openGcdt('xync')">重庆幸运农场</a>
            <a href="javascript:void(0)" onclick="openGcdt('klsf')">广东快乐十分</a>
            <a href="javascript:void(0)" onclick="openGcdt('kl8')">北京快乐8</a>
            <a href="javascript:void(0)" onclick="openGcdt('xy28')">幸运28</a>
        </strong>
    </div>
</div>
<div class="high">
    <b class="b1"><img src="${resPath}img/ico80.png" alt="">低 频 彩</b>
    <p>
        <a href="javascript:void(0)" onclick="openGcdt('lhc')">香港六合彩</a>
        <a href="javascript:void(0)" onclick="openGcdt('fc3d')">福彩3D</a>
        <a href="javascript:void(0)" onclick="openGcdt('pl3')">体彩排列3</a>
    </p>
    <a href="javascript:void(0)" class="more"><img src="${resPath}img/ico81.png" alt=""></a>
    <div class="downt_more bott">
        <h5>低频彩</h5>
        <strong>
            <a href="javascript:void(0)" onclick="openGcdt('lhc')">香港六合彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('fc3d')">福彩3D</a>
            <a href="javascript:void(0)" onclick="openGcdt('pl3')">体彩排列3</a>
        </strong>
    </div>
</div>
<div class="high tesh">
    <h3>全部&gt;&gt;</h3>
    <div class="downt_more bott1">
        <h5>全部</h5>
        <strong>
            <a href="javascript:void(0)" onclick="openGcdt('cqssc')">重庆时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('tjssc')">天津时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('xjssc')">新疆时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('ffssc')">分分时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('efssc')">两分时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('sfssc')">三分时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('wfssc')">五分时时彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('pk10')">北京PK10</a>
            <a href="javascript:void(0)" onclick="openGcdt('jspk10')">极速PK10</a>
            <a href="javascript:void(0)" onclick="openGcdt('xyft')">幸运飞艇</a>
            <a href="javascript:void(0)" onclick="openGcdt('lhc')">香港六合彩</a>
            <a href="javascript:void(0)" onclick="openGcdt('jsk3')">江苏快3</a>
            <a href="javascript:void(0)" onclick="openGcdt('hbk3')">湖北快3</a>
            <a href="javascript:void(0)" onclick="openGcdt('ahk3')">安徽快3</a>
            <a href="javascript:void(0)" onclick="openGcdt('jlk3')">吉林快3</a>
            <a href="javascript:void(0)" onclick="openGcdt('klsf')">快乐十分</a>
            <a href="javascript:void(0)" onclick="openGcdt('xync')">幸运农场</a>
            <a href="javascript:void(0)" onclick="openGcdt('kl8')">北京快乐8</a>
            <a href="javascript:void(0)" onclick="openGcdt('fc3d')">福彩3D</a>
            <a href="javascript:void(0)" onclick="openGcdt('pl3')">体彩排列3</a>
            <a href="javascript:void(0)" onclick="openGcdt('xy28')">幸运28</a>
        </strong>
    </div>
</div>