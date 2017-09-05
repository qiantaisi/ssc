<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-gcdt-jspk10">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
            <span class="icon icon-left"></span>
            返回
            </a>
            <%--<a class="button button-link button-nav pull-left open-panel" data-panel='#panel-left'>--%>
                <%--<font>彩种切换</font>--%>
                <%--<span class="icon icon-top-gcdt"></span>--%>
            <%--</a>--%>
            <a href="javascript:void(0);" class="button button-link pull-right menubtn">
                菜单
            </a>
            <h1 class="title">
                <a class="title_cq" href="<%=basePath%>ssc/gcdt/gfwf/jspk10.html">极速pk10-传统模式
                    <div class="gfwf_triangle_down">
                        <%--画出一个向下的三角形图标--%>
                    </div>
                </a>
            </h1>
        <%--<h1 class="title">极速PK10</h1>--%>
        </header>
        <c:import url="common/commonBet.jsp" />
        <%--<div class="BeginFind Hide_Show">--%>
            <%--<div class="gfwf_consele">--%>
                <%--<div class="gfwf_one">--%>
                    <%--<a class="F1_color" href="<%=basePath%>ssc/gcdt/gfwf/jspk10.html">--%>
                        <%--<div class="border_one color_one">--%>
                            <%--官方模式--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="gfwf_two">--%>
                    <%--<a class="F2_color" href="<%=basePath%>ssc/gcdt/jspk10.html">--%>
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
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/jspk10/lmp.html">两面盘</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/jspk10/szp.html">排列1~10</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/jspk10/gyjh.html">冠亚和</a>
                </div>
            </div>
            <div class="cl-900" id="lastOpenInfo"></div>
            <div class="cl-901">
                <div class="cl-902">
                    <span class="left" data-number="" id="number">第<font>..数据读取中..</font>期</span>
                    <span class="right">距离下一期还有：<font id="leftTime">00:00:00</font></span>
                </div>
                <div class="cl-903" id="openHistoryList">
                </div>
            </div>
            <div id="sub-menu-list">
            </div>
            <div class="bg-white cl-951" id="betContainer">
            </div>
        </div>
    </div>
    <c:import url="../../common/leftSscPanel.jsp" />
    <c:import url="../../common/menuAlert.jsp">
        <c:param name="playGroupId" value="23"/>
    </c:import>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script>
    // var playName = null;
    var playGroupId = 23;
    // 全局官方玩法赔率
    <c:if test="${not empty playPlListJson}">
    var gfwfPlJson = ${playPlListJson};
    </c:if>
</script>
<script type="text/html" id="template_openNumber_item">
    <div class="cl-904">
        <div class="cl-981 cl-990"><span class="number"><font class="style_blue">{{number}}</font>&nbsp;|&nbsp;</span></div>
        <div class="cl-982 cl-991">
            <span class="openNumber cl-1207">
                {{if openCodeArr != null}}
                    {{each openCodeArr as value index}}
                        <i class="ball-ts pk10-bg-{{value}}">{{value}}</i>
                    {{/each}}
                {{else}}
                    开奖中
                {{/if}}
            </span>
        </div>
    </div>
</script>
<script type="text/html" id="template_lastOpenInfo">
    <span class="left cl-1200 qita_1200_qi" id="lastNumber">上期开奖&nbsp;</span>
    <div class="left">
        <span class="cl-1201 cl-1207">
            {{each openCodeArr as value index}}
                <i class="ball-ts pk10-bg-{{value}}">{{value}}</i>
            {{/each}}
        </span>
        <span class="cl-1202">
            {{each infoArr as value index}}
                <i>{{value}}</i>
            {{/each}}
        </span>
    </div>
</script>
<c:import url="../../common/bodyEnd.jsp"/>