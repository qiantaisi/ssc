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
                <h2>重庆幸运农场</h2>

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
                            <span><a href="javascript:void(0)" data-url="xync-sm">双面</a></span>
                            <span><a href="javascript:void(0)" data-url="xync-1q">第一球</a></span>
                            <span><a href="javascript:void(0)" data-url="xync-2q">第二球</a></span>
                            <span><a href="javascript:void(0)" data-url="xync-3q">第三球</a></span>
                            <span><a href="javascript:void(0)" data-url="xync-4q">第四球</a></span>
                            <span><a href="javascript:void(0)" data-url="xync-5q">第五球</a></span>
                            <span><a href="javascript:void(0)" data-url="xync-6q">第六球</a></span>
                            <span><a href="javascript:void(0)" data-url="xync-7q">第七球</a></span>
                            <span><a href="javascript:void(0)" data-url="xync-8q">第八球</a></span>
                            <span><a href="javascript:void(0)" data-url="xync-lh">龙虎</a></span>
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
    var playGroupId = 10;    // 彩种ID
</script>
<script>
    // 随机号码
    function randomNumber() {
        var arr = [];
        var tmpStr = '';
        for (var i = 0; i < 8; ++i) {
            tmpStr += '<span>' + (Math.floor(Math.random() * 20) + 1) + '</span>';
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