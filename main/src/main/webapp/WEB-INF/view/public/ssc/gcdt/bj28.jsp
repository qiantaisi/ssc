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
<div id="gameContent">
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>北京28</h2>
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
                            <span><a href="javascript:void(0)" data-url="bj28-hh">混合</a></span>
                            <span><a href="javascript:void(0)" data-url="bj28-hz">和值特码</a></span>
                            <span><a href="javascript:void(0)" data-url="bj28-tmb3">特码包三</a></span>
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
    var playGroupId = 7;    // 彩种ID
</script>
<script>
    // 随机号码
    function randomNumber() {
        var arr = [];
        var tmpStr = '';
        var sum = 0;
        var colorBg = 'redbj28';

        for (var i = 0; i < 3; ++i) {
            var valSum = Math.floor(Math.random() * 10);
            sum += valSum;
            if($.inArray(sum,[0,13,14,27]) >= 0){
                colorBg = "graybj28";
            } else if($.inArray(sum,[1,4,7,10,16,19,22,25]) >= 0){
                colorBg = "greenbj28";
            } else if($.inArray(sum,[2,5,8,11,17,20,23,26]) >= 0){
                colorBg = "bluebj28";
            } else{
                colorBg = 'redbj28';
            }

            if(i < 2){
                tmpStr += '<span>' + valSum + '</span><span class="plus">+</span>';
            }else{
                tmpStr += '<span>' + valSum + '</span><span class="plus">=</span><span class="'+ colorBg +'">' + sum + '</span>';
            }

        }
        $("#lastOpenCode").html(tmpStr);
    }

    // 渲染上期开奖模板
    function renderLastOpenCode(openCodeArr) {
        var tmpStr = '';
        var sum = 0;
        var colorBg = 'redbj28';

        $.each(openCodeArr, function(index, value) {
            sum += parseInt(value);
            if($.inArray(sum,[0,13,14,27]) >= 0){
                colorBg = "graybj28";
            } else if($.inArray(sum,[1,4,7,10,16,19,22,25]) >= 0){
                colorBg = "greenbj28";
            } else if($.inArray(sum,[2,5,8,11,17,20,23,26]) >= 0){
                colorBg = "bluebj28";
            } else{
                colorBg = 'redbj28';
            }

            if(index < 2){
                tmpStr += '<span>' + value + '</span><span class="plus">+</span>';
            } else{
                tmpStr += '<span>' + value + '</span><span class="plus">=</span><span class="'+ colorBg +'">' + sum + '</span>';
            }

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
            {{each list as value index}}
                {{if index < 2}}
                   <i>{{value}}</i><i class="plusmin">+</i>
                {{else}}
                   <i>{{value}}</i><i class="plusmin">=</i><i class="{{colorBg}}">{{sum}}</i>
                {{/if}}

            {{/each}}
        {{/if}}
    </li>
</script>
<c:import url="../../common/bodyEnd.jsp"/>