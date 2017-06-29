<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("m.", "").replace("www.", "");
    String pcHostName = request.getScheme() + "://" + "www." + request.getServerName().replace("m.", "").replace("www.", "");
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current re-bg" id="page-index">
        <header class="bar bar-nav cl-1-vipcp">
            <a href="javascript:void(0)" class="cl-2" onclick="location.reload()">
                <img src="<%=basePath%>images/${logo.imageId}.png" alt="">
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
        <%--<c:import url="../common/bottomNav2.jsp"/>--%>
        <c:import url="../../../public/theme/common/bottomNav.jsp" />

        <div class="content content-img content-vipvp tex_bottom bottom2" id="navBar">
            <div class="cl-4 recl-4" onclick="window.location.href='<%=basePath%>member/gonggao/list.html'">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <marquee behavior="scroll" contenteditable="true"
                                 onstart="this.firstChild.innerHTML+=this.firstChild.innerHTML;" scrollamount="5"
                                 width="100%" onmouseover="this.stop();" onmouseout="this.start();">
                            <c:forEach items="${popupNoticeList}" var="item" varStatus="status">
                                <c:if test="${status.count != 1}"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></c:if>
                                <span class="sp_scroll_txt">${item.title}：${item.content}</span>
                            </c:forEach>
                        </marquee>
                    </div>
                </div>
            </div>

            <div class="row cl-scroll swiper-container swiper-container-horizontal re-row">
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


            <div class="row cl-5 recl-5 re-font-title">
                <a class="col-25 external" href="<%=basePath%>kefu.html" target="_blank">
                    <span class="bg-img-zxkf2 re-zxkf2"></span>
                    <span>在线客服</span>
                </a>
                <%--<a class="col-25" href="<%=basePath%>member/index.html">--%>
                <%--<span class="bg-img-hyzx"></span>--%>
                <%--<span>会员中心</span>--%>
                <%--</a>--%>
                <a class="col-25" href="<%=basePath%>ssc/kjjl/all.html">
                    <span class="bg-img-kjjg re-kjjg"></span>
                    <span>开奖结果</span>
                </a>
                <a class="col-25" href="<%=basePath%>ssc/zst/ffssc/jbzst.html">
                    <span class="bg-img-zst re-zst"></span>
                    <span>走势图</span>
                </a>
                <a class="col-25" href="<%=basePath%>yhhd.html">
                    <span class="bg-img-yhhd re-yhhd"></span>
                    <span>优惠活动</span>
                </a>
            </div>

            <div class="row cl-6 re-rmcz">
                <div class="col-100">
                    <span class="left">热门彩种</span>
                    <a href="<%=basePath%>ssc/gcdt.html" class="right">更多</a>
                </div>
            </div>
            <div class="cl-7 recl-7">
                <div class="row cl-5 cl-row-5">
                    <a class="col-25 xl-select" href="javascript:void(0)" data-name="sscxl" id="btn_sscxl" sp="0">
                        <em class="sanjiao sj_sscxl"></em>
                        <div class="c25-div">
                            <span class="bg-img-sscxl"></span>
                            <span class="content-sp">
                            <p>时时彩系列</p>
                             最火爆的游戏
                            </span>
                        </div>
                    </a>
                    <a class="col-25 xl-select" href="javascript:void(0)" data-name="k3xl" id="btn_k3xl" sp="0">
                        <em class="sanjiao sj_k3xl"></em>
                        <div class="c25-div rec25">
                            <span class="bg-img-k3xl"></span>
                            <span class="content-sp">
                               <p>快3系列</p>
                                返奖比例高
                            </span>
                        </div>
                    </a>
                </div>
                <div class="xlcz sscxl hide-xl">
                    <div class="row cl-cz-hide clearfix">
                        <a href="<%=basePath%>ssc/gcdt/ffssc.html">
                            <div class="content-clear-f">
                                <span class="bg-img-ffssc"></span>
                                <p>分分时时彩</p>
                            </div>
                        </a>
                        <a href="<%=basePath%>ssc/gcdt/cqssc.html">
                            <div class="content-clear-f">
                                <span class="bg-img-cqssc"></span>
                                <p>重庆时时彩</p>
                            </div>
                        </a>
                        <a href="<%=basePath%>ssc/gcdt/xjssc.html">
                            <div class="content-clear-f">
                                <span class="bg-img-xjssc"></span>
                                <p>新疆时时彩</p>
                            </div>
                        </a>
                        <a href="<%=basePath%>ssc/gcdt/xjssc.html">
                            <div class="content-clear-f">
                                <span class="bg-img-tjssc"></span>
                                <p>天津时时彩</p>
                            </div>
                        </a>

                    </div>

                    <div class="row cl-cz-hide clearfix">
                        <a href="<%=basePath%>ssc/gcdt/efssc.html">
                            <div class="content-clear-f">
                                <span class="bg-img-efssc"></span>
                                <p>两分时时彩</p>
                            </div>
                        </a>
                        <a href="<%=basePath%>ssc/gcdt/sfssc.html">
                            <div class="content-clear-f">
                                <span class="bg-img-sfssc"></span>
                                <p>三分时时彩</p>
                            </div>
                        </a>
                        <a href="<%=basePath%>ssc/gcdt/wfssc.html">
                            <div class="content-clear-f">
                                <span class="bg-img-wfssc"></span>
                                <p>五分时时彩</p>
                            </div>
                        </a>
                    </div>

                </div>
                <div class="xlcz k3xl hide-xl">
                    <div class="row cl-cz-hide clearfix">
                        <a href="<%=basePath%>ssc/gcdt/jsk3.html">
                            <div class="content-clear-f">
                                <span class="bg-img-jsk3"></span>
                                <p>江苏快3</p>
                            </div>
                        </a>
                        <a href="<%=basePath%>ssc/gcdt/hbk3.html">
                            <div class="content-clear-f">
                                <span class="bg-img-hbk3"></span>
                                <p>湖北快3</p>
                            </div>
                        </a>
                        <a href="<%=basePath%>ssc/gcdt/ahk3.html">
                            <div class="content-clear-f">
                                <span class="bg-img-ahk3"></span>
                                <p>安徽快3</p>
                            </div>
                        </a>
                        <a href="<%=basePath%>ssc/gcdt/jlk3.html">
                            <div class="content-clear-f">
                                <span class="bg-img-jlk3"></span>
                                <p>吉林快3</p>
                            </div>
                        </a>
                    </div>
                </div>


                <div class="row cl-5 cl-row-5">
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/lhc.html">
                        <div class="c25-div">
                            <span class="bg-img-lhc"></span>
                            <span class="content-sp">
                            <p>香港六合彩</p>
                             最火低频
                            </span>
                        </div>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/pk10.html">
                        <div class="c25-div rec25">
                            <span class="bg-img-bjpk10"></span>
                            <span class="content-sp">
                            <p>北京PK10</p>
                             赛车游戏
                        </span>
                        </div>
                    </a>
                </div>

                <div class="row cl-5 cl-row-5">
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/xyft.html">
                        <div class="c25-div">
                            <span class="bg-img-xyft"></span>
                            <span class="content-sp">
                            <p>幸运飞艇</p>
                            PK10系列夜场版
                            </span>
                        </div>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/xy28.html">
                        <div class="c25-div rec25">
                            <span class="bg-img-xy28"></span>
                            <span class="content-sp">
                            <p>幸运28</p>
                            幸运28
                        </span>
                        </div>
                    </a>
                </div>

                <div class="row cl-5 cl-row-5">
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/kl8.html">
                        <div class="c25-div">
                            <span class="bg-img-kl8"></span>
                            <span class="content-sp">
                            <p>北京快乐8</p>
                            北京快乐8
                            </span>
                        </div>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/klsf.html">
                        <div class="c25-div rec25">
                            <span class="bg-img-klsf"></span>
                            <span class="content-sp">
                            <p>广东快乐十分</p>
                            广东快乐十分
                        </span>
                        </div>
                    </a>
                </div>

                <div class="row cl-5 cl-row-5">
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/fc3d.html">
                        <div class="c25-div">
                            <span class="bg-img-fc3d"></span>
                            <span class="content-sp">
                            <p>福彩3D</p>
                            福彩3D
                            </span>
                        </div>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/xync.html">
                        <div class="c25-div rec25">
                            <span class="bg-img-xync"></span>
                            <span class="content-sp">
                            <p>重庆幸运农场</p>
                            重庆快乐十分
                        </span>
                        </div>
                    </a>
                </div>

                <div class="row cl-5 cl-row-5">
                    <a class="col-25" href="<%=basePath%>ssc/gcdt/pl3.html">
                        <div class="c25-div">
                            <span class="bg-img-pl3"></span>
                            <span class="content-sp">
                            <p>体彩排列3</p>
                            体彩排列3
                            </span>
                        </div>
                    </a>
                    <a class="col-25" href="<%=basePath%>ssc/gcdt.html">
                        <div class="c25-div rec25">
                            <span class="bg-img-gdcz"></span>
                            <span class="content-sp">
                            <p class="gd-p">更多好玩彩种</p>

                        </span>
                        </div>
                    </a>
                </div>

                <div class="row cl-6 recl-6">
                    <div class="col-100">
                        <span class="left">热门开奖</span>
                        <%--<span class="left">开奖结果同步更新</span>--%>
                        <a href="<%=basePath%>ssc/kjjl/all.html" class="right">更多</a>
                    </div>
                </div>
                <div class="cl-8 recl-8">
                    <div class="list-block media-list">
                        <div class="kjjg_div">

                        </div>
                    </div>
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
            <div class="index_four clearfix_">
                <div class="left_ index_four_lf">
                    <a href="<%=basePath%>login.html" class="login_">登录</a>
                    <span>|</span>
                    <a href="<%=basePath%>register.html" class="reg_">注册</a>
                    <%--<span>|</span>--%>
                    <%--<a href="javascript:void(0)" class="help_">帮助</a>--%>
                    <%--<span>|</span>--%>
                    <%--<a href="javascript:void(0)" class="zsk">知识库</a>--%>
                </div>
                <a href="javascript:void(0)" class="top-click">TOP</a>
            </div>

            <div class="index_five">
                <a href="javascript:void(0)">下载客户端</a>
                <span>&nbsp;|&nbsp;</span>
                <a href="javascript:void(0)" onclick="parent.location.href='<%=mHostName%>'">触屏版</a>
                <span>&nbsp;|&nbsp;</span>
                <a href="javascript:void(0)" onclick="parent.location.href='<%=pcHostName%>/?z=1'">PC版</a>
            </div>

            <%--<div class="index_six">--%>
                <%--<span class="index_six_main">--%>
                   <%--<span>客服热线：</span>--%>
                    <%--4000-888-888--%>
                <%--</span>--%>
            <%--</div>--%>
            <div class="index_seven webDbxx">
                <%--©2001-2017 500彩票网 版权所有 股票代码：WBAI<br>--%>
                <%--深圳市易讯天空网络技术有限公司--%>
            </div>
            <div class="index_eight">
                <img src="${resPath}img/index_89.png">
            </div>
            <%--<c:import url="../common/copyright.jsp"/>--%>
        </div>
    </div>
    <c:import url="../common/rightPanel.jsp"/>
