<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project28.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-gcdt-fc3d">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left open-panel" data-panel='#panel-left'>
                <font>彩种列表</font>
                <span class="icon icon-top-gcdt"></span>
            </a>
            <a class="button button-link pull-right open-panel" data-panel='#panel-right'>
                菜单
            </a>
            <h1 class="title">福彩3d</h1>
        </header>
        <c:import url="common/commonBet.jsp" />
        <div class="content cl-601">
            <div class="cl-600" id="ssc-parent-menu">
                <div class="cl-602">
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-dw">定位</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-zh">组合</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-hs">和数</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/fc3d/zxs.html">组选三</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/fc3d/zxl.html">组选六</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/fc3d/kd.html">跨度</a>
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
                <div class="cl-600 cl-610 hide" id="sub-menu-dw">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/dw_bdw.html" href="javascript:void(0)">百定位</a>
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/dw_sdw.html" href="javascript:void(0)">十定位</a>
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/dw_gdw.html" href="javascript:void(0)">个定位</a>
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/dw_bsdw.html" href="javascript:void(0)">百十定位</a>
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/dw_bgdw.html" href="javascript:void(0)">百个定位</a>
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/dw_sgdw.html" href="javascript:void(0)">十个定位</a>
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/dw_bsgdw.html" href="javascript:void(0)">百十个定位</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-zh">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/zh_yzzh.html">一字组合</a>
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/zh_ezzh.html">二字组合</a>
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/zh_szzh.html">三字组合</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-hs">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/hs_bshs.html">百十和数</a>
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/hs_bghs.html">百个和数</a>
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/hs_sghs.html">十个和数</a>
                        <a data-url="<%=basePath%>ssc/gcdt/fc3d/hs_bsghs.html">百十个和数</a>
                    </div>
                </div>
            </div>
            <div class="bg-white" id="betContainer">
            </div>
        </div>
    </div>
    <c:import url="../../common/leftSscPanel.jsp" />
    <c:import url="../../common/rightPanel.jsp">
        <c:param name="playGroupId" value="5" />
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
                        <i>{{value}}</i>
                    {{/each}}
                {{else}}
                    开奖中
                {{/if}}
            </span>
        </div>
    </div>
</script>
<script type="text/html" id="template_lastOpenInfo">
    <span class="left cl-1200 cl-1203 qita_1200_qi" id="lastNumber">第<span class="style_blue">{{number}}</span>期</span>
    <div class="left">
        <span class="cl-1201 cl-1203" id="numInfo">
            {{each openCodeArr as value index}}
                <i>{{value}}</i>
            {{/each}}
        </span>
    </div>
</script>
<c:import url="../../common/bodyEnd.jsp"/>