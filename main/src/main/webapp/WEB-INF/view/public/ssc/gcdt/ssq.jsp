<%@ page import="project38.ssc.web.interceptors.BasePathInterceptor" %>
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
                <h2>双色球</h2>
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
                        <b class="acti">官方玩法</b>
                        <p>
                            <%--<span class="acti"><a href="javascript:void(0)" data-url="ssq-cgtz">常规投注</a></span>--%>
                            <span class="acti"><a href="javascript:void(0)" data-url="ssq-gjtz">高级投注</a></span>
                            <%--<span><a href="javascript:void(0)">幸运投注</a></span>--%>
                        </p>
                    </li>
                </ul>
            </div>
            <div id="sscContent2">
                <div class="Pick">
                </div>
            </div>
            <div class="add_spot">
                <div class="left">
                    <div class="sopt_wrap">
                        <div class="slide_sp">
                            您选择了 <i class="i0" id="zhushuInfo">0</i> 注，<i class="i1" id="beishuInfo">1</i> 倍，共投注 <i
                                class="i1" id="totalMoneyInfo">0</i> 元。
                        </div>
                        <div class="reduce">
                            <a class="fl">-</a>
                            <input data-beishu="1" type="text" value="1" id="inputBeishu"
                                   onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                                   onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}">
                            <a class="fr">+</a>
                            <span>倍</span>
                        </div>
                        <div class="down">
                            <input type="text" value="2元" id="inputMoney" data-money="2">
                            <span></span>
                            <div class="down_menu">
                                <i>2元</i>
                                <i>5元</i>
                                <i>10元</i>
                                <i>20元</i>
                            </div>
                        </div>
                    </div>
                    <p class="p1">

                    </p>
                </div>
                <div class="rigth">
                    <a href="javascript:void(0)" onclick="tjzd()"><img src="${resPath}img/ico65.png" alt="">添加注单</a>
                </div>

            </div>
            <i class="it0"><img src="${resPath}img/ico46.png" alt=""></i>
            <i class="it1"><img src="${resPath}img/ico46.png" alt=""></i>

        </div>
    </div><!--Single-->
    <div class="Detailedlist Single wid1">

        <div class="layout at">
            <h1 class="at">投注清单</h1>
            <div class="boxt at">
                <div class="left">
                    <ul id="zhudanList">
                        <li class="head"><span class="sp1">玩法</span><span class="sp2">投注号码</span><span
                                class="sp3">金额</span><span class="sp4">操作</span></li>
                    </ul>
                </div><!--left-->
                <div class="right">
                    <ul>
                        <li><a href="javascript:void(0)" onclick="getSuiji(1)">随机一注</a></li>
                        <li><a href="javascript:void(0)" onclick="getSuiji(5)">随机五注</a></li>
                        <li><a href="javascript:void(0)" onclick="javascript:alert('开发中，敬请期待')"><img
                                src="${resPath}img/ico51.png" alt="">我要追号</a></li>
                        <li><a href="javascript:void(0)" onclick="clearZhudan()"><img src="${resPath}img/ico52.png"
                                                                                      alt="">清空注单</a></li>
                    </ul>
                    <p id="zongtouInfo">总投 <span>0</span> 注，<span>0</span> 倍，共 <span>0</span> 元。</p>
                    <a href="javascript:void(0)" class="ok" onclick="sureXd()"><img src="${resPath}img/ico54.png"
                                                                                    alt="">确认投注</a>
                </div>
            </div>
        </div>

    </div>
    <c:import url="common/bottomInfo.jsp"/>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="common/commonJs.jsp"/>
