<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = RequestUtils.getScheme(request) + "://" + "m." + request.getServerName().replace("m.", "").replace("www.", "");
    String pcHostName = RequestUtils.getScheme(request) + "://" + "www." + request.getServerName().replace("m.", "").replace("www.", "");
%>
<c:import url="../common/bodyStart.jsp"/>
<style>
    .kj{display:block;position:relative;}
    .wrap .kj img{right:0;}
    .wrap .zcw_main .zcw_cus_a .cus_a,.wrap .zcw_main .zcw_cus_a .cus_b{position:relative;}
</style>
<div class="page-group">
    <div class="page page-current re-bg" id="page-index">
        <c:import url="../../../public/theme/common/headNav.jsp"/>
        <c:import url="../../../public/theme/common/bottomNav.jsp"/>


        <div class="content content-img content-vipvp tex_bottom bottom2 top2" id="navBar">
            <div id="lunbo" class="row cl-scroll swiper-container swiper-container-horizontal">
                <div class="swiper-wrapper">
                    <c:forEach items="${carouseList.carouselList}" var="item">
                        <div class="img-sz swiper-slide">
                            <c:choose>
                                <c:when test="${empty item.url}">
                                    <img src="<%=basePath%>images/${item.imageId}.png" />
                                </c:when>
                                <c:otherwise>
                                    <a href="${item.url}">
                                        <img src="<%=basePath%>images/${item.imageId}.png" />
                                    </a>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </c:forEach>
                </div>
                <div class="swiper-pagination repagination"></div>
            </div>

            <div class="cl-4 recl-4" onclick="window.location.href='<%=basePath%>member/gonggao/list.html'">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <marquee behavior="scroll" direction="left" scrolldelay="100" contenteditable="true"
                                 onstart="this.firstChild.innerHTML+=this.firstChild.innerHTML;" scrollamount="5"
                                 width="100%" onmouseover="this.stop();" onmouseout="this.start();">
                            <c:forEach items="${popupNoticeList}" var="item" varStatus="status">
                                <c:if test="${status.count != 1}"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></c:if>
                                <span class="sp_scroll_txt"
                                      style="white-space:nowrap;">${item.title}：${item.content}</span>
                            </c:forEach>
                        </marquee>
                    </div>
                </div>
            </div>

            <div class="wrap">
                <div class="daohang">
                    <ul class="clearfix">
                        <li>
                            <a href="<%=basePath%>member/cqk/ck.html">
                                <p>
                                    存款/提款
                                </p>
                                <img src="${resPath}img/new_zcw/index1_2.png"/>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>member/tzjl/list.html">
                                <p>
                                    投注记录
                                </p>
                                <img src="${resPath}img/new_zcw/index1_3.png"/>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>yhhd.html">
                                <p>
                                    优惠活动
                                </p>
                                <img src="${resPath}img/new_zcw/index1_4.png"/>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>kefu.html">
                                <p>
                                    在线客服
                                </p>
                                <img src="${resPath}img/new_zcw/index1_5.png"/>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="index_tl">
                    <span class="left">热门彩种</span>
                    <c:choose>
                        <c:when test="${not empty userSession}">
                            <div>

                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="pull-right cl-3">
                                <a href="javascript:void(0);" class="right" id="btn-shiwan">免费试玩</a>
                            </div>
                        </c:otherwise>
                    </c:choose>

                </div>

                <div class="zcw_main">
                    <div class="zcw_cus_a">
                        <div class="cus_a">
                            <a href="<%=basePath%>ssc/gcdt/cqssc.html">
                                <img src="${resPath}img/new_zcw/index1_6.png"/>
                                <div>
                                    <span class="dus_a">重庆时时彩</span>
                                    <span class="dus_b">百万用户的选择</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt/pk10.html">
                                <img src="${resPath}img/new_zcw/index1_7.png"/>
                                <div>
                                    <span class="dus_a">北京赛车</span>
                                    <span class="dus_b">赚钱快10分满意</span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="zcw_cus_a">
                        <div class="cus_a">
                            <a href="<%=basePath%>ssc/gcdt/ffssc.html">
                                <img src="${resPath}img/new_zcw/index1_26.png"/>
                                <div>
                                    <span class="dus_a">分分时时彩</span>
                                    <span class="dus_b">24小时在线玩</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt/jspk10.html">
                                <img src="${resPath}img/new_zcw/index1_9.png"/>
                                <div>
                                    <span class="dus_a">极速PK10</span>
                                    <span class="dus_b">中奖率高达99.99%</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="index_tl">
                    <span class="left">全部彩种</span>
                </div>
                <div class="zcw_content">
                    <div class="zcw_cus_a">
                        <div class="cus_a rekj">
                            <a href="<%=basePath%>ssc/gcdt/ffssc.html">
                                <img src="${resPath}img/new_zcw/index1_26.png"/>
                                <div>
                                    <span class="dus_a">分分时时彩</span>
                                    <span class="dus_b">24小时在线玩</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt/cqssc.html">
                                <img src="${resPath}img/new_zcw/index1_6.png"/>
                                <div>
                                    <span class="dus_a">重庆时时彩</span>
                                    <span class="dus_b">百万用户的选择</span>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="zcw_cus_a">
                        <div class="cus_a rekj">
                            <a href="<%=basePath%>ssc/gcdt/pk10.html">
                                <img src="${resPath}img/new_zcw/index1_7.png"/>
                                <div>
                                    <span class="dus_a">北京赛车</span>
                                    <span class="dus_b">赚钱快10分满意</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt/jspk10.html">
                                <img src="${resPath}img/new_zcw/index1_9.png"/>
                                <div>
                                    <span class="dus_a">极速PK10</span>
                                    <span class="dus_b">中奖率高达99.99%</span>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="zcw_cus_a">
                        <div class="cus_a rekj">
                            <c:import url="../common/mainKj.jsp">
                                <c:param name="playGroupId" value="6" />
                            </c:import>
                            <a href="<%=basePath%>ssc/gcdt/lhc.html">
                                <img src="${resPath}img/new_zcw/index1_10.png"/>
                                <div>
                                    <span class="dus_a">香港六合彩</span>
                                    <span class="dus_b">全网最高48.8倍</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt/ahk3.html">
                                <img src="${resPath}img/new_zcw/index1_15.png"/>
                                <div>
                                    <span class="dus_a">安徽快3</span>
                                    <span class="dus_b">每10分钟一期</span>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="zcw_cus_a">
                        <div class="cus_a rekj">
                            <a href="<%=basePath%>ssc/gcdt/hbk3.html">
                                <img src="${resPath}img/new_zcw/index1_16.png"/>
                                <div>
                                    <span class="dus_a">湖北快3</span>
                                    <span class="dus_b">每10分钟一期</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt/xyft.html">
                                <img src="${resPath}img/new_zcw/index1_11.png"/>
                                <div>
                                    <span class="dus_a">幸运飞艇</span>
                                    <span class="dus_b">每5分钟一期</span>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="zcw_cus_a">
                        <div class="cus_a rekj">
                            <a href="<%=basePath%>ssc/gcdt/xjssc.html">
                                <img src="${resPath}img/new_zcw/index1_18.png"/>
                                <div>
                                    <span class="dus_a">新疆时时彩</span>
                                    <span class="dus_b">每10分钟一期</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt/tjssc.html">
                                <img src="${resPath}img/new_zcw/index1_17.png"/>
                                <div>
                                    <span class="dus_a">天津时时彩</span>
                                    <span class="dus_b">每10分钟一期</span>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="zcw_cus_a">
                        <div class="cus_a">
                            <a href="<%=basePath%>ssc/gcdt/xync.html">
                                <img src="${resPath}img/new_zcw/index1_22.png"/>
                                <div>
                                    <span class="dus_a">重庆幸运农场</span>
                                    <span class="dus_b">白天10点到凌晨2点</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt/klsf.html">
                                <img src="${resPath}img/new_zcw/index1_23.png"/>
                                <div>
                                    <span class="dus_a">广东快乐十分</span>
                                    <span class="dus_b">每10分钟一期</span>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="zcw_cus_a">
                        <div class="cus_a">
                            <a href="<%=basePath%>ssc/gcdt/bj28.html">
                                <img src="${resPath}img/new_zcw/index1_25.png"/>
                                <div>
                                    <span class="dus_a">PC蛋蛋</span>
                                    <span class="dus_b">北京28赢大奖</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt/kl8.html">
                                <img src="${resPath}img/new_zcw/index1_21.png"/>
                                <div>
                                    <span class="dus_a">北京快乐8</span>
                                    <span class="dus_b">每5分钟一期</span>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="zcw_cus_a">
                        <div class="cus_a">
                            <a href="<%=basePath%>ssc/gcdt/fc3d.html">
                                <img src="${resPath}img/new_zcw/index1_19.png"/>
                                <div>
                                    <span class="dus_a">福彩3D</span>
                                    <span class="dus_b">每天08:30</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt/pl3.html">
                                <img src="${resPath}img/new_zcw/index1_20.png"/>
                                <div>
                                    <span class="dus_a">体育排列3</span>
                                    <span class="dus_b">每天08:30</span>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="zcw_cus_a">
                        <div class="cus_a">
                            <a href="<%=basePath%>ssc/gcdt/efssc.html">
                                <img src="${resPath}img/new_zcw/index1_14.png"/>
                                <div>
                                    <span class="dus_a">两分时时彩</span>
                                    <span class="dus_b">全天在线可玩</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt/sfssc.html">
                                <img src="${resPath}img/new_zcw/index1_12.png"/>
                                <div>
                                    <span class="dus_a">三分时时彩</span>
                                    <span class="dus_b">每3分钟一期</span>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="zcw_cus_a">
                        <div class="cus_a">
                            <a href="<%=basePath%>ssc/gcdt/wfssc.html">
                                <img src="${resPath}img/new_zcw/index1_13.png"/>
                                <div>
                                    <span class="dus_a">五分时时彩</span>
                                    <span class="dus_b">每5分钟一期</span>
                                </div>
                            </a>
                        </div>
                        <div class="cus_b">
                            <a href="<%=basePath%>ssc/gcdt.html">
                                <img src="${resPath}img/new_zcw/index1_24.png"/>
                                <div>
                                    <span class="dus_a">+更多......</span>
                                    <span class="dus_b">查看全部彩种</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="gg">
                    <img src="${resPath}img/new_zcw/gg.png" class="left"/>
                    <div class="gg_nr">
                        <marquee direction="up" behavior="scroll" scrollamount="2" scrolldelay="1" loop="-1" width="500"
                                 height="50" bgcolor="#fff">
                            <ul class="zjUl">
                                <%--<c:forEach items="${Notices.noticeList}" var="noticelists">--%>
                                    <%--<li class="clearfix">--%>
                                        <%--<span class="left gongxi">恭喜</span>--%>
                                        <%--<span class="left">${noticelists.userName}</span>--%>
                                        <%--<span class="left">投注</span>--%>
                                        <%--<span class="left" style="color: #ff0101;">${noticelists.type}</span>--%>
                                        <%--<span class="left">中奖</span>--%>
                                        <%--<span class="left" style="color: #ff7e00;">${noticelists.amount}</span>--%>
                                    <%--</li>--%>
                                <%--</c:forEach>--%>
                            </ul>
                        </marquee>

                    </div>
                </div>
            </div>
        </div>
        <div ng-if="addedHome" class="add-home hideAddhome">
            <div class="add-home-content" style="position: relative"><img src="${resPath}img/ico888.png">
                <p class="ng-binding">先点击<i class="icon jticon"></i></p>
                <p ng-bind="'Common.Tips.AddToHomeScreen'|translate" class="ng-binding">再“添加到主屏幕”</p><i class="closeAddHome icon" style="position: absolute; top:0;right: 12px; font-size: 15px;">×</i>
                <em></em></div>
        </div>

    </div>
    <c:import url="../common/rightPanel.jsp"/>
</div>
<c:import url="../common/commonJs.jsp"/>
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
<c:import url="../common/bodyEnd.jsp"/>
