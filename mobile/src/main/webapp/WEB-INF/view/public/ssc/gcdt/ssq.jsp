<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<style>
    .cl-1201 i.ball_bluessq,.cl-904 .openNumber i.ball_bluessq{
        background:#1379D7!important;
    }
    .ball_bluessq{
        background: #1379D7!important;
    }
</style>
<div class="page-group">
    <div class="page page-current" id="page-gcdt-ssq">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left gcfanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a href="javascript:void(0);" class="button button-link pull-right menubtn">
                菜单
            </a>
            <h1 class="title">
                <a class="title_cq" href="<%=basePath%>ssc/gcdt/gfwf/ssq.html">双色球-传统模式
                    <div class="gfwf_triangle_down">
                        <%--画出一个向下的三角形图标--%>
                    </div>
                </a>
            </h1>

        </header>
        <c:import url="common/commonBet.jsp"/>
        <%--<div class="BeginFind Hide_Show">--%>
            <%--<div class="gfwf_consele">--%>
                <%--<div class="gfwf_one">--%>
                    <%--<a class="F1_color" href="<%=basePath%>ssc/gcdt/gfwf/ssq.html">--%>
                        <%--<div class="border_one color_one">--%>
                            <%--官方模式--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="gfwf_two">--%>
                    <%--<a class="F2_color" href="<%=basePath%>ssc/gcdt/ssq.html">--%>
                        <%--<div class="border_two color_two">--%>
                            <%--传统模式--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="gfwf_mask">--%>
                <%--&lt;%&ndash;实现蒙版&ndash;%&gt;--%>
            <%--</div>--%>
        <%--</div>--%>
        <div class="content cl-601">
            <div class="cl-600" id="ssc-parent-menu">
                <div class="cl-602">
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/ssq/sm.html">双面</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/ssq/hm.html">红码</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-hmdw">红码定位</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/ssq/lm.html">蓝码</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/ssq/hlp.html">红蓝配</a>
                </div>
            </div>
            <div class="cl-900" id="lastOpenInfo">

            </div>
            <div class="cl-901">
                <div class="cl-902">
                    <span class="left" data-number="" id="number">第<font>..数据读取中..</font>期</span>
                    <span class="right">距离下一期还有：<font id="leftTime">00:00:00</font></span>
                </div>
                <div class="cl-903" id="openHistoryList">

                </div>
            </div>
            <div id="sub-menu-list">
                <div class="cl-600 cl-610 hide" id="sub-menu-hmdw">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/ssq/hmdwd1q.html" href="javascript:void(0)">第一球</a>
                        <a data-url="<%=basePath%>ssc/gcdt/ssq/hmdwd2q.html" href="javascript:void(0)">第二球</a>
                        <a data-url="<%=basePath%>ssc/gcdt/ssq/hmdwd3q.html" href="javascript:void(0)">第三球</a>
                        <a data-url="<%=basePath%>ssc/gcdt/ssq/hmdwd4q.html" href="javascript:void(0)">第四球</a>
                        <a data-url="<%=basePath%>ssc/gcdt/ssq/hmdwd5q.html" href="javascript:void(0)">第五球</a>
                        <a data-url="<%=basePath%>ssc/gcdt/ssq/hmdwd6q.html" href="javascript:void(0)">第六球</a>
                    </div>
                </div>

            </div>
            <div class="bg-white cl-951" id="betContainer">

            </div>
        </div>
    </div>
    <c:import url="../../common/leftSscPanel.jsp"/>
    <c:import url="../../common/menuAlert.jsp">
        <c:param name="playGroupId" value="12"/>
    </c:import>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script type="text/html" id="template_openNumber_item">
    <div class="cl-904">
        <div class="cl-981"><span class="number">第<font class="style_blue">{{number}}</font>期&nbsp;|&nbsp;</span></div>
        <div class="cl-982">
            <span class="openNumber">
                {{if openCodeArr != null}}
                    {{each openCodeArr as value index}}
                        {{if index == 6}}
                           <i class="ball_bluessq">{{value}}</i>
                            {{else}}
                           <i>{{value}}</i>
                        {{/if}}
                    {{/each}}
                {{else}}
                    开奖中
                {{/if}}
            </span>
        </div>
    </div>
</script>
<script type="text/html" id="template_lastOpenInfo">
    <span class="left cl-1200 ssc_1200_qi" id="lastNumber">第<span
            class="style_blue">{{number}}</span>期&nbsp;&nbsp;</span>
    <div class="left">
        <span class="cl-1201 ssc_1201_num">
            {{each openCodeArr as value index}}
                {{if index == 6}}
                   <i class="ball_bluessq">{{value}}</i>
                      {{else}}
                   <i>{{value}}</i>
                {{/if}}
            {{/each}}
        </span>
        <span class="cl-1202 ssc_1202_sx">&nbsp;
            {{each infoArr as value index}}
                {{if index == 6}}
                    <i class="ball_bluessq">{{value}}</i>
                        {{else}}
                    <i>{{value}}</i>
                {{/if}}
            {{/each}}
        </span>
    </div>
</script>
<c:import url="../../common/bodyEnd.jsp"/>