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
            <div class="main-box" style="width:1155px;">
                <div class="main-nav">
                    <div class="cplogo"><img src="${resPath}zst/img/jsk3.png" alt="江苏快3" /><span>江苏快3</span></div>
                    <c:import url="common/nav.jsp" />
                    <ul class="btn-navs">
                        <li class="fff" data-contentid="zhexianData" data-id="shuju1">基本走势</li>
                        <li data-contentid="shuju2" data-id="shuju2">K线图</li>
                        <li data-contentid="shuju3" data-id="shuju3">直方图</li>
                        <%--<li data-id="shuju4">遗漏统计</li>--%>
                        <li data-id="shuju5">历史开奖数据</li>
                        <li>
                            <a href="javascript:void(0)" onclick="getSscPage('gcdt/jsk3')">立即投注</a>
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
                        <div class="main-li-right" style="visibility:hidden">
                            <div>
                                <a href="javascript:void(0)" onclick="getSscPage('gcdt/jsk3')">立即投注</a>
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
                                    <span class="btn btn-hua" onClick="change_attr(0,-1,-1)" style="background-image: url(${resPath}zst/img/zhubg.png); background-position: -102px -346px;"></span>
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
                                        <div class="left cl-31">开奖日期</div>
                                        <div class="left cl-31">期号</div>
                                        <div class="left cl-32">奖号</div>
                                        <div class="left cl-32" style="width:50px;">和值</div>
                                        <%--<div class="left cl-32" style="width:50px;">跨度</div>--%>
                                        <div class="left cl-33">
                                            <div class="cl-35">
                                                <div class="left cl-34">百位</div>
                                                <div class="left cl-34">十位</div>
                                                <div class="left cl-34">个位</div>
                                            </div>
                                            <div class="cl-35 cl-36 clean">
                                                <script>
                                                    for(var i = 0; i < 3; ++i) {
                                                        for(var j = 1; j < 7; ++j) {
                                                            var s = '';
                                                            if(i % 2 == 0) {
                                                                s = 'bg-1';
                                                            } else {
                                                                s = 'bg-2'
                                                            }
                                                            document.write('<var class="' + s + ' k3_varW"><i>' + j + '</i></var>');
                                                        }
                                                    }
                                                </script>
                                            </div>
                                        </div>
                                        <div class="left cl-32" style="width:173px;">
                                            <div class="cl-35">
                                                <div class="left cl-34" style="width:173px;">重号类型</div>
                                            </div>
                                            <div class="cl-35 cl-36 clean">
                                                <var class=""><i style="width:40px;">三不同</i></var>
                                                <var class=""><i style="width:40px;">对子</i></var>
                                                <var class=""><i style="width:40px;">豹子</i></var>
                                                <var class=""><i style="width:40px;">顺子</i></var>
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
                                    <div class="left cl-31">开奖日期</div>
                                    <div class="left cl-31">期号</div>
                                    <div class="left cl-32">奖号</div>
                                    <div class="left cl-32" style="width:50px;">和值</div>
                                    <%--<div class="left cl-32" style="width:50px;">跨度</div>--%>
                                    <div class="left cl-33">
                                        <div class="cl-35">
                                            <div class="left cl-34">百位</div>
                                            <div class="left cl-34">十位</div>
                                            <div class="left cl-34">个位</div>
                                        </div>
                                        <div class="cl-35 cl-36 clean">
                                            <script>
                                                for(var i = 0; i < 3; ++i) {
                                                    for(var j = 1; j < 7; ++j) {
                                                        var s = '';
                                                        if(i % 2 == 0) {
                                                            s = 'bg-1';
                                                        } else {
                                                            s = 'bg-2'
                                                        }
                                                        document.write('<var class="' + s + ' k3_varW"><i>' + j + '</i></var>');
                                                    }
                                                }
                                            </script>
                                        </div>
                                    </div>
                                    <div class="left cl-32" style="width:173px;">
                                        <div class="cl-35">
                                            <div class="left cl-34" style="width:173px;">重号类型</div>
                                        </div>
                                        <div class="cl-35 cl-36 clean">
                                            <var><i style="width:40px;">三不同</i></var>
                                            <var><i style="width:40px;">对子</i></var>
                                            <var><i style="width:40px;">豹子</i></var>
                                            <var><i style="width:40px;">顺子</i></var>
                                        </div>
                                    </div>
                                </div>
                                <div id="yiLouData">
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:350px;">出现总次数</div>
                                        <div id="cxzcs"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:350px;">平均遗漏值</div>
                                        <div id="pjylz"> </div>
                                    </div>
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:350px;">最大遗漏值</div>
                                        <div id="zdylz"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:350px;">最大连出值</div>
                                        <div id="zdlcz"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="shuju2" class="shuju hide">
                        <div class="biao">
                            <div id="main1" style="width: 1155px;;height:600px;background: #fff"></div>
                        </div>
                    </div>
                    <div id="shuju3" class="shuju hide">
                        <div id="main2" style="width: 1000px;;height:500px;"></div>
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
                                <p><b>三不同：</b> 三个号码均不相同为三不同号。</p>
                                <p><b>对子：</b> 三个号码中有两个号码为三组。</p>
                                <p><b>豹子：</b> 三个号码相同为豹子号。</p>
                                <p><b>顺子：</b> 三个号码依次递增值为1为顺子号。</p>
                            </div>
                        </div>
                        <div class="shuomingright" style="width:500px;">
                            <div class="tou">
                                <h4>第<span id="number"></span> 期 &nbsp <font id="openDate"></font>开奖</h4>
                            </div>
                            <a href="javascript:void(0)" onclick="getSscPage('gcdt/jsk3')"><img class="btnjiang" src="${resPath}zst/img/jiang.png" alt=""></a>
                            <div class="jiezhi">
                                <h3>
                                    <p>
                                        <font id="tip"></font>
                                        <span id="leftTime"></span>
                                    </p>
                                </h3>
                            </div>
                            <div class="zhushi">每天销售82期&nbsp&nbsp每10分钟1期</div>
                            <div class="tongzhi">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="xiajiao">
        快速购买 江苏快3
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
        });

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
    var playGroupId = 18;

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
        var subtext = "江苏快3";
        if(data.length > 0) {
            subtext += " 第" + data[0].number + '期 ~ ' + "第" + data[data.length - 1].number + '期';
        }
        var option = {
            title: {
                text: '江苏快3直方图',
                subtext: subtext,
                x: 'center'
            },
            //            dataZoom : {
            //                show : true,
            //                realtime: true,
            //                start : 0,
            //                end : 60
            //            },
            grid: {
                left: '1%',
                right: '5%',
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
                barGap: '10px',
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
        for(var i = 0; i < 6; ++i) {
            yData[i] = 0;
            option.xAxis.data.push(i+1);
        }

        $.each(data, function(index, value) {
            var openCode = value.openCode;
            var arr = openCode.split(",");

            for(var i = 0; i < arr.length; ++i) {
                //              console.log(Tools.parseInt(arr[i]));
                yData[Tools.parseInt(arr[i]-1)]++;
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
        var subtext = "江苏快3";
        if(data.length > 0) {
            subtext += " 第" + data[0].number + '期 ~ ' + "第" + data[data.length - 1].number + '期';
        }
        var option = {
            title: {
                text: '江苏快3K线图',
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
                right: '15%',
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
            str += '<div class="left cl-31 number">' + dateFormat(data[i].openTime, "yyyy-mm-dd HH:mm:ss") + '</div>';
            str += '<div class="left cl-31 number">' + data[i].number + '</div>';
            str += '<div class="left cl-32 openCode">' + data[i].openCode + '</div>';
            var kjData = data[i].openCode.split(",");

            var num1 = Tools.parseInt(kjData[0]);
            var num2 = Tools.parseInt(kjData[1]);
            var num3 = Tools.parseInt(kjData[2]);
            var sum = num1 + num2 + num3;
            str += '<div class="left cl-32 openCode" style="width:50px">' + sum + '</div>';

            var kuadu = Math.abs(num1 - num2);
            var tmp = Math.abs(num1 - num3);
            kuadu = tmp > kuadu ? tmp : kuadu;
            tmp = Math.abs(num2 - num3);
            kuadu = tmp > kuadu ? tmp : kuadu;

            for(var j = 0; j < kjData.length; ++j) {
                var haoma = kjData[j];
                var bc1 = 0;
                var Left = 0;

                str += '<div class="cl-35 cl-36">';
                if(i < data.length - 1) {
                    bc1 = (data[i].openCode.split(",")[j]) - (data[i + 1].openCode.split(",")[j]);
                }

                if(bc1 > 0) {
                    Left = (bc1) * (-34);
                } else if(bc1 < 0) {
                    bc1 = -bc1;
                }
                for(var k = 1; k < 7; ++k) {
                    str += '<var class="' + (j % 2 == 0 ? 'bg-1' : 'bg-2') + ' i_' + j + "_" + k + ' k3_varW">';
                    if(k == haoma) {
                        str += '<i data-num="' + k + '" class="' + (j % 2 == 0 ? 'bg-4' : 'bg-5') + '">';
                        str += k;
                        str += '<canvas class="zhexian" id="canvas' + i + j + '" width="' + (bc1 + 1) * 34 + '" height="32px" style="z-index: 10; left:' + Left + 'px; display: none;"></canvas>';
                        str += '</i>';
                    } else {
                        str += '<i></i>';
                    }
                    str += '</var>';

                    // 三不同对子豹子
                    if(j == 2 && k == 6) {
                        var type = num1 == num2 && num2 == num3 ? 2 : (num1 == num2 || num1 == num3 || num2 == num3 ? 1 : (num2 - num1 == 1 && num3 - num2 == 1 ? 3 : 0));
                        if(i < data.length - 1) {
                            var kjData = data[i + 1].openCode.split(',');
                            num1 = Tools.parseInt(kjData[0]);
                            num2 = Tools.parseInt(kjData[1]);
                            num3 = Tools.parseInt(kjData[2]);
                            var type2 = num1 == num2 && num2 == num3 ? 2 : (num1 == num2 || num1 == num3 || num2 == num3 ? 1 : (num2 - num1 == 1 && num3 - num2 == 1 ? 3 : 0));

                            bc1 = type - type2;
                            if(bc1 < 0) {
                                bc1 = -bc1;
                                Left = 0;
                            } else {
                                Left = (bc1) * (-40);
                            }
                        }

                        for(var w = 0; w < 4; ++w) {
                            if(w == type) {
                                str += '<var class="" style="text-align:center;"><i data-type="txFlag" data-num="type_'+ type +':qishu_'+ i +'"   style="margin:auto;width:42px!important;background:#ffddc4;color:#ff0000">' + (type == 0 ? '三不同' : (type == 1 ? '对子' : type == 3 ? '顺子' : '豹子'));
                                str += '<canvas class="zhexian" id="canvas' + i + '4" width="' + (bc1 + 1) * 40 + '" height="32px" style="z-index: 10; left:' + Left + 'px;"></canvas>';
                                str += '</i></var>';
                            } else {
                                str += '<var class="bg-2"><i data-type="txFlag" style="width:40px"></i></var>';
                            }
                        }
                    }
                }
                str += '</div>';
            }
            str += '</div>';
        }
        $("#zhexianData").html(str);

        for(var i = 0; i < data.length - 1; ++i) {
            for(var j = 0; j < 3; ++j) {
                bc1 = Tools.parseInt(data[i].openCode.split(',')[j]) - Tools.parseInt(data[i + 1].openCode.split(',')[j]);
                var Left = 0;
                if(bc1 < 0) {
                    bc1 = -bc1;
                    Left = (bc1) * (-35);
                }
                var canvas = document.getElementById("canvas" + i + j);
                var context = canvas.getContext("2d");
                var bc1 = (data[i].openCode.split(',')[j]) - data[i + 1].openCode.split(',')[j];
                if(bc1 < 0) {
                    context.moveTo(13, 13);
                    context.lineTo(canvas.width - 21, canvas.height - 7);
                } else if(bc1 > 0) {
                    context.moveTo(canvas.width - 26, 15);
                    context.lineTo(11, canvas.height - 5);
                } else {
                    context.moveTo(10, 15);
                    context.lineTo(10, 26);
                }
                if(j % 2 != 0) {
                    context.strokeStyle = "#cc0000";
                }
                context.stroke();
            }
        }
        // 对子三不同豹子
        for(var i = 0; i < data.length - 1; ++i) {
            var kjData = data[i].openCode.split(',');
            var num1 = Tools.parseInt(kjData[0]);
            var num2 = Tools.parseInt(kjData[1]);
            var num3 = Tools.parseInt(kjData[2]);
            var type1 = num1 == num2 && num2 == num3 ? 2 : (num1 == num2 || num1 == num3 || num2 == num3 ? 1 : (num2 - num1 == 1 && num3 - num2 == 1 ? 3 : 0));
            kjData = data[i + 1].openCode.split(',');
            num1 = Tools.parseInt(kjData[0]);
            num2 = Tools.parseInt(kjData[1]);
            num3 = Tools.parseInt(kjData[2]);
            var type2 = num1 == num2 && num2 == num3 ? 2 : (num1 == num2 || num1 == num3 || num2 == num3 ? 1 : (num2 - num1 == 1 && num3 - num2 == 1 ? 3 : 0));

            bc1 = type1 - type2;
            var Left = 0;
            if(bc1 < 0) {
                bc1 = -bc1;
                Left = (bc1) * (-30);
            }
            var canvas = document.getElementById("canvas" + i + '4');
            var context = canvas.getContext("2d");
            var bc1 = type1 - type2;
            if(bc1 < 0) {
                context.moveTo(17, 16);
                context.lineTo(canvas.width - 23, canvas.height - 6);
            } else if(bc1 > 0) {
                context.moveTo(canvas.width - 27, 15);
                context.lineTo(15, canvas.height - 8);
            } else {
                context.moveTo(20, 25);
                context.lineTo(20, 15);
            }
            context.strokeStyle = "#cc0000";
            context.stroke();
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
        var data_len = data.length;

        for(var i = 0; i < 4; ++i) {
            yilou[i] = [];
            for(var j = 1; j < 7; ++j) {
                yilou[i][j] = {
                    cxCs: 0, // 出现次数
                    cxZhi:[], //出现时存储的期数
                    maxLcCs: 0, // 最大连出次数
                    ylCs:0, // 遗漏次数
                    ylArr: [] // 最大遗漏次数数组
                };
            }
        }

        //初始化遗
        yilou[3][1].ylArr[1] = 0;
        yilou[3][2].ylArr[2] = 0;
        yilou[3][3].ylArr[3] = 0;
        yilou[3][4].ylArr[4] = 0;


        var yilouJis = [];
        var yilouJis1 = [];
        var yilouJis2 = [];
        var yilouJis3 = [];
        for(var n = 0; n < data_len; n++){
            yilouJis[n] = n;
            yilouJis1[n] = n;
            yilouJis2[n] = n;
            yilouJis3[n] = n;
        }

        $("i[data-type='txFlag']").each(function (index, value) {
            var flag = $(this)[0].hasAttribute("data-num");
            if(flag){
                var num =$(this).attr("data-num");
                var type_012 = num.split(":")[0];
                var qisuh = num.split(":")[1];
                var number_type = type_012.split("_")[1]; //类型标记
                var number_qishu = qisuh.split("_")[1]; //期数的值

                if(number_type == "0"){
                    yilou[3][1].cxCs++; //大不同号出现次数
                    yilou[3][1].cxZhi.push(number_qishu);
                }else if(number_type == "1"){
                    yilou[3][2].cxCs++; //对子号出现次数
                    yilou[3][2].cxZhi.push(number_qishu);
                }else if(number_type == "2"){
                    yilou[3][3].cxCs++; //豹子号出现次数
                    yilou[3][3].cxZhi.push(number_qishu);
                }else if(number_type == "3"){
                    yilou[3][4].cxCs++; //顺子号出现次数
                    yilou[3][4].cxZhi.push(number_qishu);
                }
            }
        });


        var lcflag_0 = yilou[3][1].cxZhi;
        var lcflag_1 = yilou[3][2].cxZhi;
        var lcflag_2 = yilou[3][3].cxZhi;
        var lcflag_3 = yilou[3][4].cxZhi;

        var maxLcCs_tmp_0 = 0; //最大连出次数
        var maxLcCs_tmp_1 = 0; //最大连出次数
        var maxLcCs_tmp_2 = 0; //最大连出次数
        var maxLcCs_tmp_3 = 0; //最大连出次数

        var maxYlCs_tmp_0 = 0; //最大遗漏次数
        var maxYlCs_tmp_1 = 0; //最大遗漏次数
        var maxYlCs_tmp_2 = 0; //最大遗漏次数
        var maxYlCs_tmp_3 = 0; //最大遗漏次数

        if(lcflag_0.length > 0){
            for(var m = 0; m < lcflag_0.length; m++){
                for(var n=0; n<data_len; n++){
                    if(yilouJis[n] == lcflag_0[m]){
                        yilouJis[n] = 99;
                    }
                }
            }

            for(var n1 = 0; n1 < data_len; n1++){
                if(yilouJis[n1] != 99){
                    //最大遗漏值临时计算
                    maxYlCs_tmp_0++;

                    if(maxYlCs_tmp_0 < 2){
                        //遗漏次数
                        yilou[3][1].ylCs++;
                    }

                    //判断已存在的连数是否是最大连数将最大连数放入最大连数数组中
                    yilou[3][1].maxLcCs = maxLcCs_tmp_0 > yilou[3][1].maxLcCs ? maxLcCs_tmp_0 : yilou[3][1].maxLcCs;
                    maxLcCs_tmp_0 = 0; //将当前计算数值清零

                    if(n1 == data_len-1){
                        yilou[3][1].ylArr[1] = maxYlCs_tmp_0 > yilou[3][1].ylArr[1] ? maxYlCs_tmp_0 : yilou[3][1].ylArr[1];
                    }
                }else{
                    //最大遗漏值
                    yilou[3][1].ylArr[1] = maxYlCs_tmp_0 > yilou[3][1].ylArr[1] ? maxYlCs_tmp_0 : yilou[3][1].ylArr[1];
                    maxYlCs_tmp_0 = 0;

                    maxLcCs_tmp_0++;
                    if(n1 == data_len-1){
                        yilou[3][1].maxLcCs = maxLcCs_tmp_0 > yilou[3][1].maxLcCs ? maxLcCs_tmp_0 : yilou[3][1].maxLcCs;
                    }
                }
            }
        }

        if(lcflag_1.length > 0){
            for(var m = 0; m < lcflag_1.length; m++){
                for(var n=0; n<30; n++){
                    if(yilouJis1[n] == lcflag_1[m]){
                        yilouJis1[n] = 99;
                    }
                }
            }

            for(var n1 = 0; n1 < data_len; n1++){
                if(yilouJis1[n1] != 99){
                    //最大遗漏值临时计算
                    maxYlCs_tmp_1++;

                    if(maxYlCs_tmp_1 < 2){
                        //遗漏次数
                        yilou[3][2].ylCs++;
                    }

                    //判断已存在的连数是否是最大连数将最大连数放入最大连数数组中
                    yilou[3][2].maxLcCs = maxLcCs_tmp_1 > yilou[3][2].maxLcCs ? maxLcCs_tmp_1 : yilou[3][2].maxLcCs;
                    maxLcCs_tmp_1 = 0; //将当前计算数值清零

                    if(n1 == data_len-1){
                        yilou[3][2].ylArr[2] = maxYlCs_tmp_1 > yilou[3][2].ylArr[2] ? maxYlCs_tmp_1 : yilou[3][2].ylArr[2];
                    }
                }else{
                    //最大遗漏值
                    yilou[3][2].ylArr[2] = maxYlCs_tmp_1 > yilou[3][2].ylArr[2] ? maxYlCs_tmp_1 : yilou[3][2].ylArr[2];
                    maxYlCs_tmp_1 = 0;

                    maxLcCs_tmp_1++;
                    if(n1 == data_len-1){
                        yilou[3][2].maxLcCs = maxLcCs_tmp_1 > yilou[3][2].maxLcCs ? maxLcCs_tmp_1 : yilou[3][2].maxLcCs;
                    }
                }
            }
        }


        if(lcflag_2.length > 0){
            for(var m = 0; m < lcflag_2.length; m++){
                for(var n=0; n<data_len; n++){
                    if(yilouJis2[n] == lcflag_2[m]){
                        yilouJis2[n] = 99;
                    }
                }

            }

            for(var n1 = 0; n1 < data_len; n1++){
                if(yilouJis2[n1] != 99){
                    //最大遗漏值临时计算
                    maxYlCs_tmp_2++;
                    if(maxYlCs_tmp_2 < 2){
                        //遗漏次数
                        yilou[3][3].ylCs++;
                    }

                    //判断已存在的连数是否是最大连数将最大连数放入最大连数数组中
                    yilou[3][3].maxLcCs = maxLcCs_tmp_2 > yilou[3][3].maxLcCs ? maxLcCs_tmp_2 : yilou[3][3].maxLcCs;
                    maxLcCs_tmp_2 = 0; //将当前计算数值清零

                    if(n1 == data_len-1){
                        yilou[3][3].ylArr[3] = maxYlCs_tmp_2 > yilou[3][3].ylArr[3] ? maxYlCs_tmp_2 : yilou[3][3].ylArr[3];
                    }
                }else{
                    //最大遗漏值
                    yilou[3][3].ylArr[3] = maxYlCs_tmp_2 > yilou[3][3].ylArr[3] ? maxYlCs_tmp_2 : yilou[3][3].ylArr[3];
                    maxYlCs_tmp_2 = 0;

                    maxLcCs_tmp_2++;
                    if(n1 == data_len-1){
                        yilou[3][3].maxLcCs = maxLcCs_tmp_2 > yilou[3][3].maxLcCs ? maxLcCs_tmp_2 : yilou[3][3].maxLcCs;
                    }
                }
            }
        }


        if(lcflag_3.length > 0){
            for(var m = 0; m < lcflag_3.length; m++){
                for(var n=0; n<data_len; n++){
                    if(yilouJis3[n] == lcflag_3[m]){
                        yilouJis3[n] = 99;
                    }
                }

            }

            for(var n1 = 0; n1 < data_len; n1++){
                if(yilouJis3[n1] != 99){
                    //最大遗漏值临时计算
                    maxYlCs_tmp_3++;
                    if(maxYlCs_tmp_3 < 2){
                        //遗漏次数
                        yilou[3][4].ylCs++;
                    }

                    //判断已存在的连数是否是最大连数将最大连数放入最大连数数组中
                    yilou[3][4].maxLcCs = maxLcCs_tmp_3 > yilou[3][4].maxLcCs ? maxLcCs_tmp_3 : yilou[3][4].maxLcCs;
                    maxLcCs_tmp_3 = 0; //将当前计算数值清零

                    if(n1 == data_len-1){
                        yilou[3][4].ylArr[4] = maxYlCs_tmp_3 > yilou[3][4].ylArr[4] ? maxYlCs_tmp_3 : yilou[3][4].ylArr[4];
                    }
                }else{
                    //最大遗漏值
                    yilou[3][4].ylArr[4] = maxYlCs_tmp_3 > yilou[3][4].ylArr[4] ? maxYlCs_tmp_3 : yilou[3][4].ylArr[4];
                    maxYlCs_tmp_3 = 0;

                    maxLcCs_tmp_3++;
                    if(n1 == data_len-1){
                        yilou[3][4].maxLcCs = maxLcCs_tmp_3 > yilou[3][4].maxLcCs ? maxLcCs_tmp_3 : yilou[3][4].maxLcCs;
                    }
                }
            }
        }

        for(var i = 0; i < 3; ++i) {
            for(var j = 1; j < 7; ++j) {
                var obj = yilou[i][j];

                var tmpYlCs = 0; // 连续遗漏次数
                var tmpLcCs = 0; // 连出次数
                $.each(data, function(index, value) {
                    var openCodeArr = value.openCode.split(",");
                    var tmpValue = Tools.parseInt(openCodeArr[i]);

                    if(tmpValue != j) { // 遗漏
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
        for(var i = 0; i < 3; ++i) {
            for(var j = 1; j < 7; ++j) {
                var obj = yilou[i][j];
                // 出现次数
                str1 += '<var class="k3_varW"><i>' + obj.cxCs + '</i></var>';

                // 平均遗漏值&最大遗漏值
                var maxYl = 0;
                if(obj.ylArr.length > 0) {
                    var sumYl = 0;
                    $.each(obj.ylArr, function(index, value) {
                        sumYl += value;
                        maxYl = value > maxYl ? value : maxYl;
                    });
                    str2 += '<var class="k3_varW"><i>' + Math.floor(sumYl / obj.ylArr.length) + '</i></var>';
                    str3 += '<var class="k3_varW"><i>' + maxYl + '</i></var>';
                } else {
                    str2 += '<var class="k3_varW"><i>0</i></var>';
                    str3 += '<var class="k3_varW"><i>0</i></var>';
                }

                // 最大连出值
                str4 += '<var class="k3_varW"><i>' + obj.maxLcCs + '</i></var>';
            }
        }

        str1 += '<var><i style="width:40px" class="sbt_cxcs"></i></var><var><i style="width:40px" class="duiz_cxcs"></i></var><var><i style="width:40px" class="baozi_cxcs"></i></var><var><i style="width:40px" class="shunzi_cxcs"></i></var>';
        str2 += '<var><i style="width:40px" class="sbt_pjyl"></i></var><var><i style="width:40px" class="duiz_pjyl"></i></var><var><i style="width:40px" class="baozi_pjyl"></i></var><var><i style="width:40px" class="shunzi_pjyl"></i></var>';
        str3 += '<var><i style="width:40px" class="sbt_zdyl"></i></var><var><i style="width:40px" class="duiz_zdyl"></i></var><var><i style="width:40px" class="baozi_zdyl"></i></var><var><i style="width:40px" class="shunzi_zdyl"></i></var>';
        str4 += '<var><i style="width:40px" class="sbt_zdlc"></i></var><var><i style="width:40px" class="duiz_zdlc"></i></var><var><i style="width:40px" class="baozi_zdlc"></i></var><var><i style="width:40px" class="shunzi_zdlc"></i></var>';
        $("#cxzcs").html(str1);
        $("#pjylz").html(str2);
        $("#zdylz").html(str3);
        $("#zdlcz").html(str4);


        //出现次数统计
        $(".sbt_cxcs").html(yilou[3][1].cxCs);
        $(".duiz_cxcs").html(yilou[3][2].cxCs);
        $(".baozi_cxcs").html(yilou[3][3].cxCs);
        $(".shunzi_cxcs").html(yilou[3][4].cxCs);

        //平均遗漏值统计
        $(".sbt_pjyl").html((Math.floor((data_len - yilou[3][1].cxCs) / yilou[3][1].ylCs)) == Infinity ? 0 : (Math.floor((data_len - yilou[3][1].cxCs) / yilou[3][1].ylCs)));
        $(".duiz_pjyl").html((Math.floor((data_len - yilou[3][2].cxCs) / yilou[3][2].ylCs)) == Infinity ? 0 : (Math.floor((data_len - yilou[3][2].cxCs) / yilou[3][2].ylCs)));
        $(".baozi_pjyl").html((Math.floor((data_len - yilou[3][3].cxCs) / yilou[3][3].ylCs)) == Infinity ? 0 : (Math.floor((data_len - yilou[3][3].cxCs) / yilou[3][3].ylCs)));
        $(".shunzi_pjyl").html((Math.floor((data_len - yilou[3][4].cxCs) / yilou[3][4].ylCs)) == Infinity ? 0 : (Math.floor((data_len - yilou[3][4].cxCs) / yilou[3][4].ylCs)));

        //最大遗漏数统计
        $(".sbt_zdyl").html(yilou[3][1].ylArr[1]);
        $(".duiz_zdyl").html(yilou[3][2].ylArr[2]);
        $(".baozi_zdyl").html(yilou[3][3].ylArr[3]);
        $(".shunzi_zdyl").html(yilou[3][4].ylArr[4]);

        //最大连出值
        $(".sbt_zdlc").html(yilou[3][1].maxLcCs);
        $(".duiz_zdlc").html(yilou[3][2].maxLcCs);
        $(".baozi_zdlc").html(yilou[3][3].maxLcCs);
        $(".shunzi_zdlc").html(yilou[3][4].maxLcCs);

        var str5 = '';
        for(var i = 0; i < 3; ++i) {
            for(var j = 1; j < 7; ++j) {
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
        for(var i = 0; i < 3; ++i) {
            for(var j = 1; j < 7; ++j) {
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
        for(var i = 0; i < 3; ++i) {
            for(var j = 1; j < 7; ++j) {
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
