<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="common/bodyStart.jsp" />

<div id="box" class="qc">
    <div class="qc" id="Right">
        <div class="main">
            <div class="main-box" style="width:1300px;">
                <div class="main-nav">
                    <div class="cplogo"><img src="${resPath}zst/img/bj28.png" alt="北京28" /><span>双色球</span></div>
                    <c:import url="common/nav.jsp" />
                    <ul class="btn-navs">
                        <li class="fff" data-contentid="zhexianData" data-id="shuju1">基本走势</li>
                        <li data-contentid="shuju2" data-id="shuju2">K线图</li>
                        <li data-contentid="shuju3" data-id="shuju3">直方图</li>
                        <%--<li data-id="shuju4">遗漏统计</li>--%>
                        <li data-id="shuju5">历史开奖数据</li>
                        <li>
                            <a href="javascript:void(0)" onclick="getSscPage('gcdt/bj28')">立即投注</a>
                        </li>
                    </ul>
                </div>
                <div class="qhbox">
                    <div class="main-li" style="display: none">
                        <div class="main-ul-box1">
                            <ul class="main-ul-box">
                                <li>
                                    <p>二星:</p>
                                    <ul class="main-ul-1">
                                        <li>
                                            <a href="javascript:void(0)">号码分布</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">直选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">组选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">大小</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">奇偶</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">质合</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">跨度</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">和值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">012路</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">平均值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">生平降</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="main-ul-box">
                                <li>
                                    <p>定位:</p>
                                    <ul class="main-ul-1">
                                        <li>
                                            <a href="javascript:void(0)">万位</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">千位</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">百位</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">各位（一星）</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="main-ul-box2">
                            <ul class="main-ul-box">
                                <li>
                                    <p>三星:</p>
                                    <ul class="main-ul-1">
                                        <li>
                                            <a href="javascript:void(0)">号码分布</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">直选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">组选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">大小</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">奇偶</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">质合</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">跨度</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">和值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">012路</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">平均值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">生平降</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="main-ul-box">
                                <li>
                                    <p>其他:</p>
                                    <ul class="main-ul-1">
                                        <li class="red">
                                            <a href="javascript:void(0)">五星走势</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">五星综合</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">大小单双</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="main-li-right" style="visibility: hidden;">
                            <div>
                                <a href="javascript:void(0)" onclick="getSscPage('gcdt/bj28')">立即投注</a>
                            </div>
                        </div>
                    </div>
                    <div class="search">
                        <ul class="search-left">
                            <li><label>遗漏数据<input type="checkbox" id="checkboxYlsj" checked="checked"></label></li>
                            <li><label>遗漏分层<input type="checkbox"  id="checkboxYlfc"></label></li>
                            <li class="zhe"><label>折线<input type="checkbox" id="checkboxZhexian" checked="checked"></label></li>
                        </ul>
                        <ul class="search-right">
                            <li>
                                <div> <b>查询：</b></div>
                            </li>
                            <li>
                                <div class="qi xuan">
                                    <a href="javascript:void(0)" class="on30qi">近30期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="on50qi">近50期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="on100qi">近100期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="on150qi">近150期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="on200qi">近200期</a>
                                </div>
                            </li>
                            <%--<li>--%>
                            <%--<div class="qi">--%>
                            <%--<a href="javascript:void(0)" class="oncurrentqi">今天</a>--%>
                            <%--</div>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                            <%--<div class="qi">--%>
                            <%--<a href="javascript:void(0)" class="onlatelyqi">近三天</a>--%>
                            <%--</div>--%>
                            <%--</li>--%>
                            <%--<li><div class="qi jian"><a href="javascript:void(0)">自定义查询</a><span></span></div></li>--%>
                            <li class="kuang1">
                                <div class="div">
                                    <a href="javascript:void(0)">绘图工具</a>
                                </div>
                                <div class="btn-box">
                                    <span class="btn btn-hua" onClick="change_attr(0,-1,-1)" style="background-image: url(${resPath}zst/img/zhubg.png);background-position: -102px -346px;"></span>
                                    <span class="btn btn-hua" onClick="change_attr(1,-1,-1)" style="background-image: url(${resPath}zst/img/zhubg.png); background-position: -68px -346px;"></span>
                                    <span class="btn btn-hua" onClick="change_attr(3,-1,-1)" style="background-image: url(${resPath}zst/img/zhubg.png); background-position: -34px -346px;;"></span>
                                    <span class="btn btn-hua" onClick="change_attr(4,-1,-1)" style="background-image: url(${resPath}zst/img/zhubg.png); background-position: 0 -346px"></span>
                                    <span class="btn" onClick="change_attr(5,-1,-1)" style="background-image: url(${resPath}zst/img/zhubg.png);background-position: -34px -374px;"></span>
                                    <span class="btn btn-hua" onClick="fill_canvas('rgba(0, 0, 0,1)',0,0,canvas_size.x,canvas_size.y)" style="background-image: url(${resPath}zst/img/zhubg.png);background-position: 0 -374px;"></span>
                                    <span class="btn btn-cos" style="background-image: url(${resPath}zst/img/zhubg.png);background-position: -71px -284px"></span>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div id="shuju1" class="shuju hide">
                        <div class="chu-box">
                            <div class="chu">
                                <div class="cl-40">
                                    <div class="cl-30">
                                        <div class="left cl-31">期号</div>
                                        <div class="left cl-32" style="width: 120px">奖号</div>
                                        <div class="left cl-33">
                                            <div class="cl-35">
                                                <div class="left cl-34" style="width:693px;">红球区</div>
                                                <div class="left cl-34" style="width: 336px">蓝球区</div>
                                                <%--<div class="left cl-34" style="width:43px;">单双</div>--%>
                                                <%--<div class="left cl-34" style="width:43px;">中边</div>--%>
                                                <%--<div class="left cl-34" style="width:43px;">大小</div>--%>
                                            </div>
                                            <div class="cl-35 cl-36 clean">
                                                <script>
                                                    for(var i = 1; i < 34; ++i) {
                                                        document.write('<var class="bg-2"><i>' + (i = i >= 10 ? i : ('0' + i)) + '</i></var>');
                                                    }
                                                    for(var i = 1; i <=16; ++i) {
                                                        document.write('<var class="bg-1"><i>'  + (i = i >= 10 ? i : ('0' + i)) + '</i></var>');
                                                    }
                                                </script>
                                                <%--<var class=""><i>单</i></var>--%>
                                                <%--<var class=""><i>双</i></var>--%>
                                                <%--<var class=""><i>中大</i></var>--%>
                                                <%--<var class=""><i>边</i></var>--%>
                                                <%--<var class=""><i>大</i></var>--%>
                                                <%--<var class=""><i>小</i></var>--%>
                                            </div>
                                        </div>
                                        <%--<div class="left cl-32" style="width:50px;">极值</div>--%>
                                        <%--<div class="left cl-32" style="width:50px;">豹子</div>--%>
                                    </div>
                                    <div id="zhexianData"></div>
                                </div>
                            </div>

                            <div class="cl-40 clean cl-41">
                                <p>遗漏统计</p>
                            </div>
                            <div class="cl-40 clean">
                                <div class="cl-30">
                                    <div class="left cl-31" style="width: 110px!important;">开奖日期</div>
                                    <div class="left cl-31" style="width: 112px">期号</div>
                                    <div class="left cl-33" style="width: 693px;">
                                        <div class="cl-35">
                                            <div class="left cl-34" style="width: 693px;">红球区</div>
                                        </div>
                                        <div class="cl-35 cl-36 clean">
                                            <script>
                                                for (var i = 1; i < 34; ++i) {
                                                    var s = '';
                                                    s = 'bg-1';
                                                    document.write('<var class="' + s + '"><i>' + (i = i >= 10 ? i : ('0' + i)) + '</i></var>');
                                                }
                                            </script>
                                        </div>
                                    </div>
                                    <%--<div class="left cl-32">奖号</div>--%>
                                    <%--<div class="left cl-32" style="width:50px;">和值</div>--%>
                                    <%--<div class="left cl-32" style="width:50px;">跨度</div>--%>
                                    <div class="left cl-33" style="width: 336px!important;">
                                        <div class="cl-35">
                                            <div class="left cl-34" style="width: 336px;">蓝球区</div>
                                        </div>
                                        <div class="cl-35 cl-36 clean"  >
                                            <script>
                                                for (var i = 1; i <= 16; ++i) {
                                                    var s = '';
                                                    s = 'bg-2';
                                                    document.write('<var class="' + s + '"><i>' + (i = i >= 10 ? i : ('0' + i)) + '</i></var>');
                                                }
                                            </script>
                                        </div>
                                    </div>
                                </div>
                                <div id="yiLouData">
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:222px;">出现总次数</div>
                                        <div id="hm_cxzcs"></div>
                                        <div id="cxzcs"></div>
                                        <%--<script>--%>
                                        <%--for (var i = 0; i < 10; ++i) {--%>
                                        <%--// 出现次数--%>
                                        <%--document.write('<var><i>8</i></var>');--%>
                                        <%--}--%>
                                        <%--</script>--%>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:222px;">平均遗漏值</div>
                                        <div id="hm_pjylz"> </div>
                                        <div id="pjylz"> </div>
                                    </div>
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:222px;">最大遗漏值</div>
                                        <div id="hm_zdylz"></div>
                                        <div id="zdylz"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:222px;">最大连出值</div>
                                        <div id="hm_zdlcz"></div>
                                        <div id="zdlcz"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="shuju2" class="shuju hide">
                        <div class="biao">
                            <div id="main1" style="width: 1005px;;height:600px;background: #fff"></div>
                        </div>
                    </div>
                    <div id="shuju3" class="shuju hide">
                        <div id="main2" style="width: 1228px;;height:500px;"></div>
                    </div>
                    <div id="shuju4" class="shuju hide">
                        <table class="tongji">
                            <thead>
                            <tr>
                                <th colspan="2">号码</th>
                                <th>出现总次数</th>
                                <th>平均遗漏值</th>
                                <th>最大遗漏值</th>
                                <th>最大连出值</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    <div id="shuju5" class="shuju">
                        <table>
                            <thead>
                            <tr class="bghui">
                                <th>期号</th>
                                <th>开奖日期</th>
                                <th>开奖号码</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    <div class="shuoming qc">
                        <div class="shuomingleft">
                            <div class="tou">
                                <h3>参数说明</h3>
                            </div>
                            <div class="jieshi">
                                <p><b>遗漏数据：</b> 自上期开出到本期间隔的期数。</p>

                                <p><b>遗漏分层：</b> 将当前遗漏用浅蓝色柱状阴影标注。</p>

                                <p><b>出现总次数：</b> 统计期数内实际出现的次数。</p>

                                <p><b>平均遗漏值：</b> 统计期数内遗漏的平均值。平均遗漏=每次遗漏期数之和/出现次数。</p>

                                <p><b>最大遗漏值：</b> 统计期数内遗漏的最大值。</p>

                                <p><b>最大连出值：</b> 统计期数内连续开出的最大值。</p>
                            </div>
                        </div>
                        <div class="shuomingright" style="width:500px;">
                            <div class="tou">
                                <h4>第 <span id="number"></span> 期 &nbsp <font id="openDate"></font>开奖</h4>
                            </div>
                            <a href="javascript:void(0)" onclick="getSscPage('gcdt/bj28')"><img class="btnjiang" src="${resPath}zst/img/jiang.png" alt=""></a>
                            <div class="jiezhi">
                                <h3>
                                    <p><font id="tip"></font>
                                        <span id="leftTime"></span></p>
                                </h3>
                            </div>
                            <div class="zhushi">每天销售120期&nbsp&nbsp每5分钟一期</div>
                            <div class="tongzhi">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="xiajiao">
        快速购买 北京28
    </div>
    <div class="mb">
    </div>