</div>
<c:import url="../common/commonJs.jsp"/>
<script>
    var kjjgJsonData = ${kjjgJsonData};
</script>
<%--<script type="text/html" id="template_1">--%>
        <%--<div class="item-content re-it-con cqssc-kjjg">--%>
            <%--<div class="item-media remedia"><img src="${resPath}img/cz/cz-1.png" style='width: 2.4rem;'></div>--%>
            <%--<div class="item-inner reitem-inner">--%>
                <%--<div class="item-subtitle" id="xyxhContent_1">--%>
                    <%--<span class="ball">{{num1}}</span>--%>
                    <%--<span class="ball">{{num2}}</span>--%>
                    <%--<span class="ball">{{num3}}</span>--%>
                    <%--<span class="ball">{{num4}}</span>--%>
                    <%--<span class="ball">{{num5}}</span>--%>
                <%--</div>--%>
                <%--<div class="item-text" id="xyxhContent_1_dsdxh">--%>
                    <%--<span>{{sum}}</span>--%>
                    <%--<span>{{ds}}</span>--%>
                    <%--<span>{{dx}}</span>--%>
                    <%--<span>{{lh}}</span>--%>
                <%--</div>--%>
                <%--<div class="item-title-row re-row-touzhu cq-touzhu">--%>
                    <%--<span class="">重庆时时彩</span>--%>
                    <%--<span class="tz_content">--%>
                       <%--<a href="javascript:void(0)" class="shuaxin"></a>--%>
                        <%--<a href="javascript:void(0)" class="touzhu">投注</a>--%>
                    <%--</span>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
