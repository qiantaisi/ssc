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
                <h2>北京PK10</h2>
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
                    <li class="gf-li">
                        <b class="acti">官方玩法</b>
                        <p class="guanfang respan gf-cgwf" data-name="gfwf">
                            <span class="acti"><a href="javascript:void(0)" data-url="gfwf-bjpk10-qy">前一</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-bjpk10-qe">前二</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-bjpk10-qs">前三</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-bjpk10-dwd">定位胆</a></span>
                        </p>
                    </li>
                    <li>
                        <b>快钱玩法</b>
                        <p class="kuaiqian">
                            <style>.Single .layout .Playmethod ul li p.kuaiqian span {
                                width: 55px;
                            }</style>
                            <span><a href="javascript:void(0)" data-url="pk10-sm">双面</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-szp">数字盘</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-1">冠军</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-2">亚军</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-3">季军</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-4">第四名</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-5">第五名</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-6">第六名</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-7">第七名</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-8">第八名</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-9">第九名</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-10">第十名</a></span>
                            <span><a href="javascript:void(0)" data-url="pk10-gyh">冠亚和</a></span>
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
            <div class="Detailedlist Single wid1">

                <div class="layout at">
                    <h1 class="at">投注清单</h1>
                    <div class="boxt at reboxt">
                        <div class="left">
                            <table cellspacing="0" cellpadding="0" border="0" width="100%">
                                <tbody id="zhudanList">
                                <tr class="noRecord"><td>暂无投注项</td></tr>
                                </tbody>
                            </table>
                        </div><!--left-->
                        <div class="right">
                            <ul>
                                <li><a class="suiji1" href="javascript:void(0)" onclick="getSuiji(1)">随机一注</a></li>
                                <li><a class="suiji5" href="javascript:void(0)" onclick="getSuiji(5)">随机五注</a></li>
                                <li class="clearLiZhudanbtn" sp="0"><a id="zhbtn" class="wdzhli" href="javascript:void(0)" onclick="renderZhuihao(null, this)"><span class="imgZh"></span>我要追号</a></li>
                                <li><a href="javascript:void(0)" onclick="clearZhudan()"><img src="${resPath}img/ico52.png" alt="">清空注单</a></li>
                            </ul>
                            <p id="zongtouInfo">总投 <span>0</span> 注，<span>0</span> 倍，共 <span>0</span> 元。</p>
                            <a href="javascript:void(0)" class="ok" onclick="buyBtn()"><img src="${resPath}img/ico54.png"
                                                                                            alt="">确认投注</a>
                        </div>
                    </div>
                </div>

            </div>
            <div id="sscContent"></div>

        </div>
    </div><!--Single-->
    <c:import url="common/bottomInfo.jsp"/>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="common/commonJs.jsp"/>
<c:import url="gfwf/common/commonJs.jsp" />
<script>
    var playGroupId = 9;    // 彩种ID
</script>
<script>
    // 随机号码
    function randomNumber() {
        var arr = [];
        var tmpStr = '';
        for (var i = 1; i <= 10; ++i) {
            var value = Math.floor(Math.random() * 10) + 1;
            tmpStr += '<span class="fang bg-' + parseInt(value) + '">' + parseInt(value) + '</span>';
        }
        $("#lastOpenCode").html(tmpStr);
    }

    // 渲染上期开奖模板
    function renderLastOpenCode(openCodeArr) {
        var tmpStr = '';
        $.each(openCodeArr, function(index, value) {
            tmpStr += '<span class="fang bg-' + parseInt(value) + '">' + parseInt(value) + '</span>';
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