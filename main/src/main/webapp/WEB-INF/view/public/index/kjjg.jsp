<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<%--<c:import url="../common/checkIsChildFrame.jsp" />--%>

<div class="process">
    <div class="wid1">
        <div class="Resultt reResulttBg">
            <i class="it0"><img src="${resPath}img/ico46.png" alt=""></i>
            <i class="it1"><img src="${resPath}img/ico46.png" alt=""></i>
            <h1><img src="${resPath}img/ico71.png" alt=""></h1>
            <div class="latyout at">
                <div class="tabs_ce at">
                    <ul>
                        <li class="acti nob" data-subnav="1" name="top"><a href="javascript:void(0)">全部彩种</a></li>
                        <li data-subnav="2"><a href="javascript:void(0)">高频彩</a></li>
                        <li data-subnav="3"><a href="javascript:void(0)">低频彩</a></li>
                        <li data-subnav="4"><a href="javascript:void(0)">全国彩种开奖</a></li>
                        <li data-subnav="5"><a href="javascript:void(0)">地方彩种开奖</a></li>
                        <li data-subnav="6"><a href="javascript:void(0)">境外彩种开奖</a></li>
                        <li data-subnav="7"><a href="javascript:void(0)">本站品牌</a></li>
                        <li data-subnav="8"><a href="javascript:void(0)">开奖搜索</a></li>
                    </ul>
                </div>
                <div class="wrap_select at corl1 kjjg_hz_style" id="subNav_1">
                    <div>
                        <a class="acti" href="javascript:void(0)">汇总</a>
                        <a href="javascript:void(0)" data-playgroupid="6">六合彩</a>
                        <a href="javascript:void(0)" data-playgroupid="9">北京PK10</a>
                        <a href="javascript:void(0)" data-playgroupid="23">极速PK10</a>
                        <a href="javascript:void(0)" data-playgroupid="14">幸运飞艇</a>
                        <a href="javascript:void(0)" data-playgroupid="15">分分时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="1">重庆时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="2">天津时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="3">新疆时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="13">三分时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="16">两分时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="17">五分时时彩</a>
                        <%--<a href="javascript:void(0)" style="visibility: hidden">占位</a>--%>
                        <a href="javascript:void(0)" data-playgroupid="18">江苏快3</a>
                        <a href="javascript:void(0)" data-playgroupid="19">湖北快3</a>
                        <a href="javascript:void(0)" data-playgroupid="20">安徽快3</a>
                        <a href="javascript:void(0)" data-playgroupid="21">吉林快3</a>
                        <a href="javascript:void(0)" data-playgroupid="10">重庆幸运农场</a>
                        <a href="javascript:void(0)" data-playgroupid="11">广东快乐十分</a>
                        <a href="javascript:void(0)" data-playgroupid="4">体彩排列3</a>
                        <a href="javascript:void(0)" data-playgroupid="5">福彩3D</a>
                        <a href="javascript:void(0)" data-playgroupid="7">幸运28</a>
                        <a href="javascript:void(0)" data-playgroupid="8" class="last">北京快乐8</a>
                    </div>
                </div>
                <div class="wrap_select at corl1 hide kjjg_hz_style" id="subNav_2">
                    <div>
                        <a href="javascript:void(0)" data-playgroupid="9">北京PK10</a>
                        <a href="javascript:void(0)" data-playgroupid="23">极速PK10</a>
                        <a href="javascript:void(0)" data-playgroupid="14">幸运飞艇</a>
                        <a href="javascript:void(0)" data-playgroupid="15">分分时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="1">重庆时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="2">天津时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="3">新疆时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="16">两分时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="13">三分时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="17">五分时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="18">江苏快3</a>
                        <a href="javascript:void(0)" data-playgroupid="19">湖北快3</a>
                        <a href="javascript:void(0)" data-playgroupid="20">安徽快3</a>
                        <a href="javascript:void(0)" data-playgroupid="21">吉林快3</a>
                        <a href="javascript:void(0)" data-playgroupid="10">重庆幸运农场</a>
                        <a href="javascript:void(0)" data-playgroupid="11">广东快乐十分</a>
                        <a href="javascript:void(0)" data-playgroupid="7">幸运28</a>
                        <a href="javascript:void(0)" data-playgroupid="8">北京快乐8</a>
                    </div>
                </div>
                <div class="wrap_select at corl1 hide" id="subNav_3">
                    <div>
                        <a href="javascript:void(0)" data-playgroupid="6">六合彩</a>
                        <a href="javascript:void(0)" data-playgroupid="4">体彩排列3</a>
                        <a href="javascript:void(0)" data-playgroupid="5">福彩3D</a>
                    </div>
                </div>
                <div class="wrap_select at corl1 hide" id="subNav_4">
                    <div>
                        <a href="javascript:void(0)" data-playgroupid="6">六合彩</a>
                        <a href="javascript:void(0)" data-playgroupid="4">体彩排列3</a>
                        <a href="javascript:void(0)" data-playgroupid="5">福彩3D</a>
                        <a href="javascript:void(0)" data-playgroupid="7">幸运28</a>
                    </div>
                </div>
                <div class="wrap_select at corl1 hide" id="subNav_5">
                    <div>
                        <a href="javascript:void(0)" data-playgroupid="9">北京PK10</a>
                        <a href="javascript:void(0)" data-playgroupid="1">重庆时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="2">天津时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="3">新疆时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="18">江苏快3</a>
                        <a href="javascript:void(0)" data-playgroupid="19">湖北快3</a>
                        <a href="javascript:void(0)" data-playgroupid="20">安徽快3</a>
                        <a href="javascript:void(0)" data-playgroupid="21">吉林快3</a>
                        <a href="javascript:void(0)" data-playgroupid="10">重庆幸运农场</a>
                        <a href="javascript:void(0)" data-playgroupid="11">广东快乐十分</a>
                        <a href="javascript:void(0)" data-playgroupid="8" class="last">北京快乐8</a>
                    </div>
                </div>
                <div class="wrap_select at corl1 hide" id="subNav_6">
                    <div>
                        <a href="javascript:void(0)" data-playgroupid="14">幸运飞艇</a>
                        <a href="javascript:void(0)" data-playgroupid="6">香港六合彩</a>
                    </div>
                </div>
                <div class="wrap_select at corl1 hide" id="subNav_7">
                    <div>
                        <a href="javascript:void(0)" data-playgroupid="23">极速PK10</a>
                        <a href="javascript:void(0)" data-playgroupid="15">分分时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="16">两分时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="13">三分时时彩</a>
                        <a href="javascript:void(0)" data-playgroupid="17">五分时时彩</a>
                    </div>
                </div>
                <div class="wrap_select at corl1 hide" id="subNav_8">
                    <div class="zx" style="display:block;">
                        <p>精确搜索：</p>
                        <select class="kjTime">
                            <option value="t1">今天开奖</option>
                            <option value="t2">昨天开奖</option>
                            <option value="t3">三天内开奖</option>
                        </select>
                        <select class="kjCz">
                            <option value="6">香港六合彩</option>
                            <option value="9">北京PK10</option>
                            <option value="23">极速PK10</option>
                            <option value="14">幸运飞艇</option>
                            <option value="15">分分时时彩</option>
                            <option value="1">重庆时时彩</option>
                            <option value="2">天津时时彩</option>
                            <option value="3">新疆时时彩</option>
                            <option value="16">两分时时彩</option>
                            <option value="13">三分时时彩</option>
                            <option value="17">五分时时彩</option>
                            <option value="18">江苏快3</option>
                            <option value="19">湖北快3</option>
                            <option value="20">安徽快3</option>
                            <option value="21">吉林快3</option>
                            <option value="10">重庆幸运农场</option>
                            <option value="11">广东快乐十分</option>
                            <option value="4">体育排列3</option>
                            <option value="5">福彩3D</option>
                            <option value="7">幸运28</option>
                            <option value="8">北京快乐8</option>
                        </select>
                        <input class="inp1" type="text" name="qihao" placeholder="输入期数"/>
                        <input class="inp2" type="submit" onclick="sousuokjhm()" value="搜索" name="" />
                    </div>
                </div>

                <div class="Thelottery">
                </div>
                <div class="Color_type"></div>
            </div>
        </div>
    </div>
