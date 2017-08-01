<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<c:import url="../../common/checkIsChildFrame.jsp"/>
<style>.game_name .box2_stage .number span {
    width: 25px;
    height: 25px;
    line-height: 25px;
    font-size: 16px;
}</style>
<div id="gameContent">
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>幸运飞艇</h2>
                <p>Lottery results</p>
                <p class="p1">第<i id="number"></i>期</p>
                <div class="select">
                    <img src="${resPath}img/ico48.png" alt="">
                    <c:import url="common/soundList.jsp"/>
                </div>
            </div>
            <div class="box2_stage">
                <p><span><i class="acti">近一期</i><i>近五期</i></span><font id="lastNumber"></font></p>
                <div class="number pt10 pk10" id="lastOpenCode">
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
                                width: 55px;
                            }</style>
                            <style>.Single .layout .Playmethod ul li p.kuaiqian .pm {
                                width: 77px;
                            }</style>
                            <style>.Single .layout .Playmethod ul li p.kuaiqian .gyzh {
                                width: 103px;
                            }</style>
                            <style>.Single .layout .Playmethod ul li p.kuaiqian .cmc {
                                width: 122px;
                            }</style>
                            <span><a href="javascript:void(0)" data-url="xyft-lmp">两面盘</a></span>
                            <span class="pm"><a href="javascript:void(0)" data-url="xyft-pm1d10">排名1~10</a></span>
                            <span class="gyzh"><a href="javascript:void(0)" data-url="xyft-gyjh">冠、亚军 组合</a></span>
                            <%--<span class="cmc"><a href="javascript:void(0)" data-url="xyft-pm3456">三、四、五、六名</a></span>--%>
                            <%--<span class="cmc"><a href="javascript:void(0)" data-url="xyft-pm78910">七、八、九、十名</a></span>--%>
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
    var playGroupId = 14;    // 彩种ID
</script>
<script>
    // 随机号码
    function randomNumber() {
        var arr = [];
        var tmpStr = '';
        for (var i = 1; i <= 10; ++i) {
            var value = Math.floor(Math.random() * 10) + 1;
            tmpStr += '<span class="fang bg-' + parseInt(value) + '">' +  parseInt(value) + '</span>';
        }
        $("#lastOpenCode").html(tmpStr);
    }

    // 渲染上期开奖模板
    function renderLastOpenCode(openCodeArr) {
        var tmpStr = '';
        $.each(openCodeArr, function(index, value) {
            tmpStr += '<span class="fang bg-' + parseInt(value) + '">' +  parseInt(value) + '</span>';
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
        <i class="fang bg-{{value|parseInt}}">{{value|parseInt}}</i>
        {{/each}}
        {{/if}}
    </li>
</script>
<c:import url="../../common/bodyEnd.jsp"/>