<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("www.", "");
%>
<c:import url="../../common/bodyStart.jsp"/>
<c:import url="../../common/commonHeader.jsp"/>
<%--<c:import url="../../common/checkIsChildFrame.jsp"/>--%>
<style>body{overflow:hidden;width:0}</style>
<div class="menu_left">
    <div class="logo">
        <img src="<%=basePath%>images/${icoData.imageId}" alt="" onclick="window.location.href='<%=basePath%>'" style="cursor:pointer">
        <a href="javascript:void(0)"></a>
    </div>
    <div class="list_menu">
        <ul>
            <li class="show">
                <h2>
                    <a href="javascript:void(0)" onclick="goSubUrl('<%=basePath%>ssc/gcdt/gcdt.html')">
                        <span>
                            <div class="pict">
                                <var><img src="${resPath}img/ico3.png" alt=""></var>
                            </div>
                        </span>
                        <b>购彩大厅</b>
                    </a>
                </h2>
                <a class="Refresh"></a>
            </li>
            <li class="show">
                <h2 class="open"><span><div class="pict"><var><img src="${resPath}img/ico5.png" alt=""></var></div></span><b>热门彩种</b><i class="show"></i></h2>
                <div class="down" style="display: block;">
                    <div class="inner-menu">
                        <h3 class="head-ssc"><img src="${resPath}img/sscxl.png" alt=""><var>时时彩</var><i></i></h3>
                        <div class="xl-down xHide">
                            <a href="javascript:void(0)" onclick="getSscPage('ffssc')"><img src="${resPath}img/ffssc.png" alt=""><var>分分时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('cqssc')"><img src="${resPath}img/ico16.png" alt=""><var>重庆时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('xjssc')"><img src="${resPath}img/ico28.png" alt=""><var>新疆时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('tjssc')"><img src="${resPath}img/ico27.png" alt=""><var>天津时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('efssc')"><img src="${resPath}img/efssc.png" alt=""><var>两分时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('sfssc')"><img src="${resPath}img/sfssc.png" alt=""><var>三分时时彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('wfssc')"><img src="${resPath}img/wfssc.png" alt=""><var>五分时时彩</var></a>
                        </div>

                        <h3 class="head-pk10"><img src="${resPath}img/pk10xl.png" alt=""><var>PK10</var><i></i></h3>
                        <div class="xlPk10-down xHide">
                            <a href="javascript:void(0)" onclick="getSscPage('pk10')"><img src="${resPath}img/ico18.png" alt=""><var>北京PK10</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('xyft')"><img src="${resPath}img/xyft.png" alt=""><var>幸运飞艇</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('jspk10')"><img src="${resPath}img/jspk10.png" alt=""><var>极速PK10</var></a>
                        </div>

                        <h3 class="head-k3"><img src="${resPath}img/k3xl.png" alt=""><var>快3</var><i></i></h3>
                        <div class="xl-down xHide">
                            <a href="javascript:void(0)" onclick="getSscPage('jsk3')">
                                <img src="${resPath}img/jsk3.png" alt=""><var>江苏快3</var>
                            </a>
                            <a href="javascript:void(0)" onclick="getSscPage('hbk3')">
                                <img src="${resPath}img/hbk3.png" alt=""><var>湖北快3</var>
                            </a>
                            <a href="javascript:void(0)" onclick="getSscPage('ahk3')">
                                <img src="${resPath}img/ahk3.png" alt=""><var>安徽快3</var>
                            </a>
                            <a href="javascript:void(0)" onclick="getSscPage('jlk3')">
                                <img src="${resPath}img/jlk3.png" alt=""><var>吉林快3</var>
                            </a>
                        </div>

                        <!--<h3 class="head-lhc"><img src="${resPath}img/lhcxl.png" alt=""><var>六合彩系列</var><i></i></h3>
                        <div class="xl-down xHide">
                        </div> -->
                        <h3 class="head-qita"><img src="${resPath}img/qitaxl.png" alt=""><var>其他系列</var><i></i></h3>
                        <div class="xl-down xHide">
                            <a href="javascript:void(0)" onclick="getSscPage('lhc')"><img src="${resPath}img/ico17.png" alt=""><var>香港六合彩</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('klsf')"><img src="${resPath}img/ico26.png" alt=""><var>广东快乐十分</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('xync')"><img src="${resPath}img/ico29.png" alt=""><var>重庆幸运农场</var></a>
                            <a href="javascript:void(0)" onclick="getSscPage('fc3d')"><img src="${resPath}img/ico24.png" alt=""><var>福彩3D</var></a>
                        </div>
                    </div>

                    <!--<a href="javascript:void(0)" onclick="getSscPage('pl3')"><img src="${resPath}img/ico20.png" alt=""><var>体彩排列3</var></a>-->
                    <!--<a href="javascript:void(0)" onclick="getSscPage('xy28')"><img src="${resPath}img/ico30.png" alt=""><var>幸运28</var></a>-->
                    <!--<a href="javascript:void(0)" onclick="getSscPage('kl8')"><img src="${resPath}img/ico25.png" alt=""><var>北京快乐8</var></a>-->
                </div>
            </li>
            <li class="show">
                <h2>
                    <span>
                        <div class="pict">
                            <var>
                                <img src="${resPath}img/ico8.png" alt="">
                            </var>
                        </div>
                    </span>
                    <b>高频彩</b>
                    <i></i>
                </h2>
                <div class="down">
                    <a href="javascript:void(0)" onclick="getSscPage('pk10')"><img src="${resPath}img/ico18.png" alt=""><var>北京PK10</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('jspk10')"><img src="${resPath}img/jspk10.png" alt=""><var>极速PK10</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('xyft')"><img src="${resPath}img/xyft.png" alt=""><var>幸运飞艇</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('ffssc')"><img src="${resPath}img/ffssc.png" alt=""><var>分分时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('cqssc')"><img src="${resPath}img/ico16.png" alt=""><var>重庆时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('tjssc')"><img src="${resPath}img/ico27.png" alt=""><var>天津时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('xjssc')"><img src="${resPath}img/ico28.png" alt=""><var>新疆时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('jsk3')"><img src="${resPath}img/jsk3.png" alt=""><var>江苏快3</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('bjk3')"><img src="${resPath}img/hbk3.png" alt=""><var>湖北快3</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('ahk3')"><img src="${resPath}img/ahk3.png" alt=""><var>安徽快3</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('jlk3')"><img src="${resPath}img/jlk3.png" alt=""><var>吉林快3</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('xync')"><img src="${resPath}img/ico29.png" alt=""><var>重庆幸运农场</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('klsf')"><img src="${resPath}img/ico26.png" alt=""><var>广东快乐十分</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('xy28')"><img src="${resPath}img/ico30.png" alt=""><var>幸运28</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('kl8')"><img src="${resPath}img/ico25.png" alt=""><var>北京快乐8</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('efssc')"><img src="${resPath}img/efssc.png" alt=""><var>两分时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('sfssc')"><img src="${resPath}img/sfssc.png" alt=""><var>三分时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('wfssc')"><img src="${resPath}img/wfssc.png" alt=""><var>五分时时彩</var></a>
                    <!--<a href="javascript:void(0)" onclick="getSscPage('sflhc')"><img src="${resPath}img/sflhc.png" alt=""><var>十分六合彩</var></a>-->
                </div>
            </li>
            <li class="show">
                <h2><span><div class="pict"><var><img src="${resPath}img/ico9.png" alt=""></var></div></span><b>低频彩</b><i></i></h2>
                <div class="down">
                    <a href="javascript:void(0)" onclick="getSscPage('lhc')"><img src="${resPath}img/ico17.png" alt=""><var>香港六合彩</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('fc3d')"><img src="${resPath}img/ico24.png" alt=""><var>福彩3D</var></a>
                    <a href="javascript:void(0)" onclick="getSscPage('pl3')"><img src="${resPath}img/ico20.png" alt=""><var>体彩排列3</var></a>
                    <%--<a href="javascript:void(0)" onclick="getSscPage('ssq')"><img src="${resPath}img/ico19.png" alt=""><var>双色球</var></a>--%>
                </div>
            </li>
            <li>
                <h2><a href="<%=basePath%>?u=<%=basePath%>kjjg.html" target="_blank"><span><div class="pict"><var><img
                        src="${resPath}img/ico10.png" alt=""></var></div></span><b>开奖结果</b><i></i></a></h2>
            </li>
            <li>
                <h2><a href="javascript:void(0)" onclick="getZstPage()"><span><div class="pict"><var><img
                        src="${resPath}img/ico12.png" alt=""></var></div></span><b>走势图表</b><i></i></a></h2>
            </li>
            <%--<li>--%>
            <%--<h2><a href="javascript:void(0)" onclick="openHyzx('jfmx/hylb')"><span><div class="pict"><var><img--%>
            <%--src="${resPath}img/ico13.png" alt=""></var></div></span><b>代理合作</b><i></i></a></h2>--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<h2><a href="<%=basePath%>?u=<%=basePath%>yhhd.html" target="_blank"><span><div class="pict"><var><img--%>
            <%--src="${resPath}img/ico14.png" alt=""></var></div></span><b>优惠活动</b><i></i></a></h2>--%>
            <%--</li>--%>
            <li>
                <h2><a href="<%=mHostName%>" target="_blank"><span><div class="pict"><var><img src="${resPath}img/ico15.png" alt=""></var></div></span><b>手机购彩</b><i></i></a></h2>
            </li>

        </ul>
    </div>