<%--</script>--%>
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
        <div class="item-content re-it-con lhc-kjjg">
            <div class="item-media remedia"><img src="${resPath}img/cz/cz-6.png" style='width: 2.3rem;'></div>
            <div class="item-inner reitem-inner">
                <div class="item-subtitle lhc_item-subtitle" id="xyxhContent_6">
                    <span class="ball {{if bose1 == 1}}col0{{else if bose1 == 2}}col1{{/if}}">{{num1}}</span>
                    <span class="ball {{if bose2 == 1}}col0{{else if bose2 == 2}}col1{{/if}}">{{num2}}</span>
                    <span class="ball {{if bose3 == 1}}col0{{else if bose3 == 2}}col1{{/if}}">{{num3}}</span>
                    <span class="ball {{if bose4 == 1}}col0{{else if bose4 == 2}}col1{{/if}}">{{num4}}</span>
                    <span class="ball {{if bose5 == 1}}col0{{else if bose5 == 2}}col1{{/if}}">{{num5}}</span>
                    <span class="ball {{if bose6 == 1}}col0{{else if bose6 == 2}}col1{{/if}}">{{num6}}</span>
                    <i class="symbol">+</i>
                    <span class="ball {{if bose7 == 1}}col0{{else if bose7 == 2}}col1{{/if}}">{{num7}}</span>
                </div>
                <div class="item-text" id="xyxhContent_6_sx">
                    <span>{{sx1}}</span>
                    <span>{{sx2}}</span>
                    <span>{{sx3}}</span>
                    <span>{{sx4}}</span>
                    <span>{{sx5}}</span>
                    <span>{{sx6}}</span>
                    <i>&nbsp;&nbsp;&nbsp;</i>
                    <span>{{sx7}}</span>
                </div>
                <div class="item-title-row re-row-touzhu lhc-touzhu">
                    <span class="">香港六合彩</span>
                    <span class="tz_content">
                        <a href="javascript:void(0)" class="shuaxin"></a>
                        <a href="<%=basePath%>ssc/gcdt/lhc.html" class="touzhu">投注</a>
                    </span>
                </div>
            </div>
        </div>