</div>
<c:import url="../common/jsCommonLogin.jsp"/>
<c:import url="../common/commonJs.jsp"/>
<script>
    $(function() {
        var caiZhong;
        var date = new Date();
        var year=date.getFullYear();   //返回一个表示年份的 4 位数字
        var month=date.getMonth()+1;   //返回表示月份的数字。返回值是 0（一月） 到 11（十二月） 之间的一个整数
        var pageSize=30;
        var startTime=null;
        var endTime=null;

        $(".tabs_ce ul li").click(function() {
            $(".Resultt .latyout .wrap_select").hide();
            var id = $(this).data("subnav");
            $(this).parent().find(".acti").removeClass("acti");
            $(this).parent().find(".nob").removeClass("nob");
            $(this).addClass("acti").addClass("nob");
            $("#subNav_" + id).show();
        });

        $(".Resultt .latyout .wrap_select a").click(function() {
            $(".Resultt .latyout .wrap_select a.acti").removeClass("acti");
            $(this).addClass("acti");
            var playGroupId = $(this).data("playgroupid");
            getData(playGroupId);
        });
        caiZhong = '${param.playGroupId}';

        if (typeof caiZhong == 'undefined' || !caiZhong) {
            getData();
        }else{
            getData(Tools.parseInt(caiZhong));
            $("#subNav_1 div a[data-playgroupid='"+Tools.parseInt(caiZhong)+"']").trigger("click");
        }
    });

    function sousuokjhm() {
        var strTi = $(".zx .kjTime").find("option:selected").val();
        var strCz = $(".zx .kjCz").find("option:selected").val();
        var strQihao = $("input[name='qihao']").val();
        getSouData(strCz,strTi,strQihao);
    }

    function showLoading() {
        layer.load(2, {
            shade: [0.1,'#000'] //0.1透明度的白色背景
        });
        $(".layui-layer-loading").css({"width": "auto", "left" : "50%"});
    }
    function hideLoading() {
        layer.closeAll();
    }
    function getSouData(playGroupId,startT,qiHao) {
        ajaxRequest({
            url: "<%=basePath%>ssc/ajaxGetHistory.json",
            data: {
                playGroupId: playGroupId,
                pageIndex: 1,
                number: qiHao,
                startT:startT
            },
            beforeSend: function() {
                showLoading();
            },
            success: function(json) {
                if (json.result != 1) {
                    return;
                }
                renderData(json.sscHistoryList);
            },
            complete: function() {
                hideLoading();
            }
        });
    }
    function getData(playGroupId) {
        if (typeof playGroupId == 'undefined' || playGroupId == null) {
            var type = 0;
            ajaxRequest({
                <%--url: "<%=basePath%>ssc/getAllOpenTime.json",--%>
                url: "<%=basePath%>ssc/getAllDataHistory.json",
                data: {
                    type:type
                },
                beforeSend: function() {
                    showLoading();
                },
                success: function(json) {
                    if (json.result != 1) {
                        return;
                    }
                    renderAllData(json.sscHistoryList);
                },
                complete: function() {
                    hideLoading();
                }
            });
        } else {
            ajaxRequest({
                url: "<%=basePath%>ssc/ajaxGetHistory.json",
                data: {
                    playGroupId: playGroupId,
                    pageIndex: 1,
                    pageSize: 30
                },
                beforeSend: function() {
                    showLoading();
                },
                success: function(json) {
                    if (json.result != 1) {
                        return;
                    }
                    renderData(json.sscHistoryList);
                },
                complete: function() {
                    hideLoading();
                }
            });
        }
    }

    var html_sflhc = '';
    function renderAllData(data) {
        var str = '';
        str += '<ul>';

        var date = new Date();
        var now = date.getTime();  //getTime() 返回距 1970 年 1 月 1 日之间的毫秒数
        date.setDate(date.getDate() + 1); //setDate() 用于设置一个月的某一天，getDate()可返回月份的某一天
        var todayEnd = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate() + " 0:0:0";
        todayEnd = (new Date(todayEnd)).getTime();
        var leftTime = Math.floor((todayEnd - now) / 1000);

        $.each(data, function(index, value) {
            var playGroupId = Tools.parseInt(value.playGroupId);
            if ($.inArray(playGroupId, [1, 2, 3, 13, 15, 16, 17]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;

                var timeCha = value.openTime - leftTime;
                obj.isToday = !isNaN(timeCha) && timeCha <= 0 ? true : false;


                var numArr = value.openCode.split(",");
                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);
                var num4 = Tools.parseInt(numArr[3]);
                var num5 = Tools.parseInt(numArr[4]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;
                obj.num4 = num4;
                obj.num5 = num5;

                var sum = num1 + num2 + num3 + num4 + num5;
                obj.sum = sum;

                obj.ds = sum % 2 == 0 ? '双' : '单';
                obj.dx = 0 <= sum && sum <= 22 ? '小' : '大';
                var cha = num1 - num5;
                obj.lh = cha == 0 ? '和' : (cha > 0 ? '龙' : '虎');
                var html = template("template_" + playGroupId, obj);
                str += html;
            } else if ($.inArray(playGroupId, [4, 5, 18, 19, 20, 21]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;

                var timeCha = value.openTime - leftTime;
                obj.isToday = !isNaN(timeCha) && timeCha <= 0 ? true : false;

                var numArr = value.openCode.split(",");
                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);

                if(playGroupId == 18 || playGroupId == 19 || playGroupId ==20 || playGroupId == 21) {
                    var hezhi = num1 + num2 + num3;
                    obj.danS = hezhi % 2 == 0 ? '双' : '单';
                    obj.daX = hezhi <= 10 ? '小' : '大';
                    obj.hezhi = hezhi;
                }

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;

                var html = template("template_" + playGroupId, obj);

                if(playGroupId == 5){
                    str += html;
                    str += '<span class="sflhc_str"></span>';
                }else{
                    str += html;
                }
            } else if ($.inArray(playGroupId, [6, 22]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;

                var timeCha = value.openTime - leftTime;
                obj.isToday = !isNaN(timeCha) && timeCha <= 0 ? true : false;

                var numArr = value.openCode.split(",");
                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);
                var num4 = Tools.parseInt(numArr[3]);
                var num5 = Tools.parseInt(numArr[4]);
                var num6 = Tools.parseInt(numArr[5]);
                var num7 = Tools.parseInt(numArr[6]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;
                obj.num4 = num4;
                obj.num5 = num5;
                obj.num6 = num6;
                obj.num7 = num7;

                obj.sx1 = getSxName(num1);

                obj.sx2 = getSxName(num2);
                obj.sx3 = getSxName(num3);
                obj.sx4 = getSxName(num4);
                obj.sx5 = getSxName(num5);
                obj.sx6 = getSxName(num6);
                obj.sx7 = getSxName(num7);
                obj.bose1 = getBose(num1);
                obj.bose2 = getBose(num2);
                obj.bose3 = getBose(num3);
                obj.bose4 = getBose(num4);
                obj.bose5 = getBose(num5);
                obj.bose6 = getBose(num6);
                obj.bose7 = getBose(num7);

                var html = template("template_" + playGroupId, obj)
                if(playGroupId == 22){
                    html_sflhc = html;
                }else{
                    str += html;
                }
            } else if ($.inArray(playGroupId, [7]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;

                var timeCha = value.openTime - leftTime;
                obj.isToday = !isNaN(timeCha) && timeCha <= 0 ? true : false;

                var numArr = value.openCode.split(",");
                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;

                var html = template("template_" + playGroupId, obj);
                str += html;
            } else if ($.inArray(playGroupId, [8]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;

                var timeCha = value.openTime - leftTime;
                obj.isToday = !isNaN(timeCha) && timeCha <= 0 ? true : false;

                var numArr = value.openCode.split(",");
                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);
                var num4 = Tools.parseInt(numArr[3]);
                var num5 = Tools.parseInt(numArr[4]);
                var num6 = Tools.parseInt(numArr[5]);
                var num7 = Tools.parseInt(numArr[6]);
                var num8 = Tools.parseInt(numArr[7]);
                var num9 = Tools.parseInt(numArr[8]);
                var num10 = Tools.parseInt(numArr[9]);
                var num11 = Tools.parseInt(numArr[10]);
                var num12 = Tools.parseInt(numArr[11]);
                var num13 = Tools.parseInt(numArr[12]);
                var num14 = Tools.parseInt(numArr[13]);
                var num15 = Tools.parseInt(numArr[14]);
                var num16 = Tools.parseInt(numArr[15]);
                var num17 = Tools.parseInt(numArr[16]);
                var num18 = Tools.parseInt(numArr[17]);
                var num19 = Tools.parseInt(numArr[18]);
                var num20 = Tools.parseInt(numArr[19]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;
                obj.num4 = num4;
                obj.num5 = num5;
                obj.num6 = num6;
                obj.num7 = num7;
                obj.num8 = num8;
                obj.num9 = num9;
                obj.num10 = num10;
                obj.num11 = num11;
                obj.num12 = num12;
                obj.num13 = num13;
                obj.num14 = num14;
                obj.num15 = num15;
                obj.num16 = num16;
                obj.num17 = num17;
                obj.num18 = num18;
                obj.num19 = num19;
                obj.num20 = num20;

                var html = template("template_" + playGroupId, obj);
                str += html;
            } else if ($.inArray(playGroupId, [9,14,23]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;

                var timeCha = value.openTime - leftTime;
                obj.isToday = !isNaN(timeCha) && timeCha <= 0 ? true : false;

                var numArr = value.openCode.split(",");
                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);
                var num4 = Tools.parseInt(numArr[3]);
                var num5 = Tools.parseInt(numArr[4]);
                var num6 = Tools.parseInt(numArr[5]);
                var num7 = Tools.parseInt(numArr[6]);
                var num8 = Tools.parseInt(numArr[7]);
                var num9 = Tools.parseInt(numArr[8]);
                var num10 = Tools.parseInt(numArr[9]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;
                obj.num4 = num4;
                obj.num5 = num5;
                obj.num6 = num6;
                obj.num7 = num7;
                obj.num8 = num8;
                obj.num9 = num9;
                obj.num10 = num10;

                var html = template("template_" + playGroupId, obj);
                str += html;
            } else if ($.inArray(playGroupId, [10, 11]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;

                var timeCha = value.openTime - leftTime;
                obj.isToday = !isNaN(timeCha) && timeCha <= 0 ? true : false;


                var numArr = value.openCode.split(",");
                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);
                var num4 = Tools.parseInt(numArr[3]);
                var num5 = Tools.parseInt(numArr[4]);
                var num6 = Tools.parseInt(numArr[5]);
                var num7 = Tools.parseInt(numArr[6]);
                var num8 = Tools.parseInt(numArr[7]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;
                obj.num4 = num4;
                obj.num5 = num5;
                obj.num6 = num6;
                obj.num7 = num7;
                obj.num8 = num8;

                var sum = num1 + num2 + num3 + num4 + num5 + num6 + num7 + num8;
                obj.sum = sum;

                obj.str1 = sum;
                obj.str2 = sum % 2 == 0 ? '双' : '单';
                obj.str3 = sum == 84 ? '和' : (sum < 84 ? '小' : '大');
                obj.str4 = sum >= 5 ? '尾大' : '尾小';
                var cha = num1 - num8;
                obj.str5 = cha == 0 ? '和' : (cha > 0 ? '龙' : '虎');

                var html = template("template_" + playGroupId, obj);
                str += html;
            }
        });
        str += '</ul>';
        $('.Color_type').hide();
        $(".Thelottery").html(str).show();
        $(".Thelottery .sflhc_str").html(html_sflhc);
    }

    function renderData(data) {
        var str = '';
        str += '<ul>';
        str += '<li class="head"><span class="sp1">彩种</span><span class="sp2">期号</span><span class="sp3">开奖时间</span><span class="sp4">开奖号码</span><span class="sp5">期数（每天）</span><span class="sp6">开奖频率</span><span class="sp8">走势</span><span class="sp9">购彩</span></li>';
        $.each(data, function(index, value) {
            var playGroupId = Tools.parseInt(value.playGroupId);

            if ($.inArray(playGroupId, [1, 2, 3, 13, 15, 16, 17]) >= 0) {
                var obj = {};
                obj.playGroupId = playGroupId;
                obj.number = value.number;
                obj.openTime = Tools.formatDate(value.openTime);

                var numArr = value.openCode.split(",");
                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);
                var num4 = Tools.parseInt(numArr[3]);
                var num5 = Tools.parseInt(numArr[4]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;
                obj.num4 = num4;
                obj.num5 = num5;

                var sum = num1 + num2 + num3 + num4 + num5;
                obj.sum = sum;

                obj.ds = sum % 2 == 0 ? '双' : '单';
                obj.dx = 0 <= sum && sum <= 22 ? '小' : '大';
                var cha = num1 - num2;
                obj.lh = cha == 0 ? '和' : (cha > 0 ? '龙' : '虎');
                var html = template("template_single_" + playGroupId, obj);
                str += html;
            } else if ($.inArray(playGroupId, [4, 5, 18, 19, 20, 21]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;
                obj.openTime = Tools.formatDate(value.openTime);

                var numArr = value.openCode.split(",");
                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;

                var html = template("template_single_" + playGroupId, obj);
                str += html;
            } else if ($.inArray(playGroupId, [6, 22]) >= 0) {
                var obj = {};
                obj.playGroupId = playGroupId;
                obj.number = value.number;
                obj.openTime = Tools.formatDate(value.openTime);
                var numArr = value.openCode.split(",");

                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);
                var num4 = Tools.parseInt(numArr[3]);
                var num5 = Tools.parseInt(numArr[4]);
                var num6 = Tools.parseInt(numArr[5]);
                var num7 = Tools.parseInt(numArr[6]);
                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;
                obj.num4 = num4;
                obj.num5 = num5;
                obj.num6 = num6;
                obj.num7 = num7;

                obj.sx1 = getSxName(num1);

                obj.sx2 = getSxName(num2);
                obj.sx3 = getSxName(num3);
                obj.sx4 = getSxName(num4);
                obj.sx5 = getSxName(num5);
                obj.sx6 = getSxName(num6);
                obj.sx7 = getSxName(num7);
                obj.bose1 = getBose(num1);
                obj.bose2 = getBose(num2);
                obj.bose3 = getBose(num3);
                obj.bose4 = getBose(num4);
                obj.bose5 = getBose(num5);
                obj.bose6 = getBose(num6);
                obj.bose7 = getBose(num7);

                var html = template("template_single_" + playGroupId, obj);
                str += html;
            } else if ($.inArray(playGroupId, [7]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;
                obj.openTime = Tools.formatDate(value.openTime);
                var numArr = value.openCode.split(",");

                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;

                var html = template("template_single_" + playGroupId, obj);
                str += html;
            } else if ($.inArray(playGroupId, [8]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;
                obj.openTime = Tools.formatDate(value.openTime);
                var numArr = value.openCode.split(",");

                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);
                var num4 = Tools.parseInt(numArr[3]);
                var num5 = Tools.parseInt(numArr[4]);
                var num6 = Tools.parseInt(numArr[5]);
                var num7 = Tools.parseInt(numArr[6]);
                var num8 = Tools.parseInt(numArr[7]);
                var num9 = Tools.parseInt(numArr[8]);
                var num10 = Tools.parseInt(numArr[9]);
                var num11 = Tools.parseInt(numArr[10]);
                var num12 = Tools.parseInt(numArr[11]);
                var num13 = Tools.parseInt(numArr[12]);
                var num14 = Tools.parseInt(numArr[13]);
                var num15 = Tools.parseInt(numArr[14]);
                var num16 = Tools.parseInt(numArr[15]);
                var num17 = Tools.parseInt(numArr[16]);
                var num18 = Tools.parseInt(numArr[17]);
                var num19 = Tools.parseInt(numArr[18]);
                var num20 = Tools.parseInt(numArr[19]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;
                obj.num4 = num4;
                obj.num5 = num5;
                obj.num6 = num6;
                obj.num7 = num7;
                obj.num8 = num8;
                obj.num9 = num9;
                obj.num10 = num10;
                obj.num11 = num11;
                obj.num12 = num12;
                obj.num13 = num13;
                obj.num14 = num14;
                obj.num15 = num15;
                obj.num16 = num16;
                obj.num17 = num17;
                obj.num18 = num18;
                obj.num19 = num19;
                obj.num20 = num20;

                var html = template("template_single_" + playGroupId, obj);
                str += html;
            } else if ($.inArray(playGroupId, [9,14,23]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;
                obj.openTime = Tools.formatDate(value.openTime);
                var numArr = value.openCode.split(",");

                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);
                var num4 = Tools.parseInt(numArr[3]);
                var num5 = Tools.parseInt(numArr[4]);
                var num6 = Tools.parseInt(numArr[5]);
                var num7 = Tools.parseInt(numArr[6]);
                var num8 = Tools.parseInt(numArr[7]);
                var num9 = Tools.parseInt(numArr[8]);
                var num10 = Tools.parseInt(numArr[9]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;
                obj.num4 = num4;
                obj.num5 = num5;
                obj.num6 = num6;
                obj.num7 = num7;
                obj.num8 = num8;
                obj.num9 = num9;
                obj.num10 = num10;

                var html = template("template_single_" + playGroupId, obj);
                str += html;
            } else if ($.inArray(playGroupId, [10, 11]) >= 0) {
                var obj = {};

                obj.playGroupId = playGroupId;
                obj.number = value.number;
                obj.openTime = Tools.formatDate(value.openTime);
                var numArr = value.openCode.split(",");

                var num1 = Tools.parseInt(numArr[0]);
                var num2 = Tools.parseInt(numArr[1]);
                var num3 = Tools.parseInt(numArr[2]);
                var num4 = Tools.parseInt(numArr[3]);
                var num5 = Tools.parseInt(numArr[4]);
                var num6 = Tools.parseInt(numArr[5]);
                var num7 = Tools.parseInt(numArr[6]);
                var num8 = Tools.parseInt(numArr[7]);

                obj.num1 = num1;
                obj.num2 = num2;
                obj.num3 = num3;
                obj.num4 = num4;
                obj.num5 = num5;
                obj.num6 = num6;
                obj.num7 = num7;
                obj.num8 = num8;

                var sum = num1 + num2 + num3 + num4 + num5 + num6 + num7 + num8;
                obj.sum = sum;

                obj.str1 = sum;
                obj.str2 = sum % 2 == 0 ? '双' : '单';
                obj.str3 = sum == 84 ? '和' : (sum < 84 ? '小' : '大');
                obj.str4 = sum >= 5 ? '尾大' : '尾小';
                var cha = num1 - num8;
                obj.str5 = cha == 0 ? '和' : (cha > 0 ? '龙' : '虎');

                var html = template("template_single_" + playGroupId, obj);
                str += html;
            }
        });
        str += '</ul>';
        $('.Thelottery').hide();
        $(".Color_type").html(str).show();

    }

    function clickxuan(){
        var show = $('.men_list .left_layout').css('display');
        if(show == 'none'){
            $('.men_list .left_layout').slideDown(300);
            $(".men_list .logo a h1 i").removeClass("acti1");
        }else{
            $('.men_list .left_layout').slideUp(300);
            $(".men_list .logo a h1 i").addClass("acti1");
        }
    }

    $(function () {
        autobox(".Customerservice", 1, 1180, 0);
        click_addname(".Resultt .latyout .wrap_select a", "acti", "click");
        // slide_nav(".men_list .logo", ".left_layout", "acti");
    });
</script>
<script type="text/html" id="template_9">
    <li class="pk10">
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>北京PK10<span>第{{number}}期</span></h3>
                <p>每天180期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span class="bg-{{num1}}">{{num1}}</span>
                <span class="bg-{{num2}}">{{num2}}</span>
                <span class="bg-{{num3}}">{{num3}}</span>
                <span class="bg-{{num4}}">{{num4}}</span>
                <span class="bg-{{num5}}">{{num5}}</span>
                <span class="bg-{{num6}}">{{num6}}</span>
                <span class="bg-{{num7}}">{{num7}}</span>
                <span class="bg-{{num8}}">{{num8}}</span>
                <span class="bg-{{num9}}">{{num9}}</span>
                <span class="bg-{{num10}}">{{num10}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/pk10')">详情</a>
            </div>
            <p>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=9">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/pk10')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/pk10')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_1">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>重庆时时彩<span>第{{number}}期</span></h3>
                <p>每天120期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <span>{{num4}}</span>
                <span>{{num5}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/cqssc')">详情</a>
            </div>
            <p>
                <i>{{sum}}</i>
                <i>{{ds}}</i>
                <i>{{dx}}</i>
                <i>{{lh}}</i>
            </p>
        </div>
        <div class="box3">
            <a  href="<%=basePath%>kjjg.html?playGroupId=1">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/cqssc')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/cqssc')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_2">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>天津时时彩<span>第{{number}}期</span></h3>
                <p>每天84期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <span>{{num4}}</span>
                <span>{{num5}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/tjssc')">详情</a>
            </div>
            <p>
                <i>{{sum}}</i>
                <i>{{ds}}</i>
                <i>{{dx}}</i>
                <i>{{lh}}</i>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=2">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/tjssc')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/tjssc')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_3">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>新疆时时彩<span>第{{number}}期</span></h3>
                <p>每天96期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <span>{{num4}}</span>
                <span>{{num5}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xjssc')">详情</a>
            </div>
            <p>
                <i>{{sum}}</i>
                <i>{{ds}}</i>
                <i>{{dx}}</i>
                <i>{{lh}}</i>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=3">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/xjssc')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xjssc')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_4">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>体彩排列3<span>第{{number}}期</span></h3>
                <p>每天1期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/pl3')">详情</a>
            </div>
            <p>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=4">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/pl3')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/pl3')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_5">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>福彩3D<span>第{{number}}期</span></h3>
                <p>每天1期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/fc3d')">详情</a>
            </div>
            <p>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=5">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/fc3d')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/fc3d')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_6">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>六合彩<span>第{{number}}期</span></h3>
                <p>每周二、四、六 21:30开奖</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span class="{{if bose1 == 1}}col0{{else if bose1 == 2}}col1{{/if}}">{{num1}}</span>
                <span class="{{if bose2 == 1}}col0{{else if bose2 == 2}}col1{{/if}}">{{num2}}</span>
                <span class="{{if bose3 == 1}}col0{{else if bose3 == 2}}col1{{/if}}">{{num3}}</span>
                <span class="{{if bose4 == 1}}col0{{else if bose4 == 2}}col1{{/if}}">{{num4}}</span>
                <span class="{{if bose5 == 1}}col0{{else if bose5 == 2}}col1{{/if}}">{{num5}}</span>
                <span class="{{if bose6 == 1}}col0{{else if bose6 == 2}}col1{{/if}}">{{num6}}</span>
                <span class="{{if bose7 == 1}}col0{{else if bose7 == 2}}col1{{/if}}">{{num7}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/lhc')">详情</a>
            </div>
            <p>
                <i>{{sx1}}</i>
                <i>{{sx2}}</i>
                <i>{{sx3}}</i>
                <i>{{sx4}}</i>
                <i>{{sx5}}</i>
                <i>{{sx6}}</i>
                <i>{{sx7}}</i>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=6">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/lhc')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/lhc')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_7">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>幸运28<span>第{{number}}期</span></h3>
                <p>每天120期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xy28')">详情</a>
            </div>
            <p>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=7">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/xy28')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xy28')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_8">
    <li class="kl8">
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>快乐8<span>第{{number}}期</span></h3>
                <p>每天178期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num box_num_klb">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <span>{{num4}}</span>
                <span>{{num5}}</span>
                <span>{{num6}}</span>
                <span>{{num7}}</span>
                <span>{{num8}}</span>
                <span>{{num9}}</span>
                <span>{{num10}}</span>
                <span>{{num11}}</span>
                <span>{{num12}}</span>
                <span>{{num13}}</span>
                <span>{{num14}}</span>
                <span>{{num15}}</span>
                <span>{{num16}}</span>
                <span>{{num17}}</span>
                <span>{{num18}}</span>
                <span>{{num19}}</span>
                <span>{{num20}}</span>
                <a href="javascript:void(0)" class="a1 kl8" onclick="openGcdt('gcdt/kl8')">详情</a>
            </div>
            <p>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=8">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/kl8')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/kl8')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_10">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>幸运农场<span>第{{number}}期</span></h3>
                <p>每天96期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <span>{{num4}}</span>
                <span>{{num5}}</span>
                <span>{{num6}}</span>
                <span>{{num7}}</span>
                <span>{{num8}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xync')">详情</a>
            </div>
            <p>
                <i>{{str1}}</i>
                <i>{{str2}}</i>
                <i>{{str3}}</i>
                <i>{{str4}}</i>
                <i style="margin-left: -4px;">{{str5}}</i>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=10">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/xync')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xync')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_11">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>快乐十分<span>第{{number}}期</span></h3>
                <p>每天84期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <span>{{num4}}</span>
                <span>{{num5}}</span>
                <span>{{num6}}</span>
                <span>{{num7}}</span>
                <span>{{num8}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/klsf')">详情</a>
            </div>
            <p>
                <i>{{str1}}</i>
                <i>{{str2}}</i>
                <i>{{str3}}</i>
                <i>{{str4}}</i>
                <i style="margin-left: -4px;">{{str5}}</i>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=11">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/klsf')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/klsf')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_13">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>三分时时彩<span>第{{number}}期</span></h3>
                <p>每天480期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <span>{{num4}}</span>
                <span>{{num5}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/sfssc')">详情</a>
            </div>
            <p>
                <i>{{sum}}</i>
                <i>{{ds}}</i>
                <i>{{dx}}</i>
                <i>{{lh}}</i>
            </p>
        </div>
        <div class="box3">
            <a  href="<%=basePath%>kjjg.html?playGroupId=13">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/csfssc')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/sfssc')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_14">
    <li class="pk10">
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>幸运飞艇<span>第{{number}}期</span></h3>
                <p>每天180期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span class="bg-{{num1}}">{{num1}}</span>
                <span class="bg-{{num2}}">{{num2}}</span>
                <span class="bg-{{num3}}">{{num3}}</span>
                <span class="bg-{{num4}}">{{num4}}</span>
                <span class="bg-{{num5}}">{{num5}}</span>
                <span class="bg-{{num6}}">{{num6}}</span>
                <span class="bg-{{num7}}">{{num7}}</span>
                <span class="bg-{{num8}}">{{num8}}</span>
                <span class="bg-{{num9}}">{{num9}}</span>
                <span class="bg-{{num10}}">{{num10}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xyft')">详情</a>
            </div>
            <p>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=14">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/xyft')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xyft')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_15">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>分分时时彩<span>第{{number}}期</span></h3>
                <p>每天1440期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <span>{{num4}}</span>
                <span>{{num5}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/ffssc')">详情</a>
            </div>
            <p>
                <i>{{sum}}</i>
                <i>{{ds}}</i>
                <i>{{dx}}</i>
                <i>{{lh}}</i>
            </p>
        </div>
        <div class="box3">
            <a  href="<%=basePath%>kjjg.html?playGroupId=15">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/ffssc')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/ffssc')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_16">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>两分时时彩<span>第{{number}}期</span></h3>
                <p>每天720期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <span>{{num4}}</span>
                <span>{{num5}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/efssc')">详情</a>
            </div>
            <p>
                <i>{{sum}}</i>
                <i>{{ds}}</i>
                <i>{{dx}}</i>
                <i>{{lh}}</i>
            </p>
        </div>
        <div class="box3">
            <a  href="<%=basePath%>kjjg.html?playGroupId=16">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/efssc')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/efssc')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_17">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>五分时时彩<span>第{{number}}期</span></h3>
                <p>每天288期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <span>{{num4}}</span>
                <span>{{num5}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/wfssc')">详情</a>
            </div>
            <p>
                <i>{{sum}}</i>
                <i>{{ds}}</i>
                <i>{{dx}}</i>
                <i>{{lh}}</i>
            </p>
        </div>
        <div class="box3">
            <a  href="<%=basePath%>kjjg.html?playGroupId=17">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/wfssc')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/wfssc')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_18">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>江苏快3<span>第{{number}}期</span></h3>
                <p>每天82期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/jsk3')">详情</a>
            </div>
            <p>
                <i>{{hezhi}}</i>
                <i>{{danS}}</i>
                <i>{{daX}}</i>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=18">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/jsks')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/jsk3')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_19">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>湖北快3<span>第{{number}}期</span></h3>
                <p>每天82期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/hbk3')">详情</a>
            </div>
            <p>
                <i>{{hezhi}}</i>
                <i>{{danS}}</i>
                <i>{{daX}}</i>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=19">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/hbk3')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/hbk3')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_20">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>安徽快3<span>第{{number}}期</span></h3>
                <p>每天82期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/ahk3')">详情</a>
            </div>
            <p>
                <i>{{hezhi}}</i>
                <i>{{danS}}</i>
                <i>{{daX}}</i>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=20">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/ahk3')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/ahk3')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_21">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>吉林快3<span>第{{number}}期</span></h3>
                <p>每天82期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span>{{num1}}</span>
                <span>{{num2}}</span>
                <span>{{num3}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/jlk3')">详情</a>
            </div>
            <p>
                <i>{{hezhi}}</i>
                <i>{{danS}}</i>
                <i>{{daX}}</i>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=21">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/jlk3')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/jlk3')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_22">
    <li>
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>十分六合彩<span>第{{number}}期</span></h3>
                <p>每天144期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span class="{{if bose1 == 1}}col0{{else if bose1 == 2}}col1{{/if}}">{{num1}}</span>
                <span class="{{if bose2 == 1}}col0{{else if bose2 == 2}}col1{{/if}}">{{num2}}</span>
                <span class="{{if bose3 == 1}}col0{{else if bose3 == 2}}col1{{/if}}">{{num3}}</span>
                <span class="{{if bose4 == 1}}col0{{else if bose4 == 2}}col1{{/if}}">{{num4}}</span>
                <span class="{{if bose5 == 1}}col0{{else if bose5 == 2}}col1{{/if}}">{{num5}}</span>
                <span class="{{if bose6 == 1}}col0{{else if bose6 == 2}}col1{{/if}}">{{num6}}</span>
                <span class="{{if bose7 == 1}}col0{{else if bose7 == 2}}col1{{/if}}">{{num7}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/sflhc')">详情</a>
            </div>
            <p>
                <i>{{sx1}}</i>
                <i>{{sx2}}</i>
                <i>{{sx3}}</i>
                <i>{{sx4}}</i>
                <i>{{sx5}}</i>
                <i>{{sx6}}</i>
                <i>{{sx7}}</i>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=22">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/sflhc')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/sflhc')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_23">
    <li class="pk10">
        <div class="box1">
            {{if isToday}}
            <var>今日开奖</var>
            {{else}}
            <var class="no"></var>
            {{/if}}
            <div class="text">
                <h3>极速PK10<span>第{{number}}期</span></h3>
                <p>每天1440期</p>
            </div>
        </div>
        <div class="box2">
            <div class="box_num">
                <span class="bg-{{num1}}">{{num1}}</span>
                <span class="bg-{{num2}}">{{num2}}</span>
                <span class="bg-{{num3}}">{{num3}}</span>
                <span class="bg-{{num4}}">{{num4}}</span>
                <span class="bg-{{num5}}">{{num5}}</span>
                <span class="bg-{{num6}}">{{num6}}</span>
                <span class="bg-{{num7}}">{{num7}}</span>
                <span class="bg-{{num8}}">{{num8}}</span>
                <span class="bg-{{num9}}">{{num9}}</span>
                <span class="bg-{{num10}}">{{num10}}</span>
                <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/jspk10')">详情</a>
            </div>
            <p>
            </p>
        </div>
        <div class="box3">
            <a href="<%=basePath%>kjjg.html?playGroupId=23">历史开奖</a>
            <a href="javascript:void(0)" onclick="goZst('zst/jspk10')">走势图表</a>
        </div>
        <div class="box4">
            <a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/jspk10')">购买</a>
        </div>
    </li>
</script>
<script type="text/html" id="template_single_1">
    <li>
        <span class="sp1">重庆时时彩</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
            <i>{{num4}}</i>
            <i>{{num5}}</i>
        </span>
        <span class="sp5">120期</span>
        <span class="sp6">5分钟-10分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/cqssc')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/cqssc')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_2">
    <li>
        <span class="sp1">天津时时彩</span>
        <span class="sp2">{{number}}</span>

        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
            <i>{{num4}}</i>
            <i>{{num5}}</i>
        </span>
        <span class="sp5">120期</span>
        <span class="sp6">10分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/tjssc')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/tjssc')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_3">
    <li>
        <span class="sp1">新疆时时彩</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
            <i>{{num4}}</i>
            <i>{{num5}}</i>
        </span>
        <span class="sp5">120期</span>
        <span class="sp6">10分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/xjssc')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xjssc')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_4">
    <li>
        <span class="sp1">体彩排列3</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
        </span>
        <span class="sp5">1期</span>
        <span class="sp6">每天一次</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/pl3')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/pl3')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_5">
    <li>
        <span class="sp1">福彩3D</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
        </span>
        <span class="sp5">1期</span>
        <span class="sp6">每天一次 </span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/fc3d')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/fc3d')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_6">
    <li>
        <span class="sp1">六合彩</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i class="{{if bose1 == 1}}lan{{else if bose1 == 2}}lv{{/if}}">{{num1}}</i>
            <i class="{{if bose2 == 1}}lan{{else if bose2 == 2}}lv{{/if}}">{{num2}}</i>
            <i class="{{if bose3 == 1}}lan{{else if bose3 == 2}}lv{{/if}}">{{num3}}</i>
            <i class="{{if bose4 == 1}}lan{{else if bose4 == 2}}lv{{/if}}">{{num4}}</i>
            <i class="{{if bose5 == 1}}lan{{else if bose5 == 2}}lv{{/if}}">{{num5}}</i>
            <i class="{{if bose6 == 1}}lan{{else if bose6 == 2}}lv{{/if}}">{{num6}}</i>
            <i class="{{if bose7 == 1}}lan{{else if bose7 == 2}}lv{{/if}}">{{num7}}</i>
        </span>
        <span class="sp5">两天一期</span>
        <span class="sp6">两天一次</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/lhc')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/lhc')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_7">
    <li>
        <span class="sp1">幸运28</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
        </span>
        <span class="sp5">120期</span>
        <span class="sp6">5分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/xy28')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xy28')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_8">
    <li style="height:50px;">
        <span class="sp1">北京快乐8</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4 bjklb">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
            <i>{{num4}}</i>
            <i>{{num5}}</i>
            <i>{{num6}}</i>
            <i>{{num7}}</i>
            <i>{{num8}}</i>
            <i>{{num9}}</i>
            <i>{{num10}}</i>
            <i>{{num11}}</i>
            <i>{{num12}}</i>
            <i>{{num13}}</i>
            <i>{{num14}}</i>
            <i>{{num15}}</i>
            <i>{{num16}}</i>
            <i>{{num17}}</i>
            <i>{{num18}}</i>
            <i>{{num19}}</i>
            <i>{{num20}}</i>
        </span>
        <span class="sp5">178期</span>
        <span class="sp6">5分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/kl8')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/kl8')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_9">
    <li>
        <span class="sp1">北京PK10</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i class="bg-{{num1}}">{{num1}}</i>
            <i class="bg-{{num2}}">{{num2}}</i>
            <i class="bg-{{num3}}">{{num3}}</i>
            <i class="bg-{{num4}}">{{num4}}</i>
            <i class="bg-{{num5}}">{{num5}}</i>
            <i class="bg-{{num6}}">{{num6}}</i>
            <i class="bg-{{num7}}">{{num7}}</i>
            <i class="bg-{{num8}}">{{num8}}</i>
            <i class="bg-{{num9}}">{{num9}}</i>
            <i class="bg-{{num10}}">{{num10}}</i>
        </span>
        <span class="sp5">180期</span>
        <span class="sp6">5分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/pk10')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/pk10')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_10">
    <li>
        <span class="sp1">重庆幸运农场</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
            <i>{{num4}}</i>
            <i>{{num5}}</i>
            <i>{{num6}}</i>
            <i>{{num7}}</i>
            <i>{{num8}}</i>
        </span>
        <span class="sp5">96期</span>
        <span class="sp6">10分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/xync')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xync')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_11">
    <li>
        <span class="sp1">广东快乐十分</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
            <i>{{num4}}</i>
            <i>{{num5}}</i>
            <i>{{num6}}</i>
            <i>{{num7}}</i>
            <i>{{num8}}</i>
        </span>
        <span class="sp5">84期</span>
        <span class="sp6">10分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/klsf')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/klsf')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_13">
    <li>
        <span class="sp1">三分时时彩</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
            <i>{{num4}}</i>
            <i>{{num5}}</i>
        </span>
        <span class="sp5">480期</span>
        <span class="sp6">3分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/sfssc')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/sfssc')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_14">
    <li>
        <span class="sp1">幸运飞艇</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i class="bg-{{num1}}">{{num1}}</i>
            <i class="bg-{{num2}}">{{num2}}</i>
            <i class="bg-{{num3}}">{{num3}}</i>
            <i class="bg-{{num4}}">{{num4}}</i>
            <i class="bg-{{num5}}">{{num5}}</i>
            <i class="bg-{{num6}}">{{num6}}</i>
            <i class="bg-{{num7}}">{{num7}}</i>
            <i class="bg-{{num8}}">{{num8}}</i>
            <i class="bg-{{num9}}">{{num9}}</i>
            <i class="bg-{{num10}}">{{num10}}</i>
        </span>
        <span class="sp5">180期</span>
        <span class="sp6">5分钟</span>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/xyft')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/xyft')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_15">
    <li>
        <span class="sp1">分分时时彩</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
            <i>{{num4}}</i>
            <i>{{num5}}</i>
        </span>
        <span class="sp5">1440期</span>
        <span class="sp6">1分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/ffssc')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/ffssc')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_16">
    <li>
        <span class="sp1">两分时时彩</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
            <i>{{num4}}</i>
            <i>{{num5}}</i>
        </span>
        <span class="sp5">720期</span>
        <span class="sp6">2分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/efssc')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/efssc')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_17">
    <li>
        <span class="sp1">五分时时彩</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
            <i>{{num4}}</i>
            <i>{{num5}}</i>
        </span>
        <span class="sp5">288期</span>
        <span class="sp6">5分钟</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/wfssc')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/wfssc')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_18">
    <li>
        <span class="sp1">江苏快3</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
        </span>
        <span class="sp5">82期</span>
        <span class="sp6">每10分钟一期 </span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/jsk3')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/jsk3')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_19">
    <li>
        <span class="sp1">湖北快3</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
        </span>
        <span class="sp5">82期</span>
        <span class="sp6">每10分钟一期 </span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/hbk3')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/hbk3')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_20">
    <li>
        <span class="sp1">安徽快3</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
        </span>
        <span class="sp5">82期</span>
        <span class="sp6">每10分钟一期 </span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/ahk3')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/ahk3')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_21">
    <li>
        <span class="sp1">吉林快3</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i>{{num1}}</i>
            <i>{{num2}}</i>
            <i>{{num3}}</i>
        </span>
        <span class="sp5">82期</span>
        <span class="sp6">每10分钟一期 </span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/jlk3')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/jlk3')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_22">
    <li>
        <span class="sp1">十分六合彩</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i class="{{if bose1 == 1}}lan{{else if bose1 == 2}}lv{{/if}}">{{num1}}</i>
            <i class="{{if bose2 == 1}}lan{{else if bose2 == 2}}lv{{/if}}">{{num2}}</i>
            <i class="{{if bose3 == 1}}lan{{else if bose3 == 2}}lv{{/if}}">{{num3}}</i>
            <i class="{{if bose4 == 1}}lan{{else if bose4 == 2}}lv{{/if}}">{{num4}}</i>
            <i class="{{if bose5 == 1}}lan{{else if bose5 == 2}}lv{{/if}}">{{num5}}</i>
            <i class="{{if bose6 == 1}}lan{{else if bose6 == 2}}lv{{/if}}">{{num6}}</i>
            <i class="{{if bose7 == 1}}lan{{else if bose7 == 2}}lv{{/if}}">{{num7}}</i>
        </span>
        <span class="sp5">每天144期</span>
        <span class="sp6">10分钟一期</span>
        <%--<span class="sp7"><a href="javascript:void(0)"><img src="${resPath}img/ico72.png" alt=""></a></span>--%>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/sflhc')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/sflhc')">立即购彩</a></span>
    </li>
