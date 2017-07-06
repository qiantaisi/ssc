<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page import="project38.api.common.utils.JSONUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group re-bg-group">
    <div class="page page-current re-background" id="page-gcdt">
        <header class="bar bar-nav cl-1 recl-1">
            <a href="javascript:void(0)" class="fanhui head_back_gcdt">
                <span>返回</span>
            </a>
            <h1 class="title reimg">
                <%--<img src="${resPath}img/kaihead_06.png"/>--%>
            ${webCompanyName}购彩大厅
            </h1>
        </header>
        <%--<c:import url="../../common/bottomNav2.jsp"/>--%>
        <c:import url="../../../../public/theme/common/bottomNav.jsp" />
        <div class="content re-con-out bottom2 gcdt-content">
            <div class="buy_fenlei">
                <a href="javascript:void(0);" class="ahover allcai-btn">
                    全部分类
                </a>
                <a href="javascript:void(0);" class="gpcai-btn">
                    高频彩
                </a>
                <a href="javascript:void(0);" class="dpcai-btn">
                    低频彩
                </a>
                <a href="javascript:void(0);" class="PK10-btn">
                    PK10
                </a>
                <a href="javascript:void(0);" class="ssc-btn">
                    时时彩
                </a>
                <a href="javascript:void(0);" class="k3-btn">
                     快3
                </a>
            </div>

            <c:if test="${setLogUserGames != null || fn:length(setLogUserGames) != 0}">
                <div class="buy_main">
                    <div class="index_tl">
	     		<span>
	     			您最近玩过的
	     		</span>
                    </div>

                    <ul class="buy_ul clearfix">
                        <c:forEach items="${setLogUserGames}" var="userItems">
                            <c:choose>
                                <c:when test="${userItems == 1}">
                                    <li>
                                        <a data-play_group_id="1" href="<%=basePath%>ssc/gcdt/cqssc.html">
                                            <img src="${resPath}images/buy_07.png"/>
                                            <p>
                                                重庆时时彩
                                            </p>
                                            <p class="buydate buy_date1">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 7}">
                                    <li>
                                        <a data-play_group_id="7" href="<%=basePath%>ssc/gcdt/xy28.html">
                                            <img src="${resPath}images/buy_22.png"/>
                                            <p>
                                                PC蛋蛋
                                            </p>
                                            <p class="buydate buy_date1">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 9}">
                                    <li>
                                        <a href="<%=basePath%>ssc/gcdt/pk10.html" data-play_group_id="9">
                                            <img src="${resPath}/images/buy_23.png"/>
                                            <p>
                                                北京赛车
                                            </p>
                                            <p class="buydate buy_date8">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 17}">
                                    <li>
                                        <a data-play_group_id="17"
                                           href="<%=basePath%>ssc/gcdt/wfssc.html">
                                            <img src="${resPath}/images/buy_24.png"/>
                                            <p>
                                                五分时时彩
                                            </p>
                                            <p class="buydate buy_date9">

                                                <span class="hour">00</span>:
                                                <span class="mini">00</span>:
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 16}">
                                    <li>
                                        <a data-play_group_id="16"
                                           href="<%=basePath%>ssc/gcdt/efssc.html">
                                            <img src="${resPath}/images/buy28.png"/>
                                            <p>
                                                两分时时彩
                                            </p>
                                            <p class="buydate buy_date10">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 19}">
                                    <li>
                                        <a data-play_group_id="19"
                                           href="<%=basePath%>ssc/gcdt/hbk3.html">
                                            <img src="${resPath}/images/buy_29.png"/>
                                            <p>
                                                湖北快3
                                            </p>
                                            <p class="buydate buy_date11">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 2}">
                                    <li>
                                        <a data-play_group_id="2"
                                           href="<%=basePath%>ssc/gcdt/tjssc.html">
                                            <img src="${resPath}/images/buy_30.png"/>
                                            <p>
                                                天津时时彩
                                            </p>
                                            <p class="buydate buy_date12">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 3}">
                                    <li>
                                        <a data-play_group_id="3"
                                           href="<%=basePath%>ssc/gcdt/xjssc.html">
                                            <img src="${resPath}/images/buy34.png"/>
                                            <p>
                                                新疆时时彩
                                            </p>
                                            <p class="buydate buy_date13">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 4}">
                                    <li>
                                        <a data-play_group_id="4"
                                           href="<%=basePath%>ssc/gcdt/pl3.html">
                                            <img src="${resPath}/images/buy36.png"/>
                                            <p>
                                                体彩排列3
                                            </p>
                                            <p class="buydate buy_date15">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 5}">
                                    <li>
                                        <a data-play_group_id="5"
                                           href="<%=basePath%>ssc/gcdt/fc3d.html">
                                            <img src="${resPath}/images/buy_34.png"/>
                                            <p>
                                                福彩3D
                                            </p>
                                            <p class="buydate buy_date14">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 6}">
                                    <li>
                                        <a data-play_group_id="6" href="<%=basePath%>ssc/gcdt/lhc.html">
                                            <img src="${resPath}images/buy1_16.png"/>
                                            <p>
                                                香港六合彩
                                            </p>
                                            <p class="buydate buy_date1">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 8}">
                                    <li>
                                        <a data-play_group_id="8"
                                           href="<%=basePath%>ssc/gcdt/kl8.html">
                                            <img src="${resPath}/images/buy_40.png"/>
                                            <p>
                                                北京快乐8
                                            </p>
                                            <p class="buydate buy_date16">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 10}">
                                    <li>
                                        <a data-play_group_id="10"
                                           href="<%=basePath%>ssc/gcdt/xync.html">
                                            <img src="${resPath}/images/buy_41.png"/>
                                            <p>
                                                重庆幸运农场
                                            </p>
                                            <p class="buydate buy_date17">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>

                                <c:when test="${userItems == 11}">
                                    <li>
                                        <a data-play_group_id="11"
                                           href="<%=basePath%>ssc/gcdt/klsf.html">
                                            <img src="${resPath}/images/buy40.png"/>
                                            <p>
                                                广东快乐十分
                                            </p>
                                            <p class="buydate buy_date18">

                                                <span class="hour">00</span>&nbsp;:&nbsp;
                                                <span class="mini">00</span>&nbsp;:&nbsp;
                                                <span class="sec">00</span>
                                            </p>
                                        </a>
                                    </li>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                    </ul>
                </div>
            </c:if>

            <div class="buy_main allcai">
                <div class="index_tl">
	     		<span>
	     			全部种类
	     		</span>
                </div>

                <ul class="buy_ul clearfix">
                    <li>
                        <a data-play_group_id="7" href="<%=basePath%>ssc/gcdt/xy28.html">
                            <img src="${resPath}images/buy_22.png" />
                            <p>
                                PC蛋蛋
                            </p>
                            <p class="buydate buy_date1">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a href="<%=basePath%>ssc/gcdt/pk10.html" data-play_group_id="9">
                            <img src="${resPath}/images/buy_23.png" />
                            <p>
                                北京赛车
                            </p>
                            <p class="buydate buy_date8">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="17"
                           href="<%=basePath%>ssc/gcdt/wfssc.html">
                            <img src="${resPath}/images/buy_24.png" />
                            <p>
                                五分时时彩
                            </p>
                            <p class="buydate buy_date9">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="16"
                           href="<%=basePath%>ssc/gcdt/efssc.html">
                            <img src="${resPath}/images/buy28.png" />
                            <p>
                                两分时时彩
                            </p>
                            <p class="buydate buy_date10">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="19"
                           href="<%=basePath%>ssc/gcdt/hbk3.html">
                            <img src="${resPath}/images/buy_29.png" />
                            <p>
                                湖北快3
                            </p>
                            <p class="buydate buy_date11">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="2"
                           href="<%=basePath%>ssc/gcdt/tjssc.html">
                            <img src="${resPath}/images/buy_30.png" />
                            <p>
                                天津时时彩
                            </p>
                            <p class="buydate buy_date12">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="3"
                           href="<%=basePath%>ssc/gcdt/xjssc.html">
                            <img src="${resPath}/images/buy34.png" />
                            <p>
                                新疆时时彩
                            </p>
                            <p class="buydate buy_date13">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="5"
                           href="<%=basePath%>ssc/gcdt/fc3d.html">
                            <img src="${resPath}/images/buy_34.png" />
                            <p>
                                福彩3D
                            </p>
                            <p class="buydate buy_date14">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="4"
                           href="<%=basePath%>ssc/gcdt/pl3.html">
                            <img src="${resPath}/images/buy36.png" />
                            <p>
                                体彩排列3
                            </p>
                            <p class="buydate buy_date15">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="8"
                           href="<%=basePath%>ssc/gcdt/kl8.html">
                            <img src="${resPath}/images/buy_40.png" />
                            <p>
                                北京快乐8
                            </p>
                            <p class="buydate buy_date16">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="10"
                           href="<%=basePath%>ssc/gcdt/xync.html">
                            <img src="${resPath}/images/buy_41.png" />
                            <p>
                                重庆幸运农场
                            </p>
                            <p class="buydate buy_date17">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="11"
                           href="<%=basePath%>ssc/gcdt/klsf.html">
                            <img src="${resPath}/images/buy40.png" />
                            <p>
                                广东快乐十分
                            </p>
                            <p class="buydate buy_date18">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>

                </ul>
            </div>

            <div class="buy_main gpcai">
                <div class="index_tl">
	     		<span>
	     			高频彩
	     		</span>
                </div>

                <ul class="buy_ul clearfix">
                    <li>
                        <a data-play_group_id="15"
                           href="<%=basePath%>ssc/gcdt/ffssc.html">
                            <img src="${resPath}images/buy11.png" />
                            <p>
                                分分时时彩
                            </p>
                            <p class="buydate buy_date1">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="1" href="<%=basePath%>ssc/gcdt/cqssc.html">
                            <img src="${resPath}/images/buy_07.png" />
                            <p>
                                重庆时时彩
                            </p>
                            <p class="buydate buy_date8">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="9" href="<%=basePath%>ssc/gcdt/pk10.html">
                            <img src="${resPath}/images/buy_09.png" />
                            <p>
                                北京PK10
                            </p>
                            <p class="buydate buy_date9">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="23"
                           href="<%=basePath%>ssc/gcdt/jspk10.html">
                            <img src="${resPath}/images/buy_16.png" />
                            <p>
                                极速PK10
                            </p>
                            <p class="buydate buy_date10">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="14" href="<%=basePath%>ssc/gcdt/xyft.html">
                            <img src="${resPath}/images/buy_18.png" />
                            <p>
                                幸运飞艇
                            </p>
                            <p class="buydate buy_date11">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <%--<li>--%>
                        <%--<a data-play_group_id="20"--%>
                           <%--href="<%=basePath%>ssc/gcdt/ahk3.html">--%>
                            <%--<img src="${resPath}/images/buy_29.png" />--%>
                            <%--<p>--%>
                                <%--安徽快3--%>
                            <%--</p>--%>
                            <%--<p class="buydate buy_date12">--%>

                                <%--<span class="hour">00</span>:--%>
                                <%--<span class="mini">00</span>:--%>
                                <%--<span class="sec">00</span>--%>
                            <%--</p>--%>
                        <%--</a>--%>
                    <%--</li>--%>
                    <li>
                        <a data-play_group_id="19"
                           href="<%=basePath%>ssc/gcdt/hbk3.html">
                            <img src="${resPath}/images/buy_29.png" />
                            <p>
                                湖北快3
                            </p>
                            <p class="buydate buy_date13">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="3" href="<%=basePath%>ssc/gcdt/xjssc.html">
                            <img src="${resPath}/images/buy34.png" />
                            <p>
                                新疆时时彩
                            </p>
                            <p class="buydate buy_date14">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="2" href="<%=basePath%>ssc/gcdt/tjssc.html">
                            <img src="${resPath}/images/buy_30.png" />
                            <p>
                                天津时时彩
                            </p>
                            <p class="buydate buy_date15">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="10" href="<%=basePath%>ssc/gcdt/xync.html">
                            <img src="${resPath}/images/buy_41.png" />
                            <p>
                                重庆幸运农场
                            </p>
                            <p class="buydate buy_date16">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="11" href="<%=basePath%>ssc/gcdt/klsf.html">
                            <img src="${resPath}/images/buy_40.png" />
                            <p>
                                广东快乐十分
                            </p>
                            <p class="buydate buy_date17">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="7" href="<%=basePath%>ssc/gcdt/xy28.html">
                            <img src="${resPath}/images/buy_22.png" />
                            <p>
                                幸运28
                            </p>
                            <p class="buydate buy_date18">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a  data-play_group_id="8" href="<%=basePath%>ssc/gcdt/kl8.html">
                            <img src="${resPath}/images/buy_40.png" />
                            <p>
                                北京快乐8
                            </p>
                            <p class="buydate buy_date18">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="16"
                           href="<%=basePath%>ssc/gcdt/efssc.html">
                            <img src="${resPath}/images/buy28.png" />
                            <p>
                                两分时时彩
                            </p>
                            <p class="buydate buy_date18">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="13" href="<%=basePath%>ssc/gcdt/sfssc.html">
                            <img src="${resPath}/images/buy_23.png" />
                            <p>
                                三分时时彩
                            </p>
                            <p class="buydate buy_date18">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="17"
                           href="<%=basePath%>ssc/gcdt/wfssc.html">
                            <img src="${resPath}/images/buy_24.png" />
                            <p>
                                五分时时彩
                            </p>
                            <p class="buydate buy_date18">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>

                </ul>
            </div>

            <div class="buy_main ssc">
                <div class="index_tl">
	     		<span>
	     			时时彩
	     		</span>
                </div>

                <ul class="buy_ul clearfix">
                    <li>
                        <a data-play_group_id="15"
                           href="<%=basePath%>ssc/gcdt/ffssc.html">
                            <img src="${resPath}images/buy11.png" />
                            <p>
                                分分时时彩
                            </p>
                            <p class="buydate buy_date1">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="1" href="<%=basePath%>ssc/gcdt/cqssc.html">
                            <img src="${resPath}/images/buy_07.png" />
                            <p>
                                重庆时时彩
                            </p>
                            <p class="buydate buy_date8">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="3" href="<%=basePath%>ssc/gcdt/xjssc.html">
                            <img src="${resPath}/images/buy34.png" />
                            <p>
                                新疆时时彩
                            </p>
                            <p class="buydate buy_date14">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="2" href="<%=basePath%>ssc/gcdt/tjssc.html">
                            <img src="${resPath}/images/buy_30.png" />
                            <p>
                                天津时时彩
                            </p>
                            <p class="buydate buy_date15">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="16"
                           href="<%=basePath%>ssc/gcdt/efssc.html">
                            <img src="${resPath}/images/buy28.png" />
                            <p>
                                两分时时彩
                            </p>
                            <p class="buydate buy_date18">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="17"
                           href="<%=basePath%>ssc/gcdt/wfssc.html">
                            <img src="${resPath}/images/buy_24.png" />
                            <p>
                                五分时时彩
                            </p>
                            <p class="buydate buy_date18">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="13" href="<%=basePath%>ssc/gcdt/sfssc.html">
                            <img src="${resPath}/images/buy_23.png" />
                            <p>
                                三分时时彩
                            </p>
                            <p class="buydate buy_date18">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>

                </ul>
            </div>

            <div class="buy_main dpcai">
                <div class="index_tl">
	     		<span>
	     			低频彩
	     		</span>
                </div>

                <ul class="buy_ul clearfix">
                    <li>
                        <a  data-play_group_id="6" href="<%=basePath%>ssc/gcdt/lhc.html">
                            <img src="${resPath}images/buy1_16.png"/>
                            <p>
                                香港六合彩
                            </p>
                            <p class="buydate buy_date1">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="5" href="<%=basePath%>ssc/gcdt/fc3d.html">
                            <img src="${resPath}images/buy_34.png"/>
                            <p>
                                福彩3D
                            </p>
                            <p class="buydate buy_date1">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a  data-play_group_id="4" href="<%=basePath%>ssc/gcdt/pl3.html">
                            <img src="${resPath}images/buy36.png"/>
                            <p>
                                体彩排列3
                            </p>
                            <p class="buydate buy_date1">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="buy_main PK10">
            <div class="index_tl">
	     		<span>
	     			PK10
	     		</span>
            </div>

            <ul class="buy_ul clearfix">
                <li>
                    <a data-play_group_id="9" href="<%=basePath%>ssc/gcdt/pk10.html">
                        <img src="${resPath}/images/buy_09.png" />
                        <p>
                            北京PK10
                        </p>
                        <p class="buydate buy_date9">

                            <span class="hour">00</span>&nbsp;:&nbsp;
                            <span class="mini">00</span>&nbsp;:&nbsp;
                            <span class="sec">00</span>
                        </p>
                    </a>
                </li>
                <li>
                    <a data-play_group_id="23"
                       href="<%=basePath%>ssc/gcdt/jspk10.html">
                        <img src="${resPath}/images/buy_16.png" />
                        <p>
                            极速PK10
                        </p>
                        <p class="buydate buy_date10">

                            <span class="hour">00</span>&nbsp;:&nbsp;
                            <span class="mini">00</span>&nbsp;:&nbsp;
                            <span class="sec">00</span>
                        </p>
                    </a>
                </li>
                <li>
                    <a data-play_group_id="14" href="<%=basePath%>ssc/gcdt/xyft.html">
                        <img src="${resPath}/images/buy_18.png" />
                        <p>
                            幸运飞艇
                        </p>
                        <p class="buydate buy_date11">

                            <span class="hour">00</span>&nbsp;:&nbsp;
                            <span class="mini">00</span>&nbsp;:&nbsp;
                            <span class="sec">00</span>
                        </p>
                    </a>
                </li>
            </ul>
        </div>

            <div class="buy_main k3">
                <div class="index_tl">
	     		<span>
	     			快3
	     		</span>
                </div>

                <ul class="buy_ul clearfix">
                    <li>
                        <a data-play_group_id="19"
                           href="<%=basePath%>ssc/gcdt/hbk3.html">
                            <img src="${resPath}/images/buy_29.png" />
                            <p>
                                湖北快3
                            </p>
                            <p class="buydate buy_date11">

                                <span class="hour">00</span>&nbsp;:&nbsp;
                                <span class="mini">00</span>&nbsp;:&nbsp;
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>
                    <li>
                        <a data-play_group_id="20"
                        href="<%=basePath%>ssc/gcdt/ahk3.html">
                        <img src="${resPath}/images/buy_29.png" />
                        <p>
                        安徽快3
                        </p>
                        <p class="buydate buy_date12">

                        <span class="hour">00</span>
                        <span class="mini">00</span>
                        <span class="sec">00</span>
                        </p>
                        </a>
                        </li>
                </ul>
            </div>

            <c:import url="../../common/copyright.jsp"/>
        </div>
    </div>

    <c:import url="../../common/leftSscPanel.jsp"/>
    <c:import url="../../common/rightPanel.jsp"/>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>