<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="com.petsathall.project.common.utils.DateUtils" %>
<%@ page import="com.petsathall.project.common.utils.JSONUtils" %>
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
<div class="page-group">
    <div class="page page-current" id="page-gcdt">
        <header class="bar bar-nav cl-1">
            <a class="button button-link button-nav pull-left open-panel" data-panel='#panel-left'>
                <font>彩种列表</font>
                <span class="icon icon-top-gcdt"></span>
            </a>
            <c:choose>
                <c:when test="${not empty userSession}">
                    <a class="button button-link pull-right open-panel" data-panel='#panel-right'>
                        菜单
                    </a>
                    <h1 class="title">
                        <span class="cl-800">余额：<font class="cl-316">${userSession.balance}</font>元</span>
                    </h1>
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
        <c:import url="../../common/bottomNav.jsp"/>
        <div class="content">
            <div class="cl-4">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <c:forEach items="${popupNoticeList}" var="item">
                            <div class="swiper-slide" data-title="${item.title}"
                                 data-content="${item.content}">${item.title}</div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="row cl-6 cl-317">
                <div class="col-100">
                    <span class="left">高频彩</span>
                </div>
            </div>
            <div class="cl-7">
                <div class="row cl-318 gcdtList">
                    <a class="col-25 col-33 a_bottom" data-play_group_id="13" href="<%=basePath%>ssc/gcdt/sfssc.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-sfssc"></span>
                        <span>三分时时彩</span>
                    </a>
                    <a class="col-25 col-33 a_bottom" data-play_group_id="9" href="<%=basePath%>ssc/gcdt/pk10.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-pk10"></span>
                        <span>北京PK10</span>
                    </a>
                    <a class="col-25 col-33 a_bottom" data-play_group_id="14" href="<%=basePath%>ssc/gcdt/xyft.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-xyft"></span>
                        <span>幸运飞艇</span>
                    </a>
                    <a class="col-25 col-33 a_bottom" data-play_group_id="1" href="<%=basePath%>ssc/gcdt/cqssc.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-cqssc"></span>
                        <span>重庆时时彩</span>
                    </a>
                </div>
                <div class="row cl-318 gcdtList">
                    <a class="col-25 col-33 a_bottom" data-play_group_id="3" href="<%=basePath%>ssc/gcdt/xjssc.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-xjssc"></span>
                        <span>新疆时时彩</span>
                    </a>
                    <a class="col-25 col-33 a_bottom" data-play_group_id="11" href="<%=basePath%>ssc/gcdt/klsf.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-klsf"></span>
                        <span>广东快乐十分</span>
                    </a>
                    <a class="col-25 col-33 a_bottom" data-play_group_id="7" href="<%=basePath%>ssc/gcdt/xy28.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-xy28"></span>
                        <span>幸运28</span>
                    </a>
                    <a class="col-25 col-33 a_bottom" data-play_group_id="8" href="<%=basePath%>ssc/gcdt/kl8.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-kl8"></span>
                        <span>北京快乐8</span>
                    </a>
                </div>
                <div class="row cl-318 gcdtList">
                    <a class="col-25 col-33 a_bottom" data-play_group_id="2" href="<%=basePath%>ssc/gcdt/tjssc.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-tjssc"></span>
                        <span>天津时时彩</span>
                    </a>
                    <a class="col-25 col-33 a_bottom" data-play_group_id="10" href="<%=basePath%>ssc/gcdt/xync.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-cqxync"></span>
                        <span>重庆幸运农场</span>
                    </a>
                    <a class="col-25 col-33 re_a_bottom" data-play_group_id="15"
                       href="<%=basePath%>ssc/gcdt/ffssc.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-ffssc"></span>
                        <span>分分时时彩</span>
                    </a>
                    <a class="col-25 col-33 re_a_bottom" data-play_group_id="16"
                       href="<%=basePath%>ssc/gcdt/efssc.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-efssc"></span>
                        <span>两分时时彩</span>
                    </a>
                </div>
                <div class="row cl-318 gcdtList">

                </div>
                <div class="row cl-318 gcdtList">
                    <a class="col-25 col-33 a_bottom" data-play_group_id="17"
                       href="<%=basePath%>ssc/gcdt/wfssc.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-wfssc"></span>
                        <span>五分时时彩</span>
                    </a>
                    <a class="col-25 col-33 re_a_bottom" data-play_group_id="18"
                       href="<%=basePath%>ssc/gcdt/jsk3.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-jsk3"></span>
                        <span>江苏快3</span>
                    </a>
                    <a class="col-25 col-33 re_a_bottom" data-play_group_id="19"
                       href="<%=basePath%>ssc/gcdt/hbk3.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-hbk3"></span>
                        <span>湖北快3</span>
                    </a>
                    <a class="col-25 col-33 re_a_bottom" data-play_group_id="20"
                       href="<%=basePath%>ssc/gcdt/ahk3.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-ahk3"></span>
                        <span>安徽快3</span>
                    </a>
                </div>
                <div class="row cl-318 gcdtList">
                    <a class="col-25 col-33 re_a_bottom" data-play_group_id="21"
                       href="<%=basePath%>ssc/gcdt/jlk3.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-jlk3"></span>
                        <span>吉林快3</span>
                    </a>
                    <a class="col-25 col-33 re_a_bottom"></a>
                    <a class="col-25 col-33 re_a_bottom"></a>
                    <a class="col-25 col-33 re_a_bottom"></a>
                </div>
                <div class="row cl-318 gcdtList">
                    <a class="col-25 col-33 re_a_bottom" ></a>
                </div>
            </div>
            <div class="row cl-6 cl-317">
                <div class="col-100">
                    <span class="left">低频彩</span>
                </div>
            </div>
            <div class="cl-7">
                <div class="row cl-318 gcdtList">
                    <a class="col-25 col-33 b_bottom" data-play_group_id="6" href="<%=basePath%>ssc/gcdt/lhc.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-lhc"></span>
                        <span>香港六合彩</span>
                    </a>
                    <a class="col-25 col-33 b_bottom" data-play_group_id="5" href="<%=basePath%>ssc/gcdt/fc3d.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-3d"></span>
                        <span>福彩3D</span>
                    </a>
                    <a class="col-25 col-33 b_bottom" data-play_group_id="4" href="<%=basePath%>ssc/gcdt/pl3.html">
                        <span class="info">距离开盘</span>
                        <span class="time">
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                          <font>:</font>
                          <i>00</i>
                        </span>
                        <span class="img bg-img-pl3"></span>
                        <span>体彩排列3</span>
                    </a>
                </div>
            </div>
            <c:import url="../../common/copyright.jsp"/>
        </div>
    </div>

    <c:import url="../../common/leftSscPanel.jsp"/>
    <c:import url="../../common/rightPanel.jsp"/>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>