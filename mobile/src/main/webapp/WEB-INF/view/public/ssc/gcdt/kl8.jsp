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
    <div class="page page-current" id="page-gcdt-kl8">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a href="javascript:void(0);" class="button button-link pull-right menubtn">
                菜单
            </a>
            <h1 class="title">北京快乐8</h1>
        </header>
        <c:import url="common/commonBet.jsp" />
        <div class="content cl-601">
            <div class="cl-600" id="ssc-parent-menu">
                <div class="cl-602">
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/kl8/xuan5.html">选5</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/kl8/xuan4.html">选4</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/kl8/xuan3.html">选3</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/kl8/xuan2.html">选2</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/kl8/xuan1.html">选1</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/kl8/qita.html">其他</a>
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
        <c:param name="playGroupId" value="8" />
    </c:import>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script type="text/html" id="template_openNumber_item">
    <div class="cl-904">
        <div class="cl-981 klb_981" style=""width:4rem><span class="number"><font class="style_blue">{{number}}</font>期&nbsp;|&nbsp;</span></div>
        <div class="cl-982 klb_982" style="width:calc(100% - 4rem)">
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
    <span class="left cl-1200 klb_1200_qi" id="lastNumber">第<span class="style_blue">{{number}}</span>期</span>
    <div class="left">
        <span class="cl-1201">
            {{each openCodeArr as value index}}
                <i>{{value}}</i>
                {{if index == 9}}
                <var style="display:block;height:1px;"></var>
                {{/if}}
            {{/each}}
        </span>
    </div>
</script>
<c:import url="../../common/bodyEnd.jsp"/>