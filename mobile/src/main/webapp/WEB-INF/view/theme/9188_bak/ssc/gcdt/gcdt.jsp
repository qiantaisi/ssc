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
                购彩大厅
            </h1>
        </header>
        <c:import url="../../common/bottomNav.jsp"/>
        <div class="content re-con-out">
            <a href="javascript:void(0)" class="list-block relb btn-xl-ssc">
                 <div class="item-content item-link reitem-link reitem-link-ed" href="javascript:void(0)">
                     <div class="reit-inner">
                         <div class="item-title">时时彩系列</div>
                     </div>
                     <span class="img_jian"></span>
                 </div>
            </a>
            <div class="cl-7 ssc-div-content" sp="0">
                <div class="row cl-318 gcdtList re-gctList-bg">
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="15" href="<%=basePath%>ssc/gcdt/ffssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-ffssc"></span>
                        <span>分分时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="1" href="<%=basePath%>ssc/gcdt/cqssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-cqssc"></span>
                        <span>重庆时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="3" href="<%=basePath%>ssc/gcdt/xjssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-xjssc"></span>
                        <span>新疆时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem tjssc-a" data-play_group_id="2" href="<%=basePath%>ssc/gcdt/tjssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-tjssc"></span>
                        <span>天津时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem lfssc-a" data-play_group_id="16" href="<%=basePath%>ssc/gcdt/efssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-efssc"></span>
                        <span>两分时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem sfssc-a" data-play_group_id="13" href="<%=basePath%>ssc/gcdt/sfssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-sfssc"></span>
                        <span>三分时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem wfssc-a" data-play_group_id="17" href="<%=basePath%>ssc/gcdt/wfssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-wfssc"></span>
                        <span>五分时时彩</span>
                    </a>
                </div>
            </div>

            <a class="list-block relb relb-k3xl btn-xl-pk10">
                <div class="item-content reitem-link" href="javascript:void(0)">
                    <div class="reit-inner">
                        <div class="item-title">PK10系列</div>
                    </div>
                    <span class="img_jian"></span>
                </div>
            </a>
            <div class="cl-7 pk10-div-content" sp="0">
                <div class="row cl-318 gcdtList re-gctList-bg">
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="9"
                       href="<%=basePath%>ssc/gcdt/pk10.html">
                        <span class="jc"></span>
                        <span class="img bg-img-pk10"></span>
                        <span>北京PK10</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="14"
                       href="<%=basePath%>ssc/gcdt/xyft.html">
                        <span class="jc"></span>
                        <span class="img bg-img-xyft"></span>
                        <span>幸运飞艇</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="23"
                       href="<%=basePath%>ssc/gcdt/jspk10.html">
                        <span class="jc"></span>
                        <span class="img bg-img-jspk10"></span>
                        <span>极速PK10</span>
                    </a>
                </div>
            </div>

            <a href="javascript:void(0)" class="list-block relb relb-k3xl re-margin-top btn-xl-k3">
                <div class="item-content reitem-link" href="javascript:void(0)">
                    <div class="reit-inner">
                        <div class="item-title">快3系列</div>
                    </div>
                    <span class="img_jian"></span>
                </div>
            </a>
            <div class="cl-7 k3-div-content" sp="0">
                <div class="row cl-318 gcdtList re-gctList-bg">
                    <a class="col-25 col-33 vipcp_bottem jsk3-a" data-play_group_id="18"
                       href="<%=basePath%>ssc/gcdt/jsk3.html">
                        <span class="jc"></span>
                        <span class="img bg-img-jsk3"></span>
                        <span>江苏快3</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem ahk3-a" data-play_group_id="20"
                       href="<%=basePath%>ssc/gcdt/ahk3.html">
                        <span class="jc"></span>
                        <span class="img bg-img-ahk3"></span>
                        <span>安徽快3</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem hbk3-a" data-play_group_id="19"
                       href="<%=basePath%>ssc/gcdt/hbk3.html">
                        <span class="jc"></span>
                        <span class="img bg-img-hbk3"></span>
                        <span>湖北快3</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem jlk3-a" data-play_group_id="21"
                       href="<%=basePath%>ssc/gcdt/jlk3.html">
                        <span class="jc"></span>
                        <span class="img bg-img-jlk3"></span>
                        <span>吉林快3</span>
                    </a>
                </div>
            </div>

            <a class="list-block relb relb-k3xl btn-xl-gp">
                <div class="item-content reitem-link" href="javascript:void(0)">
                    <div class="reit-inner">
                        <div class="item-title">高频彩</div>
                    </div>
                    <span class="img_jian"></span>
                </div>
            </a>
            <div class="cl-7 gp-div-content" sp="0">
                <div class="row cl-318 gcdtList re-gctList-bg">
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="15" href="<%=basePath%>ssc/gcdt/ffssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-ffssc"></span>
                        <span>分分时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="1" href="<%=basePath%>ssc/gcdt/cqssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-cqssc"></span>
                        <span>重庆时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="3" href="<%=basePath%>ssc/gcdt/xjssc.html">
                        <span class="img bg-img-xjssc"></span>
                        <span>新疆时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="2" href="<%=basePath%>ssc/gcdt/tjssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-tjssc"></span>
                        <span>天津时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="16" href="<%=basePath%>ssc/gcdt/efssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-efssc"></span>
                        <span>两分时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="13" href="<%=basePath%>ssc/gcdt/sfssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-sfssc"></span>
                        <span>三分时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="17" href="<%=basePath%>ssc/gcdt/wfssc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-wfssc"></span>
                        <span>五分时时彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="18"
                       href="<%=basePath%>ssc/gcdt/jsk3.html">
                        <span class="jc"></span>
                        <span class="img bg-img-jsk3"></span>
                        <span>江苏快3</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem gp-ahk3" data-play_group_id="20"
                       href="<%=basePath%>ssc/gcdt/ahk3.html">
                        <span class="jc"></span>
                        <span class="img bg-img-ahk3"></span>
                        <span>安徽快3</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="19"
                       href="<%=basePath%>ssc/gcdt/hbk3.html">
                        <span class="jc"></span>
                        <span class="img bg-img-hbk3"></span>
                        <span>湖北快3</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="21"
                       href="<%=basePath%>ssc/gcdt/jlk3.html">
                        <span class="jc"></span>
                        <span class="img bg-img-jlk3"></span>
                        <span>吉林快3</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem gp-pk10" data-play_group_id="9"
                       href="<%=basePath%>ssc/gcdt/pk10.html">
                        <span class="jc"></span>
                        <span class="img bg-img-pk10"></span>
                        <span>北京PK10</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="14"
                       href="<%=basePath%>ssc/gcdt/xyft.html">
                        <span class="jc"></span>
                        <span class="img bg-img-xyft"></span>
                        <span>幸运飞艇</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="23"
                       href="<%=basePath%>ssc/gcdt/jspk10.html">
                        <span class="jc"></span>
                        <span class="img bg-img-jspk10"></span>
                        <span>极速PK10</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem gp-xync" data-play_group_id="10"
                       href="<%=basePath%>ssc/gcdt/xync.html">
                        <span class="jc"></span>
                        <span class="img bg-img-xync"></span>
                        <span>重庆幸运农场</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="11"
                       href="<%=basePath%>ssc/gcdt/klsf.html">
                        <span class="jc"></span>
                        <span class="img bg-img-klsf"></span>
                        <span>广东快乐十分</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="7" href="<%=basePath%>ssc/gcdt/xy28.html">
                        <span class="jc"></span>
                        <span class="img bg-img-xy28"></span>
                        <span>幸运28</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="8" href="<%=basePath%>ssc/gcdt/kl8.html">
                        <span class="jc"></span>
                        <span class="img bg-img-kl8"></span>
                        <span>北京快乐8</span>
                    </a>
                </div>
            </div>
            <a class="list-block relb relb-k3xl btn-xl-dp">
                <div class="item-content reitem-link" href="javascript:void(0)">
                    <div class="reit-inner">
                        <div class="item-title">低频彩</div>
                    </div>
                    <span class="img_jian"></span>
                </div>
            </a>
            <div class="cl-7 dp-div-content" sp="0">
                <div class="row cl-318 gcdtList">
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="6" href="<%=basePath%>ssc/gcdt/lhc.html">
                        <span class="jc"></span>
                        <span class="img bg-img-lhc"></span>
                        <span>香港六合彩</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="5" href="<%=basePath%>ssc/gcdt/fc3d.html">
                        <span class="jc"></span>
                        <span class="img bg-img-3d"></span>
                        <span>福彩3D</span>
                    </a>
                    <a class="col-25 col-33 vipcp_bottem" data-play_group_id="4" href="<%=basePath%>ssc/gcdt/pl3.html">
                        <span class="jc"></span>
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