</script>
<%--<script type="text/html" id="template_7">--%>
    <%--<li>--%>
        <%--<a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=7">--%>
            <%--<div class="item-media"><img src="${resPath}img/cz/cz-7.png" style='width: 2.2rem;'></div>--%>
            <%--<div class="item-inner">--%>
                <%--<div class="item-title-row">--%>
                    <%--<div class="item-title">幸运28</div>--%>
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
<%--<script type="text/html" id="template_8">--%>
    <%--<li>--%>
        <%--<a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=8">--%>
            <%--<div class="item-media"><img src="${resPath}img/cz/cz-8.png" style='width: 2.2rem;'></div>--%>
            <%--<div class="item-inner">--%>
                <%--<div class="item-title-row">--%>
                    <%--<div class="item-title">北京快乐8</div>--%>
                    <%--<div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>--%>
                <%--</div>--%>
                <%--<div class="item-subtitle item-subtitle_res">--%>
                    <%--<span class="ball">{{num1}}</span>--%>
                    <%--<span class="ball">{{num2}}</span>--%>
                    <%--<span class="ball">{{num3}}</span>--%>
                    <%--<span class="ball">{{num4}}</span>--%>
                    <%--<span class="ball">{{num5}}</span>--%>
                    <%--<span class="ball">{{num6}}</span>--%>
                    <%--<span class="ball">{{num7}}</span>--%>
                    <%--<span class="ball">{{num8}}</span>--%>
                    <%--<span class="ball">{{num9}}</span>--%>
                    <%--<span class="ball">{{num10}}</span>--%>
                    <%--<span class="ball">{{num11}}</span>--%>
                    <%--<span class="ball">{{num12}}</span>--%>
                    <%--<span class="ball">{{num13}}</span>--%>
                    <%--<span class="ball">{{num14}}</span>--%>
                    <%--<span class="ball">{{num15}}</span>--%>
                    <%--<span class="ball">{{num16}}</span>--%>
                    <%--<span class="ball">{{num17}}</span>--%>
                    <%--<span class="ball">{{num18}}</span>--%>
                    <%--<span class="ball">{{num19}}</span>--%>
                    <%--<span class="ball">{{num20}}</span>--%>
                <%--</div>--%>
                <%--<div class="item-text item-text_res">--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</a>--%>
    <%--</li>--%>
