<%@ page import="project38.ssc.web.interceptors.BasePathInterceptor" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<c:import url="../../common/checkIsChildFrame.jsp"/>
<div id="gameContent">
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>两分时时彩</h2>
                <p>Lottery results</p>
                <p class="p1">第<i id="number"></i>期</p>
                <div class="select">
                    <img src="${resPath}img/ico48.png" alt="">
                    <c:import url="common/soundList.jsp"/>
                </div>
            </div>
            <div class="box2_stage">
                <p><span><i class="acti">近一期</i><i>近五期</i></span><font id="lastNumber"></font></p>
                <div class="number pt10" id="lastOpenCode">
                </div>
                <div class="number" id="lastOpenCodeList">
                    <ul>
                    </ul>
                </div>
            </div>
            <div class="box3_timer">
                <p id="tip">已开盘，欢迎投注。距离封盘还有:</p>
                <div class="timer_wrap" id="leftTime">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="Single wid1">
        <div class="layout at">
            <div class="Playmethod">
                <ul>
                    <li>
                        <b>快钱玩法</b>
                        <p class="kuaiqian">
                            <style>.Single .layout .Playmethod ul li p.kuaiqian span {
                                width: 61px;
                            }</style>
                            <span><a href="javascript:void(0)" data-url="efssc-sm">双面</a></span>
                            <span><a href="javascript:void(0)" data-url="efssc-szp">数字盘</a></span>
                            <span><a href="javascript:void(0)" data-url="efssc-yzdw_wdw">一字定位</a></span>
                            <span><a href="javascript:void(0)" data-url="efssc-ezdw">二字定位</a></span>
                            <span><a href="javascript:void(0)" data-url="efssc-szdw">三字定位</a></span>
                            <span><a href="javascript:void(0)" data-url="efssc-yzzh_q5">一字组合</a></span>
                            <span><a href="javascript:void(0)" data-url="efssc-ezzh_q3">二字组合</a></span>
                            <span><a href="javascript:void(0)" data-url="efssc-ezhs">二字和数</a></span>
                            <span><a href="javascript:void(0)" data-url="efssc-zxs_q3">组选三</a></span>
                            <span><a href="javascript:void(0)" data-url="efssc-zxl_q3">组选六</a></span>
                            <span><a href="javascript:void(0)" data-url="efssc-kd_q3">跨度</a></span>
                            <span><a href="javascript:void(0)" data-url="efssc-lh">龙虎</a></span>
                        </p>
                    </li>
                </ul>
            </div>

            <div id="sscContent"></div>

        </div>
    </div><!--Single-->
    <c:import url="common/bottomInfo.jsp"/>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="common/commonJs.jsp"/>
<script>
    var playGroupId = 16;    // 彩种ID
</script>
<script>
    // 随机号码
    function randomNumber() {
        var arr = [];
        var tmpStr = '';
        for (var i = 0; i < 5; ++i) {
            tmpStr += '<span>' + (Math.floor(Math.random() * 10)) + '</span>';
        }
        $("#lastOpenCode").html(tmpStr);
    }

    // 渲染上期开奖模板
    function renderLastOpenCode(openCodeArr) {
        var tmpStr = '';
        $.each(openCodeArr, function(index, value) {
            tmpStr += '<span>' + value + '</span>';
        });
        $("#lastOpenCode").html(tmpStr);
    }
</script>
<!-- 开奖历史模板 -->
<script type="text/html" id="template_openDataHistory">
    <li>
        <p>第{{number}}期</p>
        {{if list.length == 0}}
        <p style="margin-left:5px">开奖中</p>
        {{else}}
        {{each list as value}}
        <i>{{value}}</i>
        {{/each}}
        {{/if}}
    </li>
</script>
<c:import url="../../common/bodyEnd.jsp"/>