</div>
<!--menu_left-->
<div class="con_right">
    <div class="top">
        <div class="news">
            <img src="${resPath}img/ico1.png" alt="">
            <ul>
                <c:forEach items="${webPopUpNoticeResult.webNoticeList}" var="item" varStatus="status">
                    <li><a onclick="showGonggao(${status.count})" href="javascript:void(0)">${item.title}</a></li>
                </c:forEach>
            </ul>
        </div>
        <div class="nav">
            <h1>网址导航<i></i></h1>
            <div class="downte">
                <ul>
                    <li>
                        <h2><a href="${kefuUrl}" target="_blank">在线客服</a></h2>
                        <p>
                            <a href="<%=basePath%>?u=<%=basePath%>register.html" target="_blank" class="a0">免费注册</a>
                            <a href="javascript:void(0)" onclick="openHyzx('zhcz/yhzz')" target="_blank">账户充值</a>
                            <a href="javascript:void(0)" onclick="getPage('<%=basePath%>ssc/gcdt.html')">彩票购买</a>
                        </p>
                    </li>
                    <li>
                        <h2><a href="<%=basePath%>?u=<%=basePath%>help/index.html" target="_blank">帮助中心</a></h2>
                        <p>
                            <a href="<%=basePath%>?u=<%=basePath%>help/index.html?module=rule/cqssc" target="_blank">彩种介绍</a>
                            <a href="<%=basePath%>?u=<%=basePath%>help/index.html?module=question" target="_blank">功能指引</a>
                            <a href="<%=basePath%>?u=<%=basePath%>help/index.html?module=question" target="_blank">常见问题</a>
                            <a href="<%=basePath%>?u=<%=basePath%>help/index.html?module=question" target="_blank">热点问题</a>
                            <a href="<%=basePath%>?u=<%=basePath%>help/index.html?module=question" target="_blank">兑奖/领奖</a>
                        </p>
                    </li>
                    <li>
                        <h2><a href="javascript:void(0)" onclick="openHyzx('main')" target="_blank">会员中心</a></h2>
                        <p>
                            <a href="javascript:void(0)" onclick="openHyzx('zhcz/yhzz')" target="_blank">账户充值</a>
                            <a href="javascript:void(0)" onclick="openHyzx('withdraw')" target="_blank">快速提款</a>
                            <a href="javascript:void(0)" onclick="openHyzx('lsjl/ckjl')" target="_blank">记录查询</a>
                            <a href="javascript:void(0)" onclick="openHyzx('zhsz/grzl')" target="_blank">账户设置</a>
                            <a href="javascript:void(0)" onclick="openHyzx('jfmx/hylb')" target="_blank">我的推广</a>
                        </p>
                    </li>
                    <li>
                        <h2><a href="<%=basePath%>" target="_blank">首页</a></h2>
                        <p>
                            <a href="javascript:void(0)" onclick="getPage('<%=basePath%>ssc/gcdt.html')">购彩大厅</a>
                            <a href="<%=basePath%>?u=<%=basePath%>kjjg.html" target="_blank">开奖结果</a>
                            <a href="javascript:void(0)" onclick="getZstPage()">走势图表</a>
                            <a href="<%=basePath%>?u=<%=basePath%>yhhd.html" target="_blank">优惠活动</a>
                            <a href="<%=mHostName%>" target="_blank">手机购彩</a>
                        </p>
                    </li>
                </ul>
            </div>
        </div>

    </div>
    <div class="Account">
    </div>
    <iframe id="rightContent" src="" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" name="ifm" width="100%" style="overflow-x:hidden;"></iframe>
</div>
<c:forEach items="${webPopUpNoticeResult.webNoticeList}" var="item" varStatus="status">
    <div class="alert hide" id="gonggao_${status.count}">
        <div class="alert_col">
            <h5><span>公告</span><i>×</i></h5>
            <h2>${item.title}</h2>
            <div>${item.content}</div>
            <h4>${webName}</h4>
            <h4 style="margin-top:15px"><fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></h4>
        </div>
    </div>
</c:forEach>
<c:import url="../../common/commonJs.jsp"/>
<script src="${resPath}js/ssc/gcdt/gcdt.js?v=20170706"></script>
<script>
</script>
<c:import url="../../common/bodyEnd.jsp"/>