<script type="text/html" id="template_touzhu">
    <li
            data-zhushu="{{zhushu}}"
            data-beishu="{{beishu}}"
            data-total_money="{{totalMoney}}"
            data-money="{{money}}"
            data-play_id="{{playId}}"
            data-play_group_id="{{playGroupId}}"
            data-content="{{content}}"
    >
        <span class="sp1">{{playName}}</span>
        <span class="sp2"><font color="red">{{content.split("|")[0]}}</font>&nbsp;|&nbsp;<font color="blue">{{content.split("|")[1]}}</font></span>
        <span class="sp3">{{totalMoney}}</span>
        <span class="sp4"><a href="javascript:void(0)" onclick="removeThisItem(this)"><img src="${resPath}img/ico53.png"
                                                                                           alt=""></a></span>
    </li>
</script>
<script>
    $(function () {
        parent.hideLoading();
    });
    $(function () {
        $(".Playmethod ul li p span a").click(function () {
            $(".Playmethod ul li p span.acti").removeClass("acti");
            $(this).parent().addClass("acti");
            getSscSubPage($(this).data("url"));
        });
        $(".Playmethod ul li p span a").eq(0).trigger("click");
    });

    function clearSelected() {
        $(".Single .layout .Pick ul li span.acti").removeClass("acti");
        $("#zhushuInfo").data("zhushu", 0);
        calc();
    }

    function getSscSubPage(url) {
        url = "<%=basePath%>ssc/gcdt/" + url.split("-").join("/") + ".html";
        ajaxRequest({
            url: url,
            type: 'GET',
            dataType: 'html',
            beforeSend: function () {
                $("#sscContent2").html('<img src="${resPath}img/base_loading.gif" style="display: block;margin: auto;margin: 50px auto;">');
            },
            success: function (html) {
                $("#sscContent2").html(html);
            },
            complete: function () {
            }
        });
    }

    $("#inputMoney").change(function () {
        alert($(this).val());
    });
