<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="group">
    <ul>
        <li>
            <b>模式</b>
            <p>
                <span class="acti"><a href="javascript:void(0)">单式</a></span>
                <%--<span><a href="#">拖胆</a></span>--%>
                <%--<span><a href="#">定胆杀号</a></span>--%>
            </p>
        </li>
    </ul>
</div>
<div class="Pick">
    <div class="cl-200">
        <div class="cl-204">
            <span class="fl">
                <a href="javascript:void(0)" class="a0" onclick="toggleYilou()"><img src="${resPath}img/ico58.png"
                                                                                     alt="">遗漏</a>
                <%--<a href="#"><img src="${resPath}img/ico59.png" alt="">冷热</a>--%>
            </span>
            <strong>红球区</strong>
            <span>至少选择6个红球</span>
        </div>
        <ul>
            <li>
                <b class="cl-202">
                    <i>&nbsp;</i>
                    <var class="yilou">
                        遗漏
                        <i></i>
                    </var>
                </b>
                <span><i>01</i><var class="yilou">0</var></span>
                <span><i>02</i><var class="yilou">0</var></span>
                <span><i>03</i><var class="yilou">0</var></span>
                <span><i>04</i><var class="yilou">0</var></span>
                <span><i>05</i><var class="yilou">0</var></span>
                <span><i>06</i><var class="yilou">0</var></span>
                <span><i>07</i><var class="yilou">0</var></span>
                <span><i>08</i><var class="yilou">0</var></span>
                <span><i>09</i><var class="yilou">0</var></span>
                <span><i>10</i><var class="yilou">0</var></span>
                <span><i>11</i><var class="yilou">0</var></span>
            </li>
            <li>
                <b class="cl-202">
                    <i>&nbsp;</i>
                    <var class="yilou">
                        遗漏
                        <i></i>
                    </var>
                </b>
                <span><i>12</i><var class="yilou">0</var></span>
                <span><i>13</i><var class="yilou">0</var></span>
                <span><i>14</i><var class="yilou">0</var></span>
                <span><i>15</i><var class="yilou">0</var></span>
                <span><i>16</i><var class="yilou">0</var></span>
                <span><i>17</i><var class="yilou">0</var></span>
                <span><i>18</i><var class="yilou">0</var></span>
                <span><i>19</i><var class="yilou">0</var></span>
                <span><i>20</i><var class="yilou">0</var></span>
                <span><i>21</i><var class="yilou">0</var></span>
                <span><i>22</i><var class="yilou">0</var></span>
            </li>
            <li>
                <b class="cl-202">
                    <i>&nbsp;</i>
                    <var class="yilou">
                        遗漏
                        <i></i>
                    </var>
                </b>
                <span><i>23</i><var class="yilou">0</var></span>
                <span><i>24</i><var class="yilou">0</var></span>
                <span><i>25</i><var class="yilou">0</var></span>
                <span><i>26</i><var class="yilou">0</var></span>
                <span><i>27</i><var class="yilou">0</var></span>
                <span><i>28</i><var class="yilou">0</var></span>
                <span><i>29</i><var class="yilou">0</var></span>
                <span><i>30</i><var class="yilou">0</var></span>
                <span><i>31</i><var class="yilou">0</var></span>
                <span><i>32</i><var class="yilou">0</var></span>
                <span><i>33</i><var class="yilou">0</var></span>
            </li>
        </ul>
    </div>
    <div class="cl-201">
        <div class="cl-204 cl-205">
            <strong>蓝球区</strong>
            <span>至少选择1个蓝球</span>
        </div>
        <ul>
            <li>
                <span><i>01</i><var class="yilou">0</var></span>
                <span><i>02</i><var class="yilou">0</var></span>
                <span><i>03</i><var class="yilou">0</var></span>
                <span><i>04</i><var class="yilou">0</var></span>
                <span><i>05</i><var class="yilou">0</var></span>
                <span><i>06</i><var class="yilou">0</var></span>
            </li>
            <li>
                <span><i>07</i><var class="yilou">0</var></span>
                <span><i>08</i><var class="yilou">0</var></span>
                <span><i>09</i><var class="yilou">0</var></span>
                <span><i>10</i><var class="yilou">0</var></span>
                <span><i>11</i><var class="yilou">0</var></span>
                <span><i>12</i><var class="yilou">0</var></span>
            </li>
            <li>
                <span><i>13</i><var class="yilou">0</var></span>
                <span><i>14</i><var class="yilou">0</var></span>
                <span><i>15</i><var class="yilou">0</var></span>
                <span><i>16</i><var class="yilou">0</var></span>
            </li>
        </ul>
    </div>
    <%--<c:import url="../common/subPageCommonJs.jsp" />--%>
</div>
<script>
    var playGroupId = 12;
    var playId = 304;
    var playName = '单式';

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
</script>