<%--</script>--%>
<%--<script type="text/html" id="template_9">--%>
        <%--<div class="item-content re-it-con pk10-kjjg">--%>
            <%--<div class="item-media remedia"><img src="${resPath}img/cz/cz-9.png" style='width: 2.3rem;'></div>--%>
            <%--<div class="item-inner reitem-inner" id="xyxhContent_9">--%>
                <%--<div class="item-subtitle">--%>
                    <%--<span class="ballpk bg-{{num1}}">{{num1}}</span>--%>
                    <%--<span class="ballpk bg-{{num2}}">{{num2}}</span>--%>
                    <%--<span class="ballpk bg-{{num3}}">{{num3}}</span>--%>
                    <%--<span class="ballpk bg-{{num4}}">{{num4}}</span>--%>
                    <%--<span class="ballpk bg-{{num5}}">{{num5}}</span>--%>
                    <%--<span class="ballpk bg-{{num6}}">{{num6}}</span>--%>
                    <%--<span class="ballpk bg-{{num7}}">{{num7}}</span>--%>
                    <%--<span class="ballpk bg-{{num8}}">{{num8}}</span>--%>
                    <%--<span class="ballpk bg-{{num9}}">{{num9}}</span>--%>
                    <%--<span class="ballpk bg-{{num10}}">{{num10}}</span>--%>
                <%--</div>--%>
                <%--<div class="item-title-row re-row-touzhu pk10-touzhu">--%>
                    <%--<span class="">北京赛车PK10</span>--%>
                    <%--<span href="javascript:void(0)" class="tz_content">--%>
                        <%--<a href="javascript:void(0)" class="shuaxin"></a>--%>
                        <%--<a href="javascript:void(0)" class="touzhu">投注</a>--%>
                    <%--</span>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
<%--</script>--%>
<%--<script type="text/html" id="template_10">--%>
    <%--<li>--%>
        <%--<a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=10">--%>
            <%--<div class="item-media"><img src="${resPath}img/cz/cz-10.png" style='width: 2.2rem;'></div>--%>
            <%--<div class="item-inner">--%>
                <%--<div class="item-title-row">--%>
                    <%--<div class="item-title">重庆幸运农场</div>--%>
                    <%--<div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>--%>
                <%--</div>--%>
                <%--<div class="item-subtitle">--%>
                    <%--<span class="ball">{{num1}}</span>--%>
                    <%--<span class="ball">{{num2}}</span>--%>
                    <%--<span class="ball">{{num3}}</span>--%>
                    <%--<span class="ball">{{num4}}</span>--%>
                    <%--<span class="ball">{{num5}}</span>--%>
                    <%--<span class="ball">{{num6}}</span>--%>
                    <%--<span class="ball">{{num7}}</span>--%>
                    <%--<span class="ball">{{num8}}</span>--%>
                <%--</div>--%>
                <%--<div class="item-text">--%>
                    <%--<span>{{str1}}</span>--%>
                    <%--<span>{{str2}}</span>--%>
                    <%--<span>{{str3}}</span>--%>
                    <%--<span>{{str4}}</span>--%>
                    <%--<span>{{str5}}</span>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</a>--%>
    <%--</li>--%>
