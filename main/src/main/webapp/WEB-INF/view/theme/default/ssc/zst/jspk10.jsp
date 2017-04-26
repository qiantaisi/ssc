<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<c:import url="common/bodyStart.jsp" />

<div id="box" class="qc">
    <div class="qc" id="Right">
        <div class="main">
            <div class="main-box" style="width:2402px;">
                <div class="main-nav">
                    <div class="cplogo"><img src="${resPath}zst/img/jspk10.png" alt="极速赛车" /><span>极速赛车</span></div>
                    <c:import url="common/nav.jsp" />
                    <ul class="btn-navs">
                        <li class="fff" data-contentid="zhexianData" data-id="shuju1">基本走势</li>
                        <li data-contentid="shuju2" data-id="shuju2">K线图</li>
                        <%--<li data-contentid="shuju3" data-id="shuju3">直方图</li>--%>
                        <%--<li data-id="shuju4">遗漏统计</li>--%>
                        <li data-id="shuju5">历史开奖数据</li>
                        <li>
                            <a href="javascript:void(0)" onclick="getSscPage('gcdt/jspk10')">立即投注</a>
                        </li>
                    </ul>
                </div>
                <div class="qhbox">
                    <div class="main-li" style="display: none">
                        <div class="main-li-right" style="visibility: hidden;">
                            <div>
                                <a href="javascript:void(0)" onclick="getSscPage('gcdt/jspk10')">立即投注</a>
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
                                        <div class="left cl-32" style="width:200px;">奖号</div>
                                        <div class="left cl-33">
                                            <div class="cl-35">
                                                <div class="left cl-34">冠军</div>
                                                <div class="left cl-34">亚军</div>
                                                <div class="left cl-34">第三名</div>
                                                <div class="left cl-34">第四名</div>
                                                <div class="left cl-34">第五名</div>
                                                <div class="left cl-34">第六名</div>
                                                <div class="left cl-34">第七名</div>
                                                <div class="left cl-34">第八名</div>
                                                <div class="left cl-34">第九名</div>
                                                <div class="left cl-34">第十名</div>
                                            </div>
                                            <div class="cl-35 cl-36 clean">
                                                <script>
                                                    for(var i = 0; i < 10; ++i) {
                                                        for(var j = 0; j < 10; ++j) {
                                                            var s = '';
                                                            if(i % 2 == 0) {
                                                                s = 'bg-1';
                                                            } else {
                                                                s = 'bg-2'
                                                            }
                                                            document.write('<var class="' + s + '"><i>' + (j + 1) + '</i></var>');
                                                        }
                                                    }
                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="zhexianData"></div>
                                </div>
                            </div>

                            <%--<table class="xiaoshou">--%>
                            <%--<tr>--%>
                            <%--<td width="78px">161124-049</td>--%>
                            <%--<td width="78px">暂停销售</td>--%>
                            <%--<td class="borleft">8分10秒</td>--%>
                            <%--&lt;%&ndash;<td class="borleft">8分10秒</td>&ndash;%&gt;--%>
                            <%--</tr>--%>
                            <%--</table>--%>
                            <div class="cl-40 clean cl-41">
                                <p>遗漏统计</p>
                            </div>
                            <div class="cl-40 clean">
                                <div class="cl-30">
                                    <div class="left cl-31">期号</div>
                                    <div class="left cl-32" style="width:200px;">奖号</div>
                                    <div class="left cl-33">
                                        <div class="cl-35">
                                            <div class="left cl-34">冠军</div>
                                            <div class="left cl-34">亚军</div>
                                            <div class="left cl-34">第三名</div>
                                            <div class="left cl-34">第四名</div>
                                            <div class="left cl-34">第五名</div>
                                            <div class="left cl-34">第六名</div>
                                            <div class="left cl-34">第七名</div>
                                            <div class="left cl-34">第八名</div>
                                            <div class="left cl-34">第九名</div>
                                            <div class="left cl-34">第十名</div>
                                        </div>
                                        <div class="cl-35 cl-36 clean">
                                            <script>
                                                for(var i = 0; i < 10; ++i) {
                                                    for(var j = 0; j < 10; ++j) {
                                                        var s = '';
                                                        if(i % 2 == 0) {
                                                            s = 'bg-1';
                                                        } else {
                                                            s = 'bg-2'
                                                        }
                                                        document.write('<var class="' + s + '"><i>' + (j + 1) + '</i></var>');
                                                    }
                                                }
                                            </script>
                                        </div>
                                    </div>
                                </div>
                                <div id="yiLouData">
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:300px;">出现总次数</div>
                                        <div id="cxzcs"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:300px;">平均遗漏值</div>
                                        <div id="pjylz"> </div>
                                    </div>
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:300px;">最大遗漏值</div>
                                        <div id="zdylz"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:300px;">最大连出值</div>
                                        <div id="zdlcz"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="shuju2" class="shuju hide">
                        <div class="biao">
                            <div id="main1" style="width: 1000px;;height:600px;background: #fff"></div>
                        </div>
                    </div>
                    <div id="shuju3" class="shuju hide">
                        <div id="main2" style="width: 800px;;height:500px;"></div>
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
                        <table style="width:700px;">
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
                                <p><b>平均遗漏值：</b> 统计期数内遗漏的平均值。计算公式：平均遗漏=每次遗漏期数之和/出现次数。</p>
                                <p><b>最大遗漏值：</b> 统计期数内遗漏的最大值。</p>
                                <p><b>最大连出值：</b> 统计期数内连续开出的最大值。</p>
                            </div>
                        </div>
                        <div class="shuomingright" style="width:500px;">
                            <div class="tou">
                                <h4>第 <span id="number"></span> 期 &nbsp <font id="openDate"></font>开奖</h4>
                            </div>
                            <a href="javascript:void(0)" onclick="getSscPage('gcdt/jspk10')"><img class="btnjiang" src="${resPath}zst/img/jiang.png" alt=""></a>
                            <div class="jiezhi">
                                <h3>
                                    <p><font id="tip"></font>
                                        <span id="leftTime"></span></p>
                                </h3>
                            </div>
                            <div class="zhushi">每天销售1440期&nbsp&nbsp每1分钟一期</div>
                            <div class="tongzhi">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="xiajiao">
        快速购买 福彩3D
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
            type = Tools.parseInt(type);
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
    var playGroupId = 23;

    function lssj(data) {
        var str = '';
        $.each(data, function(index, value) {
            str += '<tr>';
            str += '<td>' + value.number + '</td>'
            str += '<td>' + dateFormat(value.openTime, 'yyyy-mm-dd hh:MM:ss') + '</td>'
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
        var subtext = "极速赛车";
        if(data.length > 0) {
            subtext += " 第" + data[0].number + '期 ~ ' + "第" + data[data.length - 1].number + '期';
        }
        var option = {
            title: {
                text: '极速赛车直方图',
                subtext: subtext,
                x: 'center'
            },
            dataZoom: {
                show: true,
                realtime: true,
                start: 0,
                end: 60
            },
            grid: {
                left: '1%',
                right: '2%',
                containLabel: true,
                y2: 120
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
                //                console.log(Tools.parseInt(arr[i]));
                yData[Tools.parseInt(arr[i] - 1)]++;
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
        var subtext = "极速赛车";
        if(data.length > 0) {
            subtext += " 第" + data[0].number + '期 ~ ' + "第" + data[data.length - 1].number + '期';
        }
        var option = {
            title: {
                text: '极速赛车K线图',
                subtext: subtext,
                x: 'center'
            },
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
                    res += '数值：' + Tools.parseInt(openCode.split(",")[0]);
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
                right: '2%',
                bottom: '8%',
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
                value: Tools.parseInt(value.openCode.split(",")[0]),
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
            str += '<div class="left cl-32 openCode" style="width:200px">' + data[i].openCode + '</div>';
            var kjData = data[i].openCode.split(",");

            for(var j = 0; j < kjData.length; ++j) {
                var haoma = kjData[j];
                var bc1 = 0;
                var Left = 0;

                str += '<div class="cl-35 cl-36">';
                if(i < data.length - 1) {
                    bc1 = (data[i].openCode.split(",")[j]) - (data[i + 1].openCode.split(",")[j]);
                }

                if(bc1 > 0) {
                    Left = (bc1) * (-20);
                } else if(bc1 < 0) {
                    bc1 = -bc1;
                }
                for(var k = 0; k < 10; ++k) {
                    str += '<var class="' + (j % 2 == 0 ? 'bg-1' : 'bg-2') + ' i_' + j + "_" + k + '">';
                    if(k == haoma - 1) {
                        str += '<i data-num="' + k + '" class="' + (j % 2 == 0 ? 'bg-4' : 'bg-5') + '">';
                        str += k + 1;
                        str += '<canvas class="zhexian" id="canvas' + i + j + '" width="' + (bc1 + 1) * 20 + '" height="32px" style="z-index: 10; left:' + Left + 'px; display: none;"></canvas>';
                        str += '</i>';
                    } else {
                        str += '<i></i>';
                    }
                    str += '</var>';
                }

                str += '</div>';
            }
            str += '</div>';
        }
        $("#zhexianData").html(str);

        for(var i = 0; i < data.length - 1; ++i) {
            for(var j = 0; j < 10; ++j) {
                bc1 = Tools.parseInt(data[i].openCode.split(',')[j]) - Tools.parseInt(data[i + 1].openCode.split(',')[j]);
                var Left = 0;
                if(bc1 < 0) {
                    bc1 = -bc1;
                    Left = (bc1) * (-20);
                }
                var canvas = document.getElementById("canvas" + i + j);
                var context = canvas.getContext("2d");
                var bc1 = (data[i].openCode.split(',')[j]) - data[i + 1].openCode.split(',')[j];
                if(bc1 < 0) {
                    context.moveTo(17, 13);
                    context.lineTo(canvas.width - 13, canvas.height - 8);
                } else if(bc1 > 0) {
                    context.moveTo(canvas.width - 13, 13);
                    context.lineTo(8, canvas.height - 5);
                } else {
                    context.moveTo(10, 12);
                    context.lineTo(10, 30);
                }
                if(j % 2 != 0) {
                    context.strokeStyle = "#cc0000";
                }
                context.stroke();
            }
        }
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
        // 遗漏统计
        var yilou = [];
        for(var i = 0; i < 10; ++i) {
            yilou[i] = [];
            for(var j = 0; j < 10; ++j) {
                yilou[i][j] = {
                    cxCs: 0, // 出现次数
                    maxLcCs: 0, // 最大连出次数
                    ylArr: [] // 遗漏次数
                };
            }
        }

        for(var i = 0; i < 10; ++i) {
            for(var j = 0; j < 10; ++j) {
                var obj = yilou[i][j];

                var tmpYlCs = 0; // 连续遗漏次数
                var tmpLcCs = 0; // 连出次数
                $.each(data, function(index, value) {
                    var openCodeArr = value.openCode.split(",");
                    var tmpValue = Tools.parseInt(openCodeArr[i]);

                    if(tmpValue != j + 1) { // 遗漏
                        tmpYlCs++;
                        if(tmpLcCs > obj.maxLcCs) {
                            obj.maxLcCs = tmpLcCs;
                        }
                        tmpLcCs = 0;
                    } else { // 中
                        obj.cxCs++;
                        tmpLcCs++;

                        obj.ylArr.push(tmpYlCs);
                        tmpYlCs = 0;
                    }
                });
            }
        }

        var str1 = '',
                str2 = '',
                str3 = '',
                str4 = '';
        for(var i = 0; i < 10; ++i) {
            for(var j = 0; j < 10; ++j) {
                var obj = yilou[i][j];
                // 出现次数
                str1 += '<var><i>' + obj.cxCs + '</i></var>';

                // 平均遗漏值&最大遗漏值
                var maxYl = 0;
                if(obj.ylArr.length > 0) {
                    var sumYl = 0;
                    $.each(obj.ylArr, function(index, value) {
                        sumYl += value;
                        maxYl = value > maxYl ? value : maxYl;
                    });
                    str2 += '<var><i>' + Math.floor(sumYl / obj.ylArr.length) + '</i></var>';
                    str3 += '<var><i>' + maxYl + '</i></var>';
                } else {
                    str2 += '<var><i>0</i></var>';
                    str3 += '<var><i>0</i></var>';
                }

                // 最大连出值
                str4 += '<var><i>' + obj.maxLcCs + '</i></var>';
            }
        }

        $("#cxzcs").html(str1);
        $("#pjylz").html(str2);
        $("#zdylz").html(str3);
        $("#zdlcz").html(str4);

        var str5 = '';
        for(var i = 0; i < 3; ++i) {
            for(var j = 0; j < 10; ++j) {
                str5 += '<tr>';
                if(j == 0) {
                    if(i == 0) {
                        str5 += '<td rowspan="10">百位</td>';
                    } else if(i == 1) {
                        str5 += '<td rowspan="10">十位</td>';
                    } else if(i == 2) {
                        str5 += '<td rowspan="10">个位</td>';
                    }
                }

                str5 += '<td>' + (j + 1) + '</td>';

                var obj = yilou[i][j];
                // 出现次数
                str5 += '<td>' + obj.cxCs + '</td>';

                // 平均遗漏值&最大遗漏值
                var maxYl = 0;
                if(obj.ylArr.length > 0) {
                    var sumYl = 0;
                    $.each(obj.ylArr, function(index, value) {
                        sumYl += value;
                        maxYl = value > maxYl ? value : maxYl;
                    });
                    str5 += '<td>' + Math.floor(sumYl / obj.ylArr.length) + '</td>';
                    str5 += '<td>' + maxYl + '</td>';
                } else {
                    str5 += '<td>0</td>';
                    str5 += '<td>0</td>';
                }

                // 最大连出值
                str5 += '<td>' + obj.maxLcCs + '</td>';
                str5 += '</tr>';
            }
        }
        $("#shuju4 table tbody").html(str5);

        // 遗漏数据
        for(var i = 0; i < 10; ++i) {
            for(var j = 0; j < 10; ++j) {
                var tmpCount = 0;
                var obj = $(".i_" + i + "_" + j + " i");
                $(obj).each(function() {
                    if(typeof $(this).data('num') == 'undefined') {
                        tmpCount = tmpCount + 1;
                        $(this).html(tmpCount).addClass("transparent");
                    } else {
                        tmpCount = 0;
                    }
                });
            }
        }

        // 遗漏分层
        for(var i = 0; i < 10; ++i) {
            for(var j = 0; j < 10; ++j) {
                var tmpCount = 0;
                var obj = $(".i_" + i + "_" + j + " i");
                for(var k = obj.length - 1; k >= 0; --k) {
                    var tmpObj = $(obj).eq(k);
                    if(typeof $(tmpObj).data('num') == 'undefined') {
                        $(tmpObj).parent().addClass("ylfc")
                    } else {
                        break;
                    }
                }
            }
        }
    }
</script>



<c:import url="common/bodyEnd.jsp" />