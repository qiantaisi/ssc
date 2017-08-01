<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("m.", "").replace("www.", "");
    String pcHostName = request.getScheme() + "://" + "www." + request.getServerName().replace("m.", "").replace("www.", "").replace("ios.", "").replace("app.", "");
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-index">
        <header class="bar bar-nav cl-1">
            <a href="javascript:void(0)" class="cl-2" onclick="location.reload()">
                <img src="<%=basePath%>images/${logo.imageId}.png" alt="" style="height:1.5rem!important">
            </a>

            <c:choose>
                <c:when test="${not empty userSession}">
                    <div class="pull-right cl-328">
                        <a href="<%=basePath%>member/index.html"><font class="timeInfo"></font>${userSession.account}
                        </a>
                        <a class="button button-link pull-right open-panel" data-panel='#panel-right'>菜单</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="pull-right cl-3">
                        <a href="<%=basePath%>login.html">登录</a>
                        <a href="<%=basePath%>register.html">注册</a>
                        <a href="javascript:void(0)" id="btn-shiwan">试玩</a>
                    </div>
                </c:otherwise>
            </c:choose>
        </header>
        <c:import url="../common/bottomNav.jsp"/>

        <div class="content content-img">
            <div class="row cl-scroll swiper-container swiper-container-horizontal">
                <div class="swiper-wrapper">
                    <c:forEach items="${carouseList.carouselList}" var="item">
                        <c:choose>
                            <c:when test="${empty item.url}">
                                <div class="img-sz swiper-slide"><img src="<%=basePath%>images/${item.imageId}.png"
                                                                      alt="${item.title}"></div>
                            </c:when>
                            <c:otherwise>
                                <div class="img-sz swiper-slide"><img src="<%=basePath%>images/${item.imageId}.png"
                                                                      alt="${item.title}"></div>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </div>
            </div>

            <div class="cl-4" onclick="window.location.href='<%=basePath%>member/gonggao/list.html'">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <marquee behavior="scroll" contenteditable="true"
                                 onstart="this.firstChild.innerHTML+=this.firstChild.innerHTML;" scrollamount="5"
                                 width="100%" onmouseover="this.stop();" onmouseout="this.start();">
                            <c:forEach items="${popupNoticeList}" var="item" varStatus="status">
                                <c:if test="${status.count != 1}"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></c:if>
                                <span style="overflow:visible;display:block;white-space:nowrap">${item.title}：${item.content}</span>
                            </c:forEach>
                        </marquee>
                    </div>
                </div>
            </div>

            <div class="row cl-5">
                <a class="col-25 external" href="<%=basePath%>kefu.html" target="_blank">
                    <span class="bg-img-zxkf2"></span>
                    <span>在线客服</span>
                </a>
                <%--<a class="col-25" href="<%=basePath%>member/index.html">--%>
                <%--<span class="bg-img-hyzx"></span>--%>
                <%--<span>会员中心</span>--%>
                <%--</a>--%>
                <a class="col-25" href="<%=basePath%>ssc/kjjl/all.html">
                    <span class="bg-img-kjjg"></span>
                    <span>开奖结果</span>
                </a>
                <a class="col-25" href="<%=basePath%>ssc/zst/ffssc/jbzst.html">
                    <span class="bg-img-zst"></span>
                    <span>走势图</span>
                </a>
                <a class="col-25" href="<%=basePath%>yhhd.html">
                    <span class="bg-img-yhhd"></span>
                    <span>优惠活动</span>
                </a>
            </div>
            <div class="row cl-6">
                <div class="col-100">
                    <span class="left">热门彩种</span>
                    <a href="<%=basePath%>ssc/gcdt.html" class="right">更多&gt;&gt;</a>
                </div>
            </div>
            <div class="cl-7">
                <div class="row cl-5">
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/ffssc.html">
                        <span class="bg-img-ffssc"></span>
                        <span>分分时时彩</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/cqssc.html">
                        <span class="bg-img-cqssc"></span>
                        <span>重庆时时彩</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/pk10.html">
                        <span class="bg-img-pk10"></span>
                        <span>北京PK10</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/jspk10.html">
                        <span class="bg-img-jspk10"></span>
                        <span>极速PK10</span>
                        <var class="xin_new"><img src="${resPath}img/xin_new.gif" alt="新上线" style="float:right;"></var>
                    </a>
                </div>
                <div class="row cl-5">
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/lhc.html">
                        <span class="bg-img-lhc"></span>
                        <span>香港六合彩</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/ahk3.html">
                        <span class="bg-img-ahk3"></span>
                        <span>安徽快3</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/hbk3.html">
                        <span class="bg-img-hbk3"></span>
                        <span>湖北快3</span>
                    </a>
                    <%--<a class="col-25" href="<%=basePath%>ssc/gcdt/jsk3.html">
                        <span class="bg-img-jsk3"></span>
                        <span>江苏快3</span>
                    </a>--%>
                    <%--<a class="col-25" href="<%=basePath%>ssc/gcdt/sflhc.html">
                        <span class="bg-img-sflhc"></span>
                        <span>10分六合彩</span>
                    </a>--%>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/xyft.html">
                        <span class="bg-img-xyft"></span>
                        <span>幸运飞艇</span>
                    </a>
                </div>
                <div class="row cl-5">
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/xjssc.html">
                        <span class="bg-img-xjssc"></span>
                        <span>新疆时时彩</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/tjssc.html">
                        <span class="bg-img-tjssc"></span>
                        <span>天津时时彩</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/xync.html">
                        <span class="bg-img-cqxync"></span>
                        <span>重庆幸运农场</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/klsf.html">
                        <span class="bg-img-klsf"></span>
                        <span>广东快乐十分</span>
                    </a>
                </div>
                <div class="row cl-5">
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/xy28.html">
                        <span class="bg-img-xy28"></span>
                        <span>幸运28</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/kl8.html">
                        <span class="bg-img-kl8"></span>
                        <span>北京快乐8</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/fc3d.html">
                        <span class="bg-img-3d"></span>
                        <span>福彩3D</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/pl3.html">
                        <span class="bg-img-pl3"></span>
                        <span>体彩排列3</span>
                    </a>
                </div>
                <div class="row cl-5">
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/efssc.html">
                        <span class="bg-img-efssc"></span>
                        <span>两分时时彩</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/sfssc.html">
                        <span class="bg-img-sfssc"></span>
                        <span>三分时时彩</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/wfssc.html">
                        <span class="bg-img-wfssc"></span>
                        <span>五分时时彩</span>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt.html">
                        <span class="bg-img-gd"></span>
                        <span>更多</span>
                    </a>
                </div>
                <%--<div class="row cl-5">--%>
                <%--<a class="col-25" href="<%=basePath%>ssc/gcdt/jlk3.html">--%>
                <%--<span class="bg-img-jlk3"></span>--%>
                <%--<span>吉林快3</span>--%>
                <%--</a>--%>
                <%--</div>--%>
            </div>
            <div class="row cl-6">
                <div class="col-100">
                    <span class="left">热门开奖</span>
                    <span class="left">开奖结果同步更新</span>
                    <a href="<%=basePath%>ssc/kjjl/all.html" class="right">更多&gt;&gt;</a>
                </div>
            </div>
            <div class="cl-8">
                <div class="list-block media-list">
                    <div class="kjjg_div"></div>
                </div>
            </div>

            <%--<div class="row cl-6">--%>
            <%--<div class="col-100">--%>
            <%--<span class="left">走势图</span>--%>
            <%--<span class="left"></span>--%>
            <%--<a  href="<%=basePath%>ssc/zst/lhc/jbzst.html" class="right">更多&gt;&gt;</a>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="cl-9">--%>
            <%--<div class="row">--%>
            <%--<div class="col-100">--%>
            <%--<img src="${resPath}img/hico70.png" alt="" width="100%">--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="row">--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/cqssc/jbzst.html">--%>
            <%--<img src="${resPath}img/hico80.png" alt="">--%>
            <%--<span>重庆时时彩</span>--%>
            <%--</a>--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/xjssc/jbzst.html">--%>
            <%--<img src="${resPath}img/hico18.png" alt="">--%>
            <%--<span>新疆时时彩</span>--%>
            <%--</a>--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/tjssc/jbzst.html">--%>
            <%--<img src="${resPath}img/hico15.png" alt="">--%>
            <%--<span>天津时时彩</span>--%>
            <%--</a>--%>
            <%--</div>--%>
            <%--<div class="row">--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/pl3/jbzst.html">--%>
            <%--<img src="${resPath}img/hico13.png" alt="">--%>
            <%--<span>体彩排列3</span>--%>
            <%--</a>--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/fc3d/jbzst.html">--%>
            <%--<img src="${resPath}img/hico10.png" alt="">--%>
            <%--<span>福彩3D</span>--%>
            <%--</a>--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/lhc/jbzst.html">--%>
            <%--<img src="${resPath}img/hico7.png" alt="">--%>
            <%--<span>香港六合彩</span>--%>
            <%--</a>--%>
            <%--</div>--%>
            <%--<div class="row">--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/xy28/jbzst.html">--%>
            <%--<img src="${resPath}img/hico20.png" alt="">--%>
            <%--<span>幸运28</span>--%>
            <%--</a>--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/kl8/jbzst.html">--%>
            <%--<img src="${resPath}img/hico11.png" alt="">--%>
            <%--<span>北京快乐8</span>--%>
            <%--</a>--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/pk10/jbzst.html">--%>
            <%--<img src="${resPath}img/hico8.png" alt="">--%>
            <%--<span>北京PK10</span>--%>
            <%--</a>--%>
            <%--</div>--%>
            <%--<div class="row">--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/xync/jbzst.html">--%>
            <%--<img src="${resPath}img/hico19.png" alt="">--%>
            <%--<span>重庆幸运农场</span>--%>
            <%--</a>--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/klsf/jbzst.html">--%>
            <%--<img src="${resPath}img/hico12.png" alt="">--%>
            <%--<span>广东快乐十分</span>--%>
            <%--</a>--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/xyft/jbzst.html">--%>
            <%--<img src="${resPath}img/hico106.png" alt="">--%>
            <%--<span>幸运飞艇</span>--%>
            <%--</a>--%>
            <%--</div>--%>
            <%--<div class="row">--%>
            <%--<a class="col-33" href="<%=basePath%>ssc/zst/sfssc/jbzst.html">--%>
            <%--<img src="${resPath}img/sfssc.png" alt="">--%>
            <%--<span>三分时时彩</span>--%>
            <%--</a>--%>
            <%--</div>--%>
            <%--</div>--%>
            <div class="pcAndMobile">
                <a href="javascript:void(0)" onclick="parent.location.href='<%=mHostName%>'">手机版</a>
                &nbsp;&nbsp;|&nbsp;&nbsp;
                <a href="javascript:void(0)" onclick="parent.location.href='<%=pcHostName%>/?z=1'">电脑版</a>
            </div>
            <c:import url="../common/copyright.jsp"/>
        </div>
    </div>
    <c:import url="../common/rightPanel.jsp"/>