<%--</script>--%>
<%--<script type="text/html" id="template_11">--%>
    <%--<li>--%>
        <%--<a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=11">--%>
            <%--<div class="item-media"><img src="${resPath}img/cz/cz-11.png" style='width: 2.2rem;'></div>--%>
            <%--<div class="item-inner">--%>
                <%--<div class="item-title-row">--%>
                    <%--<div class="item-title">广东快乐十分</div>--%>
                    <%--<div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>--%>
                <%--</div>--%>
                <%--<div class="item-subtitle">--%>
                    <%--<span class="ball">{{num1}}</span>--%>
                    <%--<span class="ball">{{num2}}</span>--%>
                    <%--<span class="ball">{{num3}}</span>--%>
                    <%--<span class="ball">{{num4}}</span>--%>
                    <%--<span class="ball">{{num5}}</span>--%>
                    <%--<span class="ball">{{num6}}</span>--%>
                    <%--<span class="ball">{{num7}}</span>--%>
                    <%--<span class="ball">{{num8}}</span>--%>
                <%--</div>--%>
                <%--<div class="item-text">--%>
                    <%--<span>{{str1}}</span>--%>
                    <%--<span>{{str2}}</span>--%>
                    <%--<span>{{str3}}</span>--%>
                    <%--<span>{{str4}}</span>--%>
                    <%--<span>{{str5}}</span>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</a>--%>
    <%--</li>--%>
<%--</script>--%>
<%--<script type="text/html" id="template_13">--%>
    <%--<li>--%>
        <%--<a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=13">--%>
            <%--<div class="item-media"><img src="${resPath}img/cz/cz-13.png" style='width: 2.2rem;'></div>--%>
            <%--<div class="item-inner">--%>
                <%--<div class="item-title-row">--%>
                    <%--<div class="item-title">三分时时彩</div>--%>
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

<%--<script type="text/html" id="template_14">--%>
    <%--<li>--%>
        <%--<a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=14">--%>
            <%--<div class="item-media"><img src="${resPath}img/cz/cz-14.png" style='width: 2.2rem;'></div>--%>
            <%--<div class="item-inner">--%>
                <%--<div class="item-title-row">--%>
                    <%--<div class="item-title">幸运飞艇</div>--%>
                    <%--<div class="item-after">{{number}}期&nbsp;{{lastOpenTime | dateFormat:'yy-mm-dd HH:MM'}}</div>--%>
                <%--</div>--%>
                <%--<div class="item-subtitle">--%>
                    <%--<span class="ballpk bg-{{num1}}">{{num1}}</span>--%>
                    <%--<span class="ballpk bg-{{num2}}">{{num2}}</span>--%>
                    <%--<span class="ballpk bg-{{num3}}">{{num3}}</span>--%>
                    <%--<span class="ballpk bg-{{num4}}">{{num4}}</span>--%>
                    <%--<span class="ballpk bg-{{num5}}">{{num5}}</span>--%>
                    <%--<span class="ballpk bg-{{num6}}">{{num6}}</span>--%>
                    <%--<span class="ballpk bg-{{num7}}">{{num7}}</span>--%>
                    <%--<span class="ballpk bg-{{num8}}">{{num8}}</span>--%>
                    <%--<span class="ballpk bg-{{num9}}">{{num9}}</span>--%>
                    <%--<span class="ballpk bg-{{num10}}">{{num10}}</span>--%>
                <%--</div>--%>
                <%--<div class="item-text item-text_res">--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</a>--%>
    <%--</li>--%>
<%--</script>--%>
<c:import url="../common/bodyEnd.jsp"/>