</script>
<script type="text/html" id="template_single_23">
    <li>
        <span class="sp1">极速PK10</span>
        <span class="sp2">{{number}}</span>
        <span class="sp3">{{openTime}}</span>
        <span class="sp4">
            <i class="bg-{{num1}}">{{num1}}</i>
            <i class="bg-{{num2}}">{{num2}}</i>
            <i class="bg-{{num3}}">{{num3}}</i>
            <i class="bg-{{num4}}">{{num4}}</i>
            <i class="bg-{{num5}}">{{num5}}</i>
            <i class="bg-{{num6}}">{{num6}}</i>
            <i class="bg-{{num7}}">{{num7}}</i>
            <i class="bg-{{num8}}">{{num8}}</i>
            <i class="bg-{{num9}}">{{num9}}</i>
            <i class="bg-{{num10}}">{{num10}}</i>
        </span>
        <span class="sp5">1440期</span>
        <span class="sp6">1分钟</span>
        <span class="sp8"><a href="javascript:void(0)"><img src="${resPath}img/ico73.png" alt="" onclick="goZst('zst/jspk10')"></a></span>
        <span class="sp9"><a href="javascript:void(0)" class="a1" onclick="openGcdt('gcdt/jspk10')">立即购彩</a></span>
    </li>
</script>
<c:import url="../common/bodyEnd.jsp"/>