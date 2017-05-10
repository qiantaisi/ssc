<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-gcdt-cqssc">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left open-panel" data-panel='#panel-left'>
                <font>彩种切换</font>
                <span class="icon icon-top-gcdt"></span>
            </a>
            <a class="button button-link pull-right open-panel" data-panel='#panel-right'>
                菜单
            </a>
            <h1 class="title">重庆时时彩<i class="triangle-down"> <!--向下的三角--> </i></h1>
        </header>
        <c:import url="../common/commonBet.jsp"/>
        <div class="consele">
            <div class="selects">
                <div class="selects-one">
                    <span class="active">官方玩法</span>
                </div>
                <div class="selects-two">
                    <span><a href="<%=basePath%>ssc/gcdt/cqssc.html">快捷玩法</a></span>
                </div>
            </div>
        </div>
        <div class="content cl-601 show_hide">
            <div class="cus-tabs-scroll">
                <a>五星直选</a>
                <span><img src="<%=basePath%>static/theme/600w/img/ico222.png"/></span>
                <a>
                    直选方式
                    <i class="triangle-down"><!--向下的三角--> </i>
                </a>
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
            <div class="cus-tem-a betDemo">
                <h2 class="cus-flex-title ui-grid-a">
                    <span class="cus-left">万位</span>
                    <span class="cus-right">
                        <i>全</i>
                        <i>大</i>
                        <i>小</i>
                        <i>奇</i>
                        <i>偶</i>
                        <i>清</i>
                    </span>
                </h2>
                <div class="cus-flex-list ui-grid-a">
                    <div class="cus-flex-item">
                        <span class="cus-round-red">1</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">2</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">3</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">4</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">5</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">6</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">7</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">8</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">9</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">10</span>
                        <span class="cus-muted">32</span>
                    </div>
                </div>
            </div>
            <div class="cus-tem-a betDemo">
                <h2 class="cus-flex-title ui-grid-a">
                    <span class="cus-left">千位</span>
                    <span class="cus-right">
                        <i>全</i>
                        <i>大</i>
                        <i>小</i>
                        <i>奇</i>
                        <i>偶</i>
                        <i>清</i>
                    </span>
                </h2>
                <div class="cus-flex-list ui-grid-a">
                    <div class="cus-flex-item">
                        <span class="cus-round-red">1</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">2</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">3</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">4</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">5</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">6</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">7</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">8</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">9</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">10</span>
                        <span class="cus-muted">32</span>
                    </div>
                </div>
            </div>
            <div class="cus-tem-a betDemo">
                <h2 class="cus-flex-title ui-grid-a">
                    <span class="cus-left">百位</span>
                    <span class="cus-right">
                        <i>全</i>
                        <i>大</i>
                        <i>小</i>
                        <i>奇</i>
                        <i>偶</i>
                        <i>清</i>
                    </span>
                </h2>
                <div class="cus-flex-list ui-grid-a">
                    <div class="cus-flex-item">
                        <span class="cus-round-red">1</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">2</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">3</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">4</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">5</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">6</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">7</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">8</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">9</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">10</span>
                        <span class="cus-muted">32</span>
                    </div>
                </div>
            </div>
            <div class="cus-tem-a betDemo">
                <h2 class="cus-flex-title ui-grid-a">
                    <span class="cus-left">十位</span>
                    <span class="cus-right">
                        <i>全</i>
                        <i>大</i>
                        <i>小</i>
                        <i>奇</i>
                        <i>偶</i>
                        <i>清</i>
                    </span>
                </h2>
                <div class="cus-flex-list ui-grid-a">
                    <div class="cus-flex-item">
                        <span class="cus-round-red">1</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">2</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">3</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">4</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">5</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">6</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">7</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">8</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">9</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">10</span>
                        <span class="cus-muted">32</span>
                    </div>
                </div>
            </div>
            <div class="cus-tem-a betDemo">
                <h2 class="cus-flex-title ui-grid-a">
                    <span class="cus-left">个位</span>
                    <span class="cus-right">
                        <i>全</i>
                        <i>大</i>
                        <i>小</i>
                        <i>奇</i>
                        <i>偶</i>
                        <i>清</i>
                    </span>
                </h2>
                <div class="cus-flex-list ui-grid-a">
                    <div class="cus-flex-item">
                        <span class="cus-round-red">1</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">2</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">3</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">4</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">5</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">6</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">7</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">8</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">9</span>
                        <span class="cus-muted">32</span>
                    </div>
                    <div class="cus-flex-item">
                        <span class="cus-round-red">10</span>
                        <span class="cus-muted">32</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <c:import url="../../../common/leftSscPanel.jsp"/>
    <c:import url="../../../common/rightPanel.jsp">
        <c:param name="playGroupId" value="1"/>
    </c:import>
</div>


<c:import url="../../../common/commonJs.jsp"/>
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
    <span class="left cl-1200 ssc_1200_qi" id="lastNumber">第<span
            class="style_blue">{{number}}</span>期&nbsp;&nbsp;</span>
    <div class="left">
        <span class="cl-1201 ssc_1201_num">
            {{each openCodeArr as value index}}
                <i>{{value}}</i>
            {{/each}}
        </span>
        <span class="cl-1202 ssc_1202_sx">&nbsp;
            {{each infoArr as value index}}
                <i>{{value}}</i>
            {{/each}}
        </span>
    </div>
</script>
<c:import url="../../../common/bodyEnd.jsp"/>