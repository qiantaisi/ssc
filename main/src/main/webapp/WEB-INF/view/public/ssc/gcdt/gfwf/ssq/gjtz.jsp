<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<style>
    .Single .layout .add_spot{margin-top: 0!important;}
    .ssq_shuom{padding-top:0!important;}
</style>
<div class="group">
    <ul>
        <li>
            <b class="tit_img">模式</b>
            <p>
                <span class="playPlIdBtn acti" data-play_id="1033" data-play_pl_id="14846|14847|14848|14849" data-name="ssqfs" data-fun_zhushu="zhushu_ssqfs" data-fun_content="content_ssqfs" data-fun_suiji="suiji_ssqfs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn" data-play_id="1034" data-play_pl_id="14850|14851|14852|14853" data-name="ssqds" data-fun_zhushu="zhushu_ssqds" data-fun_content="content_ssqds" data-fun_suiji="suiji_ssqds"><a href="javascript:void(0)">直选单式</a></span>
            </p>
        </li>
    </ul>
</div>

<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />

<script type="text/html" id="template_ssqfs">
<div class="Pick">
    <div class="cl-200 ssq_shuom">
        <p class="p1">
        <span class="fr fl cl-1001">
            本平台双色球每期从33个红球中选5个号码，从16个蓝球中选1个号码作为一注。
            <a>
                <img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：红球 01 03 04 05 06 篮球 07 开奖号码：红球 03 04 05 01 06 (顺序不限)&nbsp;篮球 07 即中双色球。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从33个红色球中和16个蓝色球中分别选择至少选择5个红球和1个篮球组成一注，所选号码与开奖号码包含的红球相同(顺序不限)及蓝色球，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="红球" >
                <b><i>红球</i></b>
                <p>
                <span><i>01</i> </span>
                <span><i>02</i> </span>
                <span><i>03</i> </span>
                <span><i>04</i> </span>
                <span><i>05</i> </span>
                <span><i>06</i> </span>
                <span><i>07</i> </span>
                <span><i>08</i> </span>
                <span><i>09</i> </span>
                <span><i>10</i> </span>
                <span><i>11</i> </span>
                </p>
                <p class="numssq">
                <span><i>12</i> </span>
                <span><i>13</i> </span>
                <span><i>14</i> </span>
                <span><i>15</i> </span>
                <span><i>16</i> </span>
                <span><i>17</i> </span>
                <span><i>18</i> </span>
                <span><i>19</i> </span>
                <span><i>20</i> </span>
                <span><i>21</i> </span>
                <span><i>22</i> </span>
            </p>
                <p class="numssq">
                    <span><i>23</i> </span>
                    <span><i>24</i> </span>
                    <span><i>25</i> </span>
                    <span><i>26</i> </span>
                    <span><i>27</i> </span>
                    <span><i>28</i> </span>
                    <span><i>29</i> </span>
                    <span><i>30</i> </span>
                    <span><i>31</i> </span>
                    <span><i>32</i> </span>
                    <span><i>33</i> </span>

                </p>
            </li>

        </ul>
    </div>
    <div class="cl-201">
        <ul class="lanqiu">
            <li data-name="蓝球">
            <b><i>蓝球</i></b>
                <p>
                <span><i>01</i> </span>
                <span><i>02</i> </span>
                <span><i>03</i> </span>
                <span><i>04</i> </span>
                <span><i>05</i> </span>
                <span><i>06</i> </span>
                <span><i>07</i> </span>
                <span><i>08</i> </span>
                <span><i>09</i> </span>
                <span><i>10</i> </span>
                <span><i>11</i> </span>
                </p>
            <p class="numssq">
                <span><i>12</i> </span>
                <span><i>13</i> </span>
                <span><i>14</i> </span>
                <span><i>15</i> </span>
                <span><i>16</i> </span>
            </p>
            </li>
        </ul>
    </div>
    <%--<c:import url="../common/subPageCommonJs.jsp" />--%>
</div>
</script>

<script type="text/html" id="template_ssqds">
    <div class="Pick cl-1003 recl-1003" data-flag="dan">
        <p class="p1">
        <span class="fr fl cl-1001">
            每注有五个红球和一个蓝球，每个球必须是两位数字，红球和蓝球之间以一个":"（冒号）分隔， 例如：01 02 03 04 05:01；
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01 03 04 05 06 07<br> 开奖号码：07 03 04 05 01 06顺序不限即中双色球。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>一等奖：中5个红球和1个蓝球，顺序不限；如开奖号：红球01 02 03 04 05 06蓝球01，投注号码红球01 02 03 04 05蓝球01。<br>二等奖：中4个红球1个蓝球或者5个红球，顺序不限。<br>三等奖：中3个红球1个蓝球或4个红球，顺序不限。<br>四等奖：中2个红球1个蓝球或1个红球1个蓝球或者1个蓝球，即中奖，顺序不限。</var>
            </a>
        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
            <div class="right con_j_end">
                <ul>
                    <li onclick="delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                    <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                    <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
                </ul>
            </div>
        </div>

        <p class="rep1_zhushi">每一注号码之间请用一个 空格逗号[,] 或者 分号[;] 隔开</p>
    </div>
</script>
<script>
    function daoRu(){
        showloadTxtTemplate1();
    }
</script>
<%--
<script>
    var playGroupId = 12;
