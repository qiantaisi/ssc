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
    width: 30px;
    height: 30px;
    line-height: 30px;
    font-size: 20px;
}</style>
<div id="gameContent">
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>香港六合彩</h2>
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
                        <p>
                            <span><a href="javascript:void(0)" data-url="lhc-tm_b">特码</a></span>
                            <span><a href="javascript:void(0)" data-url="lhc-zm_b">正码</a></span>
                            <span><a href="javascript:void(0)" data-url="lhc-ztm_zyt">正特码</a></span>
                            <span><a href="javascript:void(0)" data-url="lhc-zm_16">正码1-6</a></span>
                            <span><a href="javascript:void(0)" data-url="lhc-lm_sqz">连码</a></span>
                            <span><a href="javascript:void(0)" data-url="lhc-banbo">半波</a></span>
                            <span><a href="javascript:void(0)" data-url="lhc-yixiao">一肖/尾</a></span>
                            <span><a href="javascript:void(0)" data-url="lhc-tmsx">特肖</a></span>
                            <span><a href="javascript:void(0)" data-url="lhc-hx_ex">合肖</a></span>
                            <span><a href="javascript:void(0)" data-url="lhc-lx_exlz">连肖</a></span>
                            <span><a href="javascript:void(0)" data-url="lhc-wsl_ewlz">尾数连</a></span>
                            <span><a href="javascript:void(0)" data-url="lhc-qbz_wbz">全不中</a></span>
                        </p>
                    </li>
                    <%--<li>--%>
                    <%--<b class="acti">官方玩法</b>--%>
                    <%--<p>--%>
                    <%--<span class="acti"><a href="javascript:void(0)">五星</a></span>--%>
                    <%--<span><a href="javascript:void(0)">四星</a></span>--%>
                    <%--<span><a href="javascript:void(0)">前三</a></span>--%>
                    <%--<span><a href="javascript:void(0)">中三</a></span>--%>
                    <%--<span><a href="javascript:void(0)">后三</a></span>--%>
                    <%--<span><a href="javascript:void(0)">二星</a></span>--%>
                    <%--<span><a href="javascript:void(0)">定位胆</a></span>--%>
                    <%--<span><a href="javascript:void(0)">大小单双</a></span>--%>
                    <%--<span><a href="javascript:void(0)">趣味</a></span>--%>
                    <%--</p>--%>
                    <%--</li>--%>
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
    var playGroupId = 6;    // 彩种ID
</script>
<script>
    // 随机号码
    function randomNumber() {
        var arr = [];
        var tmpStr = '';
        for (var i = 0; i < 7; ++i) {
            var value = Math.floor(Math.random() * 49) + 1;
            var c = getBose(value);
            if (c == 0) {
                c = 'ball-red';
            } else if (c == 1) {
                c = 'ball-blue';
            } else {
                c = 'ball-green';
            }
            if (i == 6) {
                tmpStr += '<span style="background:none;color: black;width: auto;height: auto;margin-left:-5px;margin-right:8px">+</span>';
            }
            tmpStr += '<span class="' + c + '">' + value + '</span>';
        }
        $("#lastOpenCode").html(tmpStr);
    }

    // 渲染上期开奖模板
    function renderLastOpenCode(openCodeArr) {
        var tmpStr = '';
        $.each(openCodeArr, function(index, value) {
            var c = getBose(value);
            if (c == 0) {
                c = 'ball-red';
            } else if (c == 1) {
                c = 'ball-blue';
            } else {
                c = 'ball-green';
            }
            tmpStr += '<span class="round ' + c + '">' + value + '</span>';
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
         <i class="round {{getBose(value)}}">{{value}}</i>
        {{/each}}
        {{/if}}
    </li>
</script>
<c:import url="../../common/bodyEnd.jsp"/>