</div>
<c:import url="../common/commonJs.jsp"/>
<script>
    var kjjgJsonData = ${kjjgJsonData};
</script>
<script type="text/html" id="template_1">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=1">
            <div class="item-media"><img src="${resPath}img/cz/cz-1.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">重庆时时彩</div>
                    <div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<%--<script type="text/html" id="template_2">--%>
<%--<li>--%>
<%--<a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=2">--%>
<%--<div class="item-media"><img src="${resPath}img/hico3.png" style='width: 2.2rem;'></div>--%>
<%--<div class="item-inner">--%>
<%--<div class="item-title-row">--%>
<%--<div class="item-title">天津时时彩</div>--%>
<%--<div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>--%>
<%--</div>--%>
<%--<div class="item-subtitle">--%>
<%--<span class="ball">{{num1}}</span>--%>
<%--<span class="ball">{{num2}}</span>--%>
<%--<span class="ball">{{num3}}</span>--%>
<%--<span class="ball">{{num4}}</span>--%>
<%--<span class="ball">{{num5}}</span>--%>
<%--</div>--%>
<%--<div class="item-text">--%>
<%--<span>{{sum}}</span>--%>
<%--<span>{{ds}}</span>--%>
<%--<span>{{dx}}</span>--%>
<%--<span>{{lh}}</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--</a>--%>
<%--</li>--%>
<%--</script>--%>
<%--<script type="text/html" id="template_3">--%>
<%--<li>--%>
<%--<a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=3">--%>
<%--<div class="item-media"><img src="${resPath}img/hico18.png" style='width: 2.2rem;'></div>--%>
<%--<div class="item-inner">--%>
<%--<div class="item-title-row">--%>
<%--<div class="item-title">新疆时时彩</div>--%>
<%--<div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>--%>
<%--</div>--%>
<%--<div class="item-subtitle">--%>
<%--<span class="ball">{{num1}}</span>--%>
<%--<span class="ball">{{num2}}</span>--%>
<%--<span class="ball">{{num3}}</span>--%>
<%--<span class="ball">{{num4}}</span>--%>
<%--<span class="ball">{{num5}}</span>--%>
<%--</div>--%>
<%--<div class="item-text">--%>
<%--<span>{{sum}}</span>--%>
<%--<span>{{ds}}</span>--%>
<%--<span>{{dx}}</span>--%>
<%--<span>{{lh}}</span>--%>
<%--</div>--%>
<%--</div>--%>
<%--</a>--%>
<%--</li>--%>
<%--</script>--%>
<%--<script type="text/html" id="template_4">--%>
<%--<li>--%>
<%--<a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=4">--%>
<%--<div class="item-media"><img src="${resPath}img/hico13.png" style='width: 2.2rem;'></div>--%>
<%--<div class="item-inner">--%>
<%--<div class="item-title-row">--%>
<%--<div class="item-title">体彩排列3</div>--%>
<%--<div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>--%>
<%--</div>--%>
<%--<div class="item-subtitle">--%>
<%--<span class="ball">{{num1}}</span>--%>
<%--<span class="ball">{{num2}}</span>--%>
<%--<span class="ball">{{num3}}</span>--%>
<%--</div>--%>
<%--<div class="item-text item-text_res"></div>--%>
<%--</div>--%>
<%--</a>--%>
<%--</li>--%>
<%--</script>--%>
<%--<script type="text/html" id="template_5">--%>
<%--<li>--%>
<%--<a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=5">--%>
<%--<div class="item-media"><img src="${resPath}img/hico10.png" style='width: 2.2rem;'></div>--%>
<%--<div class="item-inner">--%>
<%--<div class="item-title-row">--%>
<%--<div class="item-title">福彩3D</div>--%>
<%--<div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>--%>
<%--</div>--%>
<%--<div class="item-subtitle">--%>
<%--<span class="ball">{{num1}}</span>--%>
<%--<span class="ball">{{num2}}</span>--%>
<%--<span class="ball">{{num3}}</span>--%>
<%--</div>--%>
<%--<div class="item-text item-text_res">--%>
<%--</div>--%>
<%--</div>--%>
<%--</a>--%>
<%--</li>--%>
<%--</script>--%>
<script type="text/html" id="template_6">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=6">
            <div class="item-media"><img src="${resPath}img/cz/cz-6.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">香港六合彩</div>
                    <div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle lhc_item-subtitle">
                    <span class="ball {{if bose1 == 1}}col0{{else if bose1 == 2}}col1{{/if}}">{{num1}}</span>
                    <span class="ball {{if bose2 == 1}}col0{{else if bose2 == 2}}col1{{/if}}">{{num2}}</span>
                    <span class="ball {{if bose3 == 1}}col0{{else if bose3 == 2}}col1{{/if}}">{{num3}}</span>
                    <span class="ball {{if bose4 == 1}}col0{{else if bose4 == 2}}col1{{/if}}">{{num4}}</span>
                    <span class="ball {{if bose5 == 1}}col0{{else if bose5 == 2}}col1{{/if}}">{{num5}}</span>
                    <span class="ball {{if bose6 == 1}}col0{{else if bose6 == 2}}col1{{/if}}">{{num6}}</span>
                    <span class="symbol">+</span>
                    <span class="ball {{if bose7 == 1}}col0{{else if bose7 == 2}}col1{{/if}}">{{num7}}</span>
                </div>
                <div class="item-text">
                    <span>{{sx1}}</span>
                    <span>{{sx2}}</span>
                    <span>{{sx3}}</span>
                    <span>{{sx4}}</span>
                    <span>{{sx5}}</span>
                    <span>{{sx6}}</span>
                    <i>&nbsp;&nbsp;&nbsp;</i>
                    <span>{{sx7}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_7">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=7">
            <div class="item-media"><img src="${resPath}img/cz/cz-7.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">幸运28</div>
                    <div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_8">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=8">
            <div class="item-media"><img src="${resPath}img/cz/cz-8.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">北京快乐8</div>
                    <div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle item-subtitle_res">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                    <span class="ball">{{num9}}</span>
                    <span class="ball">{{num10}}</span>
                    <span class="ball">{{num11}}</span>
                    <span class="ball">{{num12}}</span>
                    <span class="ball">{{num13}}</span>
                    <span class="ball">{{num14}}</span>
                    <span class="ball">{{num15}}</span>
                    <span class="ball">{{num16}}</span>
                    <span class="ball">{{num17}}</span>
                    <span class="ball">{{num18}}</span>
                    <span class="ball">{{num19}}</span>
                    <span class="ball">{{num20}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_9">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=9">
            <div class="item-media"><img src="${resPath}img/cz/cz-9.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">北京PK10</div>
                    <div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ballpk bg-{{num1}}">{{num1}}</span>
                    <span class="ballpk bg-{{num2}}">{{num2}}</span>
                    <span class="ballpk bg-{{num3}}">{{num3}}</span>
                    <span class="ballpk bg-{{num4}}">{{num4}}</span>
                    <span class="ballpk bg-{{num5}}">{{num5}}</span>
                    <span class="ballpk bg-{{num6}}">{{num6}}</span>
                    <span class="ballpk bg-{{num7}}">{{num7}}</span>
                    <span class="ballpk bg-{{num8}}">{{num8}}</span>
                    <span class="ballpk bg-{{num9}}">{{num9}}</span>
                    <span class="ballpk bg-{{num10}}">{{num10}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_10">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=10">
            <div class="item-media"><img src="${resPath}img/cz/cz-10.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">重庆幸运农场</div>
                    <div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                </div>
                <div class="item-text">
                    <span>{{str1}}</span>
                    <span>{{str2}}</span>
                    <span>{{str3}}</span>
                    <span>{{str4}}</span>
                    <span>{{str5}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_11">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=11">
            <div class="item-media"><img src="${resPath}img/cz/cz-11.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">广东快乐十分</div>
                    <div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                </div>
                <div class="item-text">
                    <span>{{str1}}</span>
                    <span>{{str2}}</span>
                    <span>{{str3}}</span>
                    <span>{{str4}}</span>
                    <span>{{str5}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_13">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=13">
            <div class="item-media"><img src="${resPath}img/cz/cz-13.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">三分时时彩</div>
                    <div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>

<script type="text/html" id="template_14">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=14">
            <div class="item-media"><img src="${resPath}img/cz/cz-14.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">幸运飞艇</div>
                    <div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ballpk bg-{{num1}}">{{num1}}</span>
                    <span class="ballpk bg-{{num2}}">{{num2}}</span>
                    <span class="ballpk bg-{{num3}}">{{num3}}</span>
                    <span class="ballpk bg-{{num4}}">{{num4}}</span>
                    <span class="ballpk bg-{{num5}}">{{num5}}</span>
                    <span class="ballpk bg-{{num6}}">{{num6}}</span>
                    <span class="ballpk bg-{{num7}}">{{num7}}</span>
                    <span class="ballpk bg-{{num8}}">{{num8}}</span>
                    <span class="ballpk bg-{{num9}}">{{num9}}</span>
                    <span class="ballpk bg-{{num10}}">{{num10}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<c:import url="../common/bodyEnd.jsp"/>