/*    var playId = 304;
    var playName = '单式';*/

    $(function () {
//        alert('t');
        $(".cl-200 ul li span i,.cl-201 ul li span i").click(function () {
            $(this).parent().toggleClass("acti");

            var zhushu = getZhushu();
            $("#zhushuInfo").data("zhushu", zhushu).html(zhushu);
            calc();
        });
    });

    function getZhushu() {
        var redArr = [];
        $.each($(".cl-200 ul li span.acti"), function (index, value) {
            redArr.push($.trim($(this).find("i").html()));
        });

        var blueArr = [];
        $.each($(".cl-201 ul li span.acti"), function (index, value) {
            blueArr.push($.trim($(this).find("i").html()));
        });

        var redLength = redArr.length;
        var blueLength = blueArr.length;

        if (redLength < 6 || blueLength < 1) {
            return 0;
        }

        var redList = getFlagArrs(redArr, 6);
        return redList.length * blueLength;
    }

    function suiji(total) {
        var result = [];
        for (var numIndex = 0; numIndex < total; ++numIndex) {
            var redArr = [];
            for (var i = 1; i <= 33; ++i) {
                redArr[i] = 0;
            }

            var arr = [];
            while (arr.length != 6) {
                var num = parseInt(Math.random() * 33 + 1);
                if (redArr[num] != 1) {
                    redArr[num] = 1;
                    arr.push(num < 10 ? '0' + num : num);
                }
            }

            var blueNum = parseInt(Math.random() * 16 + 1);
            blueNum = blueNum < 10 ? '0' + blueNum : blueNum;

            var obj = {};
            obj.playName = playName;
            obj.content = arr.join(" ") + " | " + blueNum;
            obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money"));
            obj.zhushu = 1;
            obj.beishu = $("#inputBeishu").data("beishu");
            obj.money = $("#inputMoney").data("money");
            obj.playId = playId;
            obj.playGroupId = playGroupId;
            result.push(obj);
        }
        return result;


    }

    function getZhudan(obj) {
        var redArr = [];
        $.each($(".cl-200 ul li span.acti"), function (index, value) {
            redArr.push($.trim($(this).find("i").html()));
        });

        var blueArr = [];
        $.each($(".cl-201 ul li span.acti"), function (index, value) {
            blueArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getZhushu();
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.playName = playName;
        obj.content = redArr.join(" ") + " | " + blueArr.join(" ");
        obj.totalMoney = $("#totalMoneyInfo").data("total_money");
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.playId = playId;
        obj.playGroupId = playGroupId;

        return true;
//        result.playName = playName;
//        result.content = redArr.join(" ") + " | " + blueArr.join(" ");
//
//        result.playGroupId = playGroupId;
//        $.each(tmpArr, function(index, value) {
//            betForm.sscBetList.push({
//                playGroupName: playGroupName,
//                playGroupId: playGroupId,
//                number: $("#number").data("number"),
//                playId: playId,
//                zhushu: 1,
//                perMoney: inputMoney,
//                content: '十一不中-' + value.split(" ").join(","),
//                playPlId: minPlId,
//                playPl: minPl
//            });
//            betForm.totalMoney = add(betForm.totalMoney, inputMoney);
//            betForm.totalZhushu = add(betForm.totalZhushu, 1);
//        });
    }

    function getYilou() {
        ajaxRequest({
            url: "<%=basePath%>ssc/ajaxGetHistory.json",
            data: {
                playGroupId: playGroupId,
                pageIndex: 1,
                pageSize: 50
            },
            beforeSend: function () {
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }

                if (json.sscHistoryList.length == 0) {
                    return;
                }

                var redYilouArr = [];
                for (var i = 1; i <= 33; ++i) {
                    redYilouArr[i] = [];
                }

                var blueYilouArr = [];
                for (var i = 1; i <= 16; ++i) {
                    blueYilouArr[i] = [];
                }
                $.each(json.sscHistoryList, function (index, value) {
                    var openCodeArr = value.openCode.split(',');
                    for (var i = 1; i <= 33; ++i) {
                        var num = i;

                        var isExist = false;
                        for (var j = 0; j < 6; ++j) {
                            var tmpNum = parseInt(openCodeArr[j]);
                            if (tmpNum == num) {
                                isExist = true;
                                break;
                            }
                        }

                        if (!isExist) {
                            redYilouArr[i].push(0);
                        } else {
                            redYilouArr[i].push(1);
                        }
                    }

                    for (var i = 1; i <= 16; ++i) {
                        var num = i;

                        var isExist = false;
                        var tmpNum = parseInt(openCodeArr[6]);
                        if (tmpNum == num) {
                            isExist = true;
                        }

                        if (!isExist) {
                            blueYilouArr[i].push(0);
                        } else {
                            blueYilouArr[i].push(1);
                        }
                    }
                });

                for (var i = 1; i <= 33; ++i) {
                    var totalYilou = 0;
                    for (var j = 0; j < redYilouArr[i].length; ++j) {
                        if (redYilouArr[i][j] == 0) {
                            ++totalYilou;
                        } else {
                            break;
                        }
                    }
                    $(".cl-200 ul li span var.yilou").eq(i - 1).html(totalYilou);
                }

                for (var i = 1; i <= 16; ++i) {
                    var totalYilou = 0;
                    for (var j = 0; j < blueYilouArr[i].length; ++j) {
                        if (blueYilouArr[i][j] == 0) {
                            ++totalYilou;
                        } else {
                            break;
                        }
                    }
                    $(".cl-201 ul li span var.yilou").eq(i - 1).html(totalYilou);
                }
            }
        });
    }

    function toggleYilou() {
//        $(".cl-201 ul li span var.yilou,.cl-200 ul li span var.yilou").toggle();
        $("var.yilou").toggle();
    }

    $(function () {
        getYilou();
    });
</script>--%>
