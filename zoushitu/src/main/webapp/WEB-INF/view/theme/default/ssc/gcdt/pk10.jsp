<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
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
    <div class="page page-current" id="page-gcdt-pk10">
        <header class="bar bar-nav">
            <%--<a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">--%>
                <%--<span class="icon icon-left"></span>--%>
                <%--返回--%>
            <%--</a>--%>
                <a class="button button-link button-nav pull-left open-panel" data-panel='#panel-left'>
                    <font>彩种列表</font>
                    <span class="icon icon-top-gcdt"></span>
                </a>
            <a class="button button-link pull-right open-panel" data-panel='#panel-right'>
                菜单
            </a>
            <h1 class="title">北京PK10</h1>
        </header>
        <c:import url="common/commonBet.jsp" />
        <div class="content cl-601">
            <div class="cl-600" id="ssc-parent-menu">
                <div class="cl-602">
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/sm.html">双面</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/szp.html">数字盘</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/gj.html">冠军</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/yj.html">亚军</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/jj.html">季军</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/d4m.html">第四名</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/d5m.html">第五名</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/d6m.html">第六名</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/d7m.html">第七名</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/d8m.html">第八名</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/d9m.html">第九名</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/d10m.html">第十名</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/pk10/gyjh.html">冠亚和</a>
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
    <c:import url="../../common/rightPanel.jsp">
        <c:param name="playGroupId" value="9" />
    </c:import>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script type="text/html" id="template_openNumber_item">
    <div class="cl-904">
        <div class="cl-981 cl-990"><span class="number"><font class="style_blue">{{number}}</font>&nbsp;|&nbsp;</span></div>
        <div class="cl-982 cl-991">
            <span class="openNumber cl-1207">
                {{if openCodeArr != null}}
                    {{each openCodeArr as value index}}
                        <i class="pk10-bg-{{value}}">{{value}}</i>
                    {{/each}}
                {{else}}
                    开奖中
                {{/if}}
            </span>
        </div>
    </div>
</script>
<script type="text/html" id="template_lastOpenInfo">
    <span class="left cl-1200 qita_1200_qi" id="lastNumber"><!--第<span class="style_blue">{{number}}</span>期-->上期开奖&nbsp;</span>
    <div class="left">
        <span class="cl-1201 cl-1207">
            {{each openCodeArr as value index}}
                <i class="pk10-bg-{{value}}">{{value}}</i>
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