</div>

<canvas id="canvas" width="1660px" height="570px" style="position:absolute;top:265px;left:243px;z-index: -10"></canvas>
<canvas id="canvas2" width="1660px" height="570px" style="position:absolute;top:265px;left:243px;z-index: -10"></canvas>

<c:import url="../../common/commonJs.jsp" />
<c:import url="common/commonJs.jsp" />
<script>
    $(function() {

        $(".btn-navs li").click(function(e) {
            $(".shuju").hide();
            $("#" + $(this).data("id")).show();
            $(this).attr("class", "fff").siblings().removeClass();
            if($(this).data("id") == 'shuju1' || $(this).data("id") == 'shuju2' || $(this).data("id") == 'shuju3') {
                initHuatu($(this).data("contentid"));
            } else {
                clearHuatu();
            }
        })

        var type = '${param.type}';
        if(typeof type == 'undefined' || type == '' || isNaN(type)) {
            type = 1;
        } else {
            type = parseInt(type);
        }
        $("[data-id='shuju" + type + "']").trigger("click");
        $(".search-right .qi a").eq(0).trigger("click");
    });

    function ajaxGetData(playGroupId, pageSize, startT, endT) {
        var data = {};
        data.pageIndex = 1;
        if(null != playGroupId) {
            data.playGroupId = playGroupId;
        }
        if(null != pageSize) {
            data.pageSize = pageSize;
        }
        if(null != startT) {
            data.startT = startT;
        }
        if(null != endT) {
            data.endT = endT;
        }

        ajaxRequest({
            url: "<%=basePath%>ssc/ajaxGetHistory.json",
            data: data,
            beforeSend: function() {
                parent.showLoading();
            },
            success: function(json) {
                if(json.result != 1) {
                    return;
                }
                var data = json.sscHistoryList;
                data.reverse();
                // 折线
                zhexian(data);
                // k线
                kxian(data);
                // 直方图
                zhifang(data);
                // 历史数据
                lssj(data);
                parent.hideLoading();

                $(".btn-navs li").each(function() {
                    if($(this).hasClass("fff")) {
                        initHuatu($(this).data("contentid"));
                        return;
                    }

                });
            }
        });
    }

    $(function() {
        $("#checkboxZhexian").change(function() {
            if($(this).is(":checked")) {
                $(".zhexian").show();
            } else {
                $(".zhexian").hide();
            }
        });

        $("#checkboxYlsj").change(function() {
            if($(this).is(":checked")) {
                $(".transparent").addClass("not-transparent");
            } else {
                $(".transparent").removeClass("not-transparent");
            }
        });

        $("#checkboxYlfc").change(function() {
            if($(this).is(":checked")) {
                $(".ylfc").addClass("ylfc-bg");
            } else {
                $(".ylfc").removeClass("ylfc-bg");
            }
        });
    });
