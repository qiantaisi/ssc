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
            <a href="javascript:void(0)" class="button button-link button-nav pull-left fanhui">
                <span class="icon icon-left reicon"></span>
            </a>
            <h1 class="title reimg">
                <%--<img src="${resPath}img/kaihead_06.png"/>--%>
                    ${webCompanyName}购彩大厅
            </h1>
        </header>
        <%--<c:import url="../../common/bottomNav2.jsp"/>--%>
        <c:import url="../../../../public/theme/common/bottomNav.jsp" />
        <div class="content re-con-out bottom2">
            <div class="buy_fenlei">
                <a href="javascript:;" class="ahover">
                    全部分类
                </a>
                <a href="javascript:void(0);">
                    高频彩
                </a>
                <a href="javascript:void(0);">
                    低频彩
                </a>
            </div>

            <div class="buy_main">
                <div class="index_tl">
	     		<span>
	     			您最近玩过的
	     		</span>
                </div>

                <ul class="buy_ul clearfix">
                    <li>
                        <a data-play_group_id="1" href="<%=basePath%>ssc/gcdt/cqssc.html">
                            <img src="${resPath}images/buy_07.png" />
                            <p>
                                重庆时时彩
                            </p>
                            <p class="buydate buy_date1">

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
                                <span class="sec">00</span>
                            </p>
                        </a>
                    </li>

                </ul>
            </div>


            <div class="buy_main">
                <div class="index_tl">
	     		<span>
	     			全部种类
	     		</span>
                </div>

                <ul class="buy_ul clearfix">
                    <li>
                        <a href="<%=basePath%>ssc/gcdt/ffssc.html" data-play_group_id="15">
                            <img src="${resPath}/images/buy11.png" />
                            <p>
                                分分时时彩
                            </p>
                            <p class="buydate buy_date7">

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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

                                <span class="hour">00</span>:
                                <span class="mini">00</span>:
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