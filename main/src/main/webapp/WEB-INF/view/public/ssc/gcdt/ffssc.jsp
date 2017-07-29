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
                <h2>分分时时彩</h2>
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
            <div class="Playmethod cl-801">
                <ul>
                    <li class="gf-li">
                        <b class="acti">官方玩法</b>
                        <p class="guanfang respan gf-cgwf" data-name="gfwf">
                            <span class="acti"><a href="javascript:void(0)" data-url="gfwf-ffssc-5x">五星</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-ffssc-4x">四星</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-ffssc-h3">后三</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-ffssc-q3">前三</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-ffssc-q2">前二</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-ffssc-dwd">定位胆</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-ffssc-budw">不定位</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-ffssc-dxds">大小单双</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-ffssc-rx2">任选二</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-ffssc-rx3">任选三</a></span>
                            <span><a href="javascript:void(0)" data-url="gfwf-ffssc-rx4">任选四</a></span>
                        </p>
                    </li>
                    <li>
                        <b>快钱玩法</b>
                        <p class="kuaiqian" data-name="kqwf">
                            <span><a href="javascript:void(0)" data-url="ffssc-sm">双面</a></span>
                            <span><a href="javascript:void(0)" data-url="ffssc-szp">数字盘</a></span>
                            <span><a href="javascript:void(0)" data-url="ffssc-yzdw_wdw">一字定位</a></span>
                            <span><a href="javascript:void(0)" data-url="ffssc-ezdw">二字定位</a></span>
                            <span><a href="javascript:void(0)" data-url="ffssc-szdw">三字定位</a></span>
                            <span><a href="javascript:void(0)" data-url="ffssc-yzzh_q5">一字组合</a></span>
                            <span><a href="javascript:void(0)" data-url="ffssc-ezzh_q3">二字组合</a></span>
                            <span><a href="javascript:void(0)" data-url="ffssc-ezhs">二字和数</a></span>
                            <span><a href="javascript:void(0)" data-url="ffssc-zxs_q3">组选三</a></span>
                            <span><a href="javascript:void(0)" data-url="ffssc-zxl_q3">组选六</a></span>
                            <span><a href="javascript:void(0)" data-url="ffssc-kd_q3">跨度</a></span>
                            <span><a href="javascript:void(0)" data-url="ffssc-lh">龙虎</a></span>
                        </p>
                    </li>
                </ul>
            </div>

            <div id="sscContent"></div>
            <i class="it0 left_it0"><img src="${resPath}img/ico46.png" alt=""></i>
            <i class="it1 right_it1"><img src="${resPath}img/ico46.png" alt=""></i>
        </div>
    </div><!--Single-->
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
    <c:import url="gfwf/common/zhInfoContent.jsp"/>
    <c:import url="common/bottomInfo.jsp"/>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="common/commonJs.jsp"/>
<c:import url="gfwf/common/commonJs.jsp" />
<script>
    // 全局彩种ID
    var playGroupId = 15;
    var playId = null;
    // 全局官方玩法赔率
    <c:if test="${not empty playPlListJson}">
    var gfwfPlJson = ${playPlListJson};
    </c:if>

    // 全局开奖时间列表
    <c:if test="${not empty zhuihaoSscOpenTimeList}">
    var zhuihaoSscOpenTimeList = ${zhuihaoSscOpenTimeList};
    </c:if>

</script>
<script>
    function removeThisItem(obj) {
        $(obj).parent().parent().trigger("mouseout");
        $(obj).parent().parent().remove();
        calcAll();
        bindYuxuan();
        if ($("#zhudanList .re_touzhu_tem").length <= 0) {
            $("#zhudanList").html('<tr class="noRecord"><td>暂无投注项</td></tr>');
            //清除追号模板
            var flag = $(".clearLiZhudanbtn").attr('sp');
            if(flag == 1){
                zhTempletHideOrShow();
            }
        } else{
            var optionVal = parseInt($('#lt_zh_qishu').val());
            selectedCheckboxtbzh(optionVal);
        }


    }
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