</script>
<script>
    var playGroupId = 12;

    function lssj(data) {
        var str = '';
        $.each(data, function(index, value) {
            str += '<tr>';
            str += '<td>' + value.number + '</td>'
            str += '<td>' + Tools.formatDate(value.openTime) + '</td>'
            str += '<td>';
            var arr = value.openCode.split(",");
            for(var i = 0; i < arr.length; ++i) {
                str += '<span class="bg-10">' + arr[i] + '</span>';
            }
            str += '</td>';
            str += '</tr>';
        });
        $("#shuju5 table tbody").html(str);
    }

    function zhifang(data) {

        // 基于准备好的dom，初始化echarts实例
        var myChart2 = echarts.init(document.getElementById('main2'));
        // 指定图表的配置项和数据
        var option = {
            //            grid: {
            //                left: 20,
            //                right: 20,
            //                top: 35,
            //                bottom: 0,
            //                containLabel: true
            //            },
            grid: {
                left: '1%',
                right: '15%',
                containLabel: true
            },
            tooltip: {
                show: true,
                trigger: 'axis',
                //show: true,   //default true
                showDelay: 0, //显示延时，添加显示延时可以避免频繁切换
                hideDelay: 50, //隐藏延时
                transitionDuration: 0, //动画变换时长
                backgroundColor: 'rgba(0,0,0,0.7)', //背景颜色（此时为默认色）
                borderRadius: 8, //边框圆角
                padding: 10, // [5, 10, 15, 20] 内边距
                position: function(p) {
                    // 位置回调
                    // console.log && console.log(p);
                    return [p[0] + 10, p[1] - 10];
                },
                formatter: function(params, ticket, callback) {
                    var res = "基本号码" + ' : ' + params[0].name;
                    for(var i = 0, l = params.length; i < l; i++) {
                        res += '<br/>' + params[i].seriesName + ' : ' + params[i].value; //鼠标悬浮显示的字符串内容
                    }
                    return res;
                }
            },
            xAxis: {
                type: 'category',
                axisTick: {
                    alignWithLabel: true
                },
                data: []
            },
            yAxis: [{
                type: 'value',
                splitNumber: 10,
                triggerEvent: true,
            }],
            series: [{
                name: '出现次数',
                type: 'bar',
                data: [],
                legendHoverLink: true,
                label: {
                    normal: {
                        show: true,
                        position: 'top',
                        textStyle: {
                            color: '#000'
                        }
                    }
                },
                markPoint: {
                    symbol: 'pin',
                    symbolSize: 50,
                    silent: true,
                    animation: true,
                },
                barWidth: '27px',
                barGap: '30%',
                //            barCategoryGap:'30%',
                markArea: {
                    //              silent:true
                },
                itemStyle: {
                    normal: {
                        color: ['#6DB8FF']
                    }
                }
            }]
        };
        var yData = [];
        for(var i = 1; i <= 10; ++i) {
            yData[i - 1] = 0;
            option.xAxis.data.push(i);
        }

        $.each(data, function(index, value) {
            var openCode = value.openCode;
            var arr = openCode.split(",");

            for(var i = 0; i < arr.length; ++i) {
                //                console.log(parseInt(arr[i]));
                yData[parseInt(arr[i] - 1)]++;
            }
        });

        option.series[0].data = yData;

        // 使用刚指定的配置项和数据显示图表。
        myChart2.setOption(option);
    }

    function kxian(data) {
        // 基于准备好的dom，初始化echarts实例
        var myChart1 = echarts.init(document.getElementById('main1'));

        // 指定图表的配置项和数据
        var option = {
            xAxis: [{
                axisLabel: {
                    rotate: -60,
                },
                type: 'category',
                boundaryGap: false,
                data: []
            }],
            tooltip: {
                trigger: 'axis',
                formatter: function(params) {
                    var openCode = params[0].data.openCode;

                    var res = '';
                    res += '数值：' + parseInt(openCode.split(",")[0]);
                    res += '<br/>期数：' + params[0].name;
                    res += '<br/><font class="red">奖号：' + openCode + "</font>";
                    return res;
                }
            },
            yAxis: [{
                type: 'value'
            }],
            grid: {
                left: '1%',
                right: '5%',
                containLabel: true
            },
            series: [{
                symbol: 'circle', //图标形状
                symbolSize: 6, //图标尺寸
                type: 'line',
                stack: '',
                itemStyle: {
                    normal: {
                        color: "#6DB8FF",
                        lineStyle: {
                            color: '#6DB8FF'
                        }
                    }
                },
                label: {
                    normal: {
                        show: true,
                        position: 'top',
                        textStyle: {
                            color: '#000'
                        }
                    }
                },
                areaStyle: {
                    normal: {
                        textStyle: {
                            fontSize: 20,
                            color: 'red'
                        }
                    }
                },
                data: [],
            }]
        };
        $.each(data, function(index, value) {
            option.xAxis[0].data.push(value.number);
            option.series[0].data.push({
                value: parseInt(value.openCode.split(",")[0]),
                openCode: value.openCode
            });
        });

        myChart1.setOption(option);
    }

    function zhexian(data) {
        var str = '';
        for(var i = 0; i < data.length; i++) {
            // qihao
            str += '<div class="cl-30 clean">';
            str += '<div class="left cl-31 number">' + data[i].number + '</div>';
            str += '<div class="left cl-32 openCode" style="width: 120px">' + data[i].openCode + '</div>';
            var kjData = data[i].openCode.split(",");
            var num1 = parseInt(kjData[0]);
            var num2 = parseInt(kjData[1]);
            var num3 = parseInt(kjData[2]);

            var tmpArr = [];
            var lanArr = [];
            $.each(kjData, function(index, value) {
                if(index < kjData.length - 1){
                    tmpArr[parseInt(value)] = 1;
                }
            });

            for(var j = 1; j < 34; ++j) {
                if(tmpArr[j] == 1) {
                    str += '<var><i class="bg-red">'+(j = j >= 10 ? j : ('0' + j))+ '</i></var>';
                } else {
                    str += '<var><i>'+(j = j >= 10 ? j : ('0' + j))+ '</i></var>';
                }
            }

            lanArr.push(parseInt(kjData[kjData.length - 1]));
            for (var j = 1; j < 17; ++j) {
                str += '<var class="i_' + j + '">';
                if(j == parseInt(lanArr[0])){
                    str += '<i data-num="' + (j = j >= 10 ? j : ('0' + j)) + '" class="bg-blue">'+ j + '</i></var>' ;
                } else{
                    str += '<i data-num="' + (j = j >= 10 ? j : ('0' + j)) + '" class="b">'+ j + '</i></var>' ;
                }

            }
        }
        $("#zhexianData").html(str);

      /*  for(var i = 0; i < data.length - 1; ++i) {

            var thisOpenCode = data[i].openCode.split(",");
            var sum = parseInt(thisOpenCode[0]) + parseInt(thisOpenCode[1]) + parseInt(thisOpenCode[2]);

            var canvas = document.getElementById("canvas" + i+"0");
            var context = canvas.getContext("2d");
            var nextOpenCode = data[i + 1].openCode.split(",");
            var nextSum = parseInt(nextOpenCode[0]) + parseInt(nextOpenCode[1]) + parseInt(nextOpenCode[2]);
            var bc1 = sum - nextSum;

            if(bc1 < 0) {
                context.moveTo(17, 13);
                context.lineTo(canvas.width - 5, canvas.height - 5);
            } else if(bc1 > 0) {
                context.moveTo(canvas.width - 15, 13);
                context.lineTo(8, canvas.height - 8);
            } else {
                context.moveTo(10, 12);
                context.lineTo(10, 30);
            }
            context.strokeStyle = "#cc0000";
            context.stroke();
        }*/

        if($("#checkboxZhexian").is(":checked")) {
            $(".zhexian").show();
        } else {
            $(".zhexian").hide();
        }

        // 遗漏
        renderYilou(data);

        if($("#checkboxYlsj").is(":checked")) {
            $(".transparent").addClass("not-transparent");
        } else {
            $(".transparent").removeClass("not-transparent");
        }
    }

    function renderYilou(data) {

        var cxzcs = []; // 出现总次数

        var zdylz = []; // 最大遗漏值
        var tmpZdylz = [];   // 临时计算最大遗漏值

        var pjylz = [];      // 平均遗漏值
        var tmpPjylz = [];   // 临时计算平均遗漏值

        var zdlcz = [];     // 最大连出值
        var tmpZdlcz = [];  // 临时计算最大连出值


        for (var jj = 0; jj < 17; ++jj) {
            cxzcs[jj] = 0;

            zdylz[jj] = 0;
            tmpZdylz[jj] = {
                total: 0,   // 当前数
                maxTotal: 0,    // 最大数
                count: 0    // 计算次数
            };

            pjylz[jj] = 0;
            tmpPjylz[jj] = {
                totalYl: 0, // 遗漏总计
                count: 0,    // 遗漏次数
                cx0Flag: 0 //出现标签

            };

            zdlcz[jj] = 0;
            tmpZdlcz[jj] = {
                total: 0, //当前数
                maxTotal: 0, // 连出最大
                count: 0    // 连出计数
            };
        }

        var hm_cxzcs = []; // 出现总次数

        var hm_zdylz = []; // 最大遗漏值
        var hm_tmpZdylz = [];   // 临时计算最大遗漏值

        var hm_pjylz = [];      // 平均遗漏值
        var hm_tmpPjylz = [];   // 临时计算平均遗漏值

        var hm_zdlcz = [];     // 最大连出值
        var hm_tmpZdlcz = [];  // 临时计算最大连出值

        for (var j = 0; j < 34; ++j) {
            hm_cxzcs[j] = 0;

            hm_zdylz[j] = 0;
            hm_tmpZdylz[j] = {
                total: 0,   // 当前数
                maxTotal: 0,    // 最大数
                count: 0    // 计算次数
            };

            hm_pjylz[j] = 0;
            hm_tmpPjylz[j] = {
                totalYl: 0, // 遗漏总计
                count: 0,    // 遗漏次数
                cx0Flag: 0 //出现标签

            };

            hm_zdlcz[j] = 0;
            hm_tmpZdlcz[j] = {
                total: 0, //当前数
                maxTotal: 0, // 连出最大
                count: 0    // 连出计数
            };
        }

        // 遗漏统计
        var numberArr = [];
        var hm_numberArr = [];


        for(var idata = 0; idata < data.length; idata++){
            var num = 0, hm_num = 0;
            var arr = [], hm_arr = [];
            var openCode = data[idata].openCode.split(",");

            for(var n = 1; n < 17; n++){
                arr[n] = 0;
            }

            for(var n = 1; n < 34; n++){
                hm_arr[n] = 0;
            }

            for(var jYl = 0; jYl < openCode.length - 1; jYl++){
                hm_num = parseInt(openCode[jYl]);
                //出现号码计数
                hm_cxzcs[hm_num]++;
                hm_arr[hm_num] = 1;
            }

            num = parseInt(openCode[openCode.length - 1]);
            //出现号码标记为1
            arr[num] = 1;
            cxzcs[num]++;

            //每期出现或遗漏的数据
            numberArr.push(arr);
            hm_numberArr.push(hm_arr);
        }


        //计算遗漏平均值
        for(var ii = 0; ii < numberArr.length; ii++){
            for (var jj = 1; jj < 17; jj++) {
                //判断是遗漏号
                if (numberArr[ii][jj] == 0) {
                    //遗漏累加
                    tmpPjylz[jj].totalYl++;
                    //遗漏计数标签
                    tmpPjylz[jj].cx0Flag++;
                    if(tmpPjylz[jj].cx0Flag == 1){
                        tmpPjylz[jj].count++;
                    }

                    //最大遗漏计算
                    tmpZdylz[jj].count++;
                    if(ii == numberArr.length - 1){
                        tmpZdylz[jj].total = tmpZdylz[jj].count; //当前遗漏
                        tmpZdylz[jj].maxTotal = tmpZdylz[jj].total > tmpZdylz[jj].maxTotal ? tmpZdylz[jj].total : tmpZdylz[jj].maxTotal;
                    }

                    //最大连出值
                    tmpZdlcz[jj].total = tmpZdlcz[jj].count; //当前连出值
                    tmpZdlcz[jj].maxTotal = tmpZdlcz[jj].total > tmpZdlcz[jj].maxTotal ? tmpZdlcz[jj].total : tmpZdlcz[jj].maxTotal;
                    tmpZdlcz[jj].count = 0;

                }else{
                    //如果出现计数标签归零
                    tmpPjylz[jj].cx0Flag = 0;

                    //最大遗漏计算
                    tmpZdylz[jj].total = tmpZdylz[jj].count; //当前遗漏
                    tmpZdylz[jj].maxTotal = tmpZdylz[jj].total > tmpZdylz[jj].maxTotal ? tmpZdylz[jj].total : tmpZdylz[jj].maxTotal;
                    tmpZdylz[jj].count = 0;

                    //最大连出值
                    tmpZdlcz[jj].count++;
                    //如果当前期数等于最后一期
                    if(ii == numberArr.length - 1){
                        tmpZdlcz[jj].total = tmpZdlcz[jj].count; //当前连出值
                        tmpZdlcz[jj].maxTotal = tmpZdlcz[jj].total > tmpZdlcz[jj].maxTotal ? tmpZdlcz[jj].total : tmpZdlcz[jj].maxTotal;
                    }
                }
            }
        }

        for(var iZd = 0; iZd < tmpZdylz.length; iZd++){
            zdylz[iZd] = tmpZdylz[iZd].maxTotal;
        }

        for(var iPj = 0; iPj < tmpPjylz.length; iPj++){
            pjylz[iPj] = parseInt(tmpPjylz[iPj].totalYl / tmpPjylz[iPj].count);
        }

        for(var iLc = 0; iLc < tmpZdlcz.length; iLc++){
            zdlcz[iLc] = tmpZdlcz[iLc].maxTotal;
        }




        //计算平均遗漏--号码位
        //计算遗漏平均值
        for(var ii = 0; ii < hm_numberArr.length; ii++){
            for (var jj = 1; jj < 34; jj++) {
                //判断是遗漏号
                if ( hm_numberArr[ii][jj] == 0) {
                    //遗漏累加
                    hm_tmpPjylz[jj].totalYl++;
                    //遗漏计数标签
                    hm_tmpPjylz[jj].cx0Flag++;
                    if( hm_tmpPjylz[jj].cx0Flag == 1){
                        hm_tmpPjylz[jj].count++;
                    }

                    //最大遗漏计算
                    hm_tmpZdylz[jj].count++;
                    if(ii ==  hm_numberArr.length - 1){
                        hm_tmpZdylz[jj].total =  hm_tmpZdylz[jj].count; //当前遗漏
                        hm_tmpZdylz[jj].maxTotal =  hm_tmpZdylz[jj].total >  hm_tmpZdylz[jj].maxTotal ?  hm_tmpZdylz[jj].total :  hm_tmpZdylz[jj].maxTotal;
                    }

                    //最大连出值
                    hm_tmpZdlcz[jj].total =  hm_tmpZdlcz[jj].count; //当前连出值
                    hm_tmpZdlcz[jj].maxTotal =  hm_tmpZdlcz[jj].total >  hm_tmpZdlcz[jj].maxTotal ?  hm_tmpZdlcz[jj].total :  hm_tmpZdlcz[jj].maxTotal;
                    hm_tmpZdlcz[jj].count = 0;

                }else{
                    //如果出现计数标签归零
                    hm_tmpPjylz[jj].cx0Flag = 0;

                    //最大遗漏计算
                    hm_tmpZdylz[jj].total = hm_tmpZdylz[jj].count; //当前遗漏
                    hm_tmpZdylz[jj].maxTotal = hm_tmpZdylz[jj].total > hm_tmpZdylz[jj].maxTotal ? hm_tmpZdylz[jj].total : hm_tmpZdylz[jj].maxTotal;
                    hm_tmpZdylz[jj].count = 0;

                    //最大连出值
                    hm_tmpZdlcz[jj].count++;
                    //如果当前期数等于最后一期
                    if(ii == numberArr.length - 1){
                        hm_tmpZdlcz[jj].total =  hm_tmpZdlcz[jj].count; //当前连出值
                        hm_tmpZdlcz[jj].maxTotal =  hm_tmpZdlcz[jj].total >  hm_tmpZdlcz[jj].maxTotal ?  hm_tmpZdlcz[jj].total :  hm_tmpZdlcz[jj].maxTotal;
                    }
                }
            }
        }



        for(var iZd = 0; iZd < hm_tmpZdylz.length; iZd++){
            hm_zdylz[iZd] = hm_tmpZdylz[iZd].maxTotal;
        }

        for(var iPj = 0; iPj < hm_tmpPjylz.length; iPj++){
            hm_pjylz[iPj] = parseInt(hm_tmpPjylz[iPj].totalYl / hm_tmpPjylz[iPj].count);
        }

        for(var iLc = 0; iLc < hm_tmpZdlcz.length; iLc++){
            hm_zdlcz[iLc] = hm_tmpZdlcz[iLc].maxTotal;
        }

//和值位统计
        var str1 = '',
            str2 = '',
            str3 = '',
            str4 = '';
        for(var i = 1; i < 17; ++i) {
            // 出现次数
            str1 += '<var><i>' + cxzcs[i] + '</i></var>';
            str2 += '<var><i>' + pjylz[i] + '</i></var>';
            str3 += '<var><i>' + zdylz[i] + '</i></var>';
            str4 += '<var><i>' + zdlcz[i] + '</i></var>';

        }

        $("#cxzcs").html(str1);
        $("#pjylz").html(str2);
        $("#zdylz").html(str3);
        $("#zdlcz").html(str4);


//号码位统计
        str1 = '';
        str2 = '';
        str3 = '';
        str4 = '';
        for (var i = 1; i <34; ++i) {
            // 出现次数
            str1 += '<var><i>' + hm_cxzcs[i] + '</i></var>';
            str2 += '<var><i>' + hm_pjylz[i] + '</i></var>';
            str3 += '<var><i>' + hm_zdylz[i] + '</i></var>';
            str4 += '<var><i>' + hm_zdlcz[i] + '</i></var>';

        }

        $("#hm_cxzcs").html(str1);
        $("#hm_pjylz").html(str2);
        $("#hm_zdylz").html(str3);
        $("#hm_zdlcz").html(str4);


        // 遗漏数据
        for(var i = 1; i < 34; ++i) {
            var tmpCount = 0;
            var obj = $(".i_" + i + " i");
            for(var j = 0; j < obj.length; ++j) {
                var o = obj[j];
                if(typeof $(o).data('num') == 'undefined') {
                    tmpCount = tmpCount + 1;
                    $(o).html(tmpCount).addClass("transparent");
                } else {
                    tmpCount = 0;
                }
            }
        }

        // 遗漏分层
        for(var i = 1; i < 34; ++i) {
            var obj = $(".i_" + i + " i");
            for(var j = obj.length - 1; j >= 0; --j) {
                var o = obj[j];
                if(typeof $(o).data('num') == 'undefined') {
                    $(o).parent().addClass("ylfc");
                } else {
                    break;
                }
            }
        }

        if($("#checkboxYlfc").is(":checked")) {
            $(".ylfc").addClass("ylfc-bg");
        } else {
            $(".ylfc").removeClass("ylfc-bg");
        }
    }
</script>
<c:import url="common/bodyEnd.jsp" />