</script>
<script>
    var playGroupId = 12;
    var openInterval = null;
    var preNumber = null;
    var isKaijiang = false;
    var isRunning = false;
    var lockStatus = true;
    var mothodStatus = true;
    var fengPanStatus = false;
    var fInterval;
    var weiFInterval;
    var yiFInterval;
    var fengPanSum = 0;

    function getDataNumber(playGroupId, playId, isData) {
        // 彩种关闭
        var isEnable = $(".box3_timer").data("is_enable");
        if (typeof isEnable != 'undefined' && parseInt(isEnable) == 0) {
            return;
        }

        ajaxRequest({
            url: "<%=basePath%>ssc/getSscOpenTime.json",
            data: {
                isData: false,
                playGroupId: playGroupId,
                playId: playId
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }

                // 彩种关闭
                if (!json.enable) {
                    $(".box3_timer").data("is_enable", 0);
                    $(".box3_timer").html('<p class="cl-2000">封盘中</p>');
                    $(".pl").each(function () {
                        if (typeof $(this).data("plid") != 'undefined') {
                            $(this).html("封盘");
                        }
                    });
                    return;
                } else {
                    $(".box3_timer").data("is_enable", 1);
                }

                if (preNumber != null) {
                    if (preNumber != json.number) {
                        isKaijiang = true;
                    }
                    if (json.lastOpenDataList.length > 0) {
                        if (json.lastOpenDataList[0].number == preNumber) {
                            isKaijiang = false;
                            preNumber = null;
                        }
                    }
                } else {
                    preNumber = json.number;
                }

                $("#number").data("number", json.number).html(json.number);
                if (json.opening) {
                    $("#tip").html('已开盘，欢迎投注。距离封盘还有:');
                    $("#leftTime").data("time", json.leftTime);
                    $("#tip").data("opening", true);
                } else {
                    $("#tip").html('已封盘，距离开奖还有:');
                    $("#leftTime").data("time", json.leftOpenTime);
                    $("#tip").data("opening", false);
                }

                if (!isKaijiang) {
                    clearInterval(openInterval);
                    openInterval = null;
                    if (json.lastOpenDataList.length != 0) {
                        $("#lastNumber").html('第<var>' + json.lastOpenDataList[0].number + '</var>期');
                        var lastOpenCode = json.lastOpenDataList[0].openData.split(",");
                        var tmpStr = '';

                        $.each(lastOpenCode, function (index, value) {
                            var c = '';
                            if (index == 6) {
                                c = 'ball-blue';
                            } else {
                                c = 'ball-red';
                            }
                            if (index == 6) {
                                tmpStr += '<span style="background:none;color: black;width: auto;height: auto;margin-left:-5px;margin-right:8px">+</span>';
                            }
                            tmpStr += '<span class="' + c + '">' + value + '</span>';
                        });
                        $("#lastOpenCode").html(tmpStr);
                    }
                } else {
                    if (openInterval != null) {
                        return;
                    }

                    $("#lastNumber").html('<var>开奖中</var>');
                    openInterval = setInterval(function () {
                        var tmpStr = '';
                        for (var i = 0; i < 7; ++i) {
                            var value = Math.floor(Math.random() * 49) + 1;
                            var c = '';
                            if (i == 6) {
                                c = 'ball-blue';
                            } else {
                                c = 'ball-red';
                            }
                            if (i == 6) {
                                tmpStr += '<span style="background:none;color: black;width: auto;height: auto;margin-left:-5px;margin-right:8px">+</span>';
                            }
                            tmpStr += '<span class="' + c + '">' + value + '</span>';
                        }
                        $("#lastOpenCode").html(tmpStr);
                    }, 50);
                }

//                // 渲染数据
//                if (!json.opening) {
//                    $(".pl").each(function() {
//                        if (typeof $(this).data("plid") != 'undefined') {
//                            $(this).html("封盘");
//                        }
//                    });
//                } else {
//                    $.each(json.sscPlayPlGroupList, function(index, value) {
//                        var sscPlayPlList = value.sscPlayPlList;
//                        $.each(sscPlayPlList, function(index2, value2) {
//                            $("[data-plid='" + value2.id + "']").data("pl", value2.pl).html(value2.pl);
//                        });
//                    });
//                }

                if (json.lastOpenDataList.length != 0) {
                    var tmpStr = '';
                    $.each(json.lastOpenDataList, function (index, value) {
                        tmpStr += '<li><p>第' + value.number + '期</p>';

                        var arr = value.openData.split(",");
                        $.each(arr, function (index2, value2) {
                            var c = '';
                            if (index2 == 6) {
                                c = 'ball-blue';
                            } else {
                                c = 'ball-red';
                            }
                            tmpStr += '<i class="round ' + c + '">' + value2 + '</i>';
                        });
                        tmpStr += '</li>';
                    });
                    $("#lastOpenCodeList ul").html(tmpStr);
                }
            }
        });
    }
    function autoGetDataNumber() {
        var stauts_fp = "";
        var str_flag = "";
        fengPanStatus = false;
        if (!isRunning) {
            stauts_fp = $(".pl").eq(0).html();
            if (typeof stauts_fp == 'undefined' || stauts_fp == null || stauts_fp == '') {
                fengPanStatus = false;
            } else {
                if (stauts_fp == '封盘') {
                    fengPanStatus = false;
                    fengPanSum = 0;
                } else {
                    fengPanSum++;
                    fengPanStatus = false;
                }
                if (fengPanSum > 1) {
                    fengPanStatus = true;
                }
            }

            if (typeof playGroupId != 'undefined' && typeof playId != 'undefined' && mothodStatus && fengPanStatus == true) {
                getDataNumber(playGroupId, playId, false);
                mothodStatus = false;
                weiFInterval = setInterval(function () {
                    mothodStatus = true;
                    window.clearInterval(weiFInterval);
                }, 5000);
                return;
            } else if (typeof playGroupId != 'undefined' && typeof playId != 'undefined' && mothodStatus && fengPanStatus == false) {
                getDataNumber(playGroupId, playId, true);
                mothodStatus = false;
                yiFInterval = setInterval(function () {
                    mothodStatus = true;
                    window.clearInterval(yiFInterval);
                }, 5000);
            }
        }
        var time_last = $("#leftTime").data("time");
        var str_flag = $("#lastNumber").html();
        if (str_flag == "<var>开奖中</var>") {
            if (lockStatus) {
                fInterval = setInterval(function () {
                    isRunning = false;
                    lockStatus = true;
                    window.clearInterval(fInterval);
                }, 10000);
                lockStatus = false;
                isRunning = true;
            }
            return;
        } else if (parseInt(time_last) < 0) {
            isRunning = false;
            return;
        } else {
            isRunning = true;
            window.clearInterval(fInterval);
        }
    }

    $(function () {
        $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").click(function () {
            var text = $(this).text();
            $(this).parent().parent().find('input').val(text);
            $(this).parent().hide();

            $(this).parent().parent().find('input').data("money", parseInt(text));
            calc();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down span").click(function () {
            $(this).parent().find(".down_menu").show();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").parent().parent().hover(function () {

        }, function () {
            $(this).find(".down_menu").hide();
        });
    });

    function calc() {
        var money = $("#inputMoney").data("money");
        var beishu = $("#inputBeishu").data("beishu");
        var zhushu = $("#zhushuInfo").data("zhushu");

        var totalMoney = mul(beishu * zhushu, money);

        $("#beishuInfo").html(beishu);
        $("#totalMoneyInfo").data("total_money", totalMoney).html(totalMoney);
    }

    $(function () {
        $(".Single .layout .add_spot .left .sopt_wrap .reduce a.fl").click(function () {
            var val = parseInt($(".Single .layout .add_spot .left .sopt_wrap .reduce input").val());
            if (isNaN(val) || typeof val != 'number') {
                val = 1;
            }
            val = parseInt(val);

            --val;
            val = val < 1 ? 1 : val;
            $(".Single .layout .add_spot .left .sopt_wrap .reduce input").data("beishu", val).val(val);

            calc();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .reduce a.fr").click(function () {
            var val = parseInt($(".Single .layout .add_spot .left .sopt_wrap .reduce input").val());
            if (isNaN(val) || typeof val != 'number') {
                val = 1;
            }
            val = parseInt(val);

            ++val;
            val = val < 1 ? 1 : val;
            $(".Single .layout .add_spot .left .sopt_wrap .reduce input").data("beishu", val).val(val);

            calc();
        });
    });

    function clearZhudan() {
        $("#zhudanList li:not('.head')").remove();
        calcAll();
    }

    function tjzd() {
        var betForm = {};
        if (!getZhudan(betForm)) {
            return;
        }

        clearSelected();
        var html = template("template_touzhu", betForm);
        $("#zhudanList").append(html);
        calcAll();
    }

    function calcAll() {
        var totalZhushu = 0;
        var totalBeishu = 0;
        var totalMoney = 0;

        $("#zhudanList li:not('.head')").each(function () {
            totalZhushu = add(totalZhushu, $(this).data("zhushu"));
            totalBeishu = add(totalBeishu, $(this).data("beishu"));
            totalMoney = add(totalMoney, $(this).data("total_money"));
        });

        var str = '总投 <span>' + totalZhushu + '</span> 注，<span>' + totalBeishu + '</span> 倍，共 <span>' + totalMoney + '</span> 元。';
        $("#zongtouInfo").html(str);
    }

    function removeThisItem(obj) {
        $(obj).parent().parent().remove();
        calcAll();
    }

    function sureXd() {
        var betForm = {
            totalMoney: 0,
            totalZhushu: 0
        };
        var sscBetList = [];
        $("#zhudanList li:not('.head')").each(function () {
            sscBetList.push({
                playGroupId: $(this).data("play_group_id"),
                number: $("#number").data("number"),
                playId: $(this).data("play_id"),
                zhushu: $(this).data("zhushu"),
                perMoney: $(this).data("money"),
                content: $(this).data("content"),
                beishu: $(this).data("beishu"),
                playPlId: $(this).data("play_pl_id"),
                totalMoney: $(this).data("total_money"),
                playPl: $(this).data("play_pl"),
                content: $(this).data("content")
            });

            betForm.totalMoney = add(betForm.totalMoney, mul($(this).data("money"), $(this).data("beishu") * $(this).data("zhushu")));
            betForm.totalZhushu = add(betForm.totalZhushu, $(this).data("zhushu"));
        });

        if (sscBetList.length == 0) {
            alert("至少选择1注号码才能投注");
            return;
        }

        betForm.sscBetList = sscBetList;

        ajaxRequest({
            url: "<%=basePath%>ssc/ajaxBet.json",
            data: {
                betForm: JSON.stringify(betForm)
            },
            beforeSend: function () {
                layer.closeAll();
                parent.showLoading();
            },
            success: function (json) {
                parent.hideLoading();
                if (json.result == 1) {
                    layer.msg("下注成功", {icon: 1});
//                    // 刷新我的投注
//                    getBetDetails(playGroupId);
                    // 刷新余额
                    parent.getUserSession();
//                    // 重置表格
//                    reset();
                    clearZhudan();
                } else {
                    layer.msg("下注失败：" + json.description, {icon: 2});
                }
            },
            complete: function () {
            }
        });
    }

    $(function () {
        setInterval(function () {
            if (typeof autoLeftTime == 'function') {
                autoLeftTime();
            }
        }, 1000);

        setInterval(function () {
            if (typeof autoGetDataNumber == 'function') {
                autoGetDataNumber(null);
            }
        }, 1000);
    });
    function autoLeftTime() {
        var time = $("#leftTime").data("time");
        if (isNaN(time) || time < 0) {
            return;
        }
        var tmpTime = time;
        var hour = Math.floor(tmpTime / 60 / 60);
        tmpTime = tmpTime - hour * 60 * 60;
        var minute = Math.floor(tmpTime / 60);
        tmpTime = tmpTime - minute * 60;
        var second = tmpTime;

        var str = '';
        str += '<ol class="s">';
        str += '<span class="sp1">' + (Math.floor(hour / 10)) + '</span>';
        str += '<span class="sp2">' + (Math.floor(hour % 10)) + '</span>';
        str += '</ol>';
        str += '<ol class="f">';
        str += '<span class="sp1">' + (Math.floor(minute / 10)) + '</span>';
        str += '<span class="sp2">' + (Math.floor(minute % 10)) + '</span>';
        str += '</ol>';
        str += '<ol class="m">';
        str += '<span class="sp1">' + (Math.floor(second / 10)) + '</span>';
        str += '<span class="sp2">' + (Math.floor(second % 10)) + '</span>';
        str += '</ol>';

        $("#leftTime").data("time", --time).html(str);

        // 播放铃声
        if (hour == 0 && minute == 0 && second < 10 && second > 0) {
            var file = $("#selectCount").find("option:selected").data("file");
            play(file);
        }
    }

    var isInitSwfObject = false;
    function play(file) {
        if (!isInitSwfObject) {
            // 初始化音乐
            var flashvars = {};
            var params = {
                wmode: "transparent"
            };
            var attributes = {};
            swfobject.embedSWF("${resPath}js/swfobject/sound.swf", "soundContainer", "1", "1", "9.0.0", "${resPath}js/swfobject/expressInstall.swf", flashvars, params, attributes);
            isInitSwfObject = true;
        }

        var sound = swfobject.getObjectById("soundContainer");
        if (sound) {
            sound.SetVariable("f", file);
            sound.GotoFrame(1);
        }
    }

    $(function () {
        tabs_cg(".game_name .box2_stage p span i", ".game_name .box2_stage .number", "click", "acti", "", "", 0);
    });

    function getSuiji(total) {
        var betFormList = suiji(total);
        $.each(betFormList, function (index, value) {
            var html = template("template_touzhu", value);
            $("#zhudanList").append(html);
        });
        calcAll();
    }
</script>
<c:import url="../../common/bodyEnd.jsp"/>