<script type="text/html" id="template_touzhu">
    <tr
            data-show_content="{{showContent}}"
            data-show_play_name="{{showPlayName}}"
            data-bet_content="{{betContent}}"
            data-bet_per_money="{{betPerMoney}}"
            data-bet_zhushu="{{betZhushu}}"
            data-bet_total_money="{{betTotalMoney}}"
            data-bet_mode="{{betMode}}"
            data-bet_play_group_id="{{betPlayGroupId}}"
            data-bet_beishu="{{betBeishu}}"
            data-bet_fandian="{{betFandian}}"
            data-bet_play_pl="{{betPlayPl}}"
            data-bet_play_id="{{betPlayId}}"
            data-bet_play_pl_id="{{betPlayPlId}}"
            class="re_touzhu_tem"
    >
        <td class="span_1">
            [{{showPlayName}}]
            <br />
            {{showContent}}
        </td>
        <td class="span_2">
            {{if betMode == 1}}
            元
            {{else if betMode == 2}}
            角
            {{else if betMode == 3}}
            分
            {{/if}}
        </td>
        <td class="span_3">
            {{betZhushu}}注
        </td>
        <td class="span_4">
            {{betPerMoney}}
        </td>
        <td class="span_5">
            {{betPlayPl}}/{{betFandian}}%
        </td>
        <td class="span_6" title="删除">
            <a href="javascript:void(0)" onclick="removeThisItem(this)"><img src="${resPath}img/ico53.png" alt=""></a>
        </td>
    </tr>
</script>
<script>
</script>
<script>
    function addYuxuan(betForm) {
        $("#zhudanList .noRecord").remove();
        var html = template("template_touzhu", betForm);
        $("#zhudanList").append(html);
        bindYuxuan();
    }

    function addContent(){
        var strHtml = '';
        $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").each(function(){
            var modelStr = '';
            var playName = $(this).data('show_play_name');
            var model = $(this).data('bet_mode');
            var betContent = $(this).data('bet_content');
            var showContent = $(this).data("show_content");
            var zhushu = $(this).data('bet_zhushu');
            var perMoney = $(this).data('bet_per_money');
            var beishu = $(this).data('bet_beishu');
            var totalMoney = $(this).data('bet_total_money');

            if(model == 1){
                modelStr = '元';
            } else if(model == 2){
                modelStr = '角';
            } else if(model == 3){
                modelStr = '分';
            }

            var newStr = '<tr>' +
                '<td>' + playName + '</td>' +
                '<td>' + showContent + '</td>' +
                '<td>' + zhushu + '</td>' +
                '<td>' + perMoney + '</td>' +
                '<td>' + modelStr + '</td>' +
                '<td>' + beishu + '</td>' +
                '<td>' + totalMoney + '</td>' +
                '</tr>';
            strHtml += newStr;
        });
        return strHtml;
    }

    function bindYuxuan() {
        unbindYuxuan();
        $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").hover(
            function() {
                $("#moreZhudan").remove();
                var width = $(this).width() / 2;
                var top = $(this).offset().top - 150;
                var left = $(this).offset().left + $(this).width() / 2 * 1 / 3;
                var html = template("template_moreZhudan", {
                    top: top,
                    left: left,
                    showPlayName: $(this).data("show_play_name"),
                    showContent: $(this).data("show_content"),
                    showMode: $(this).data("bet_mode"),
                    showFandian: $(this).data("bet_fandian"),
                    showPlayPl: $(this).data("bet_play_pl"),
                    betPerMoney: $(this).data("bet_per_money"),
                    betTotalMoney: $(this).data("bet_total_money"),
                    betZhushu: $(this).data("bet_zhushu")
                })
                $("body").append(html);
            }, function() {
                $("#moreZhudan").remove();
            }
        );
    }

    function unbindYuxuan() {
        $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").unbind('mouseenter').unbind('mouseleave');
    }
</script>
<script type="text/html" id="template_moreZhudan">
    <div id="moreZhudan" class="moreZhudan" style="top:{{top}}px;left:{{left}}px">
        <div class="box">
            <div class="line">
                <span>玩法：[{{showPlayName}}]</span>
            </div>
            <div class="line">
                <span>号码：{{showContent}}</span>
            </div>
            <div class="line">
                <span>模式：{{if showMode == 1}}元{{else if showMode == 2}}角{{else if showMode == 3}}分{{/if}}模式, 奖金&nbsp;{{showPlayPl}}, 返点&nbsp;{{showFandian}}%</span>
            </div>
            <div class="line">
                <span>包含&nbsp;{{betZhushu}}&nbsp;注，每注金额&nbsp;{{betPerMoney}}&nbsp;
                {{if showMode == 1}}
                元
                {{else if showMode == 2}}
                角
                {{else if showMode == 3}}
                分
                {{/if}}
                ，{{betZhushu}}倍
                </span>
            </div>
            <div class="line">
                <span>共计&nbsp;{{betTotalMoney}}&nbsp;元</span>
            </div>
        </div>
    </div>
</script>
<c:import url="../../common/bodyEnd.jsp"/>