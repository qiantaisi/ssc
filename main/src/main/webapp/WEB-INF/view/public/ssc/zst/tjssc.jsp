<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="common/bodyStart.jsp" />
<c:import url="../../common/commonJs.jsp" />
<div id="box" class="qc">
    <div class="qc" id="Right">
        <div class="main">
            <div class="main-box remain-box">
                <div class="main-nav">
                    <div class="cplogo"><img src="${resPath}zst/img/tjssc.png" alt="天津时时彩" /><span>天津时时彩</span></div>
                    <c:import url="common/nav.jsp" />
                    <ul class="btn-navs">
                        <li data-contentid="zhexianData" data-id="shuju1">基本走势</li>
                        <li data-contentid="shuju2" data-id="shuju2">K线图</li>
                        <li data-contentid="shuju3" data-id="shuju3">直方图</li>
                        <li data-id="shuju5">历史开奖数据</li>
                        <li>
                            <a href="javascript:void(0)" onclick="parent.getSscPage('gcdt/tjssc')">立即投注</a>
                        </li>
                    </ul>
                </div>
                <div class="qhbox">
                    <div class="qhbox_title"></div>
                    <div class="qhbox_title2"></div>
                    <div class="main-li main-li-cq">
                        <div class="main-ul-box1">
                            <ul class="main-ul-box">
                                <li>
                                    <ul class="main-ul-1">
                                        <li>
                                            <a class="active" href="javascript:void(0)" data-contentid="zhexianData" data-id="hmzs">号码走势</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)" data-contentid="dxdshezhi" data-id="smzs">双面走势</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)" data-contentid="clzoushi" data-id="clzs">长龙走势</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="main-li-right" style="visibility: hidden;">
                            <div>
                                <a href="javascript:void(0)" onclick="parent.getSscPage('gcdt/tjssc')">立即投注</a>
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
                                <div><b>查询：</b></div>
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
                            <%--<li><div class="qi jian zdy"><a href="#" class="zdy-btn zdy-btn-cur">自定义查询<em></em></a>--%>
                            <%--<div class="zdy-pop" style="width: 264px; height: 123px; left: -177px;">--%>
                            <%--<div class="zdy-tag"><a href="#" class="cur">按期数</a>--%>
                            <%--<a href="#">按期号</a>--%>
                            <%--<a class="close">关闭</a>--%>
                            <%--</div>--%>
                            <%--<div class="zdy-cnt">--%>
                            <%--<div class="byIssueNum"><p>我要查询最近&nbsp;--%>
                            <%--<input type="text" class="ipt-sc issueNum">&nbsp;期</p>--%>
                            <%--</div>--%>
                            <%--<div class="byIssue" style="display:none;">--%>
                            <%--<p>第&nbsp;<input type="text" class="ipt-sc issueFrom" title="">&nbsp;至&nbsp;--%>
                            <%--<input type="text" class="ipt-sc issueTo" title="">&nbsp;期</p>--%>
                            <%--<p class="issueTip">注：输入期号格式为 2013061</p>--%>
                            <%--</div>--%>
                            <%--<div class="byDay" style="display:none;"><p>从<span class="byDate">--%>
                            <%--<input type="text" class="ipt-sc hasDatepicker" id="dateFrom" readonly="">--%>
                            <%--<img class="ui-datepicker-trigger" src="/static/v2/images/date.png" alt="" title=""></span>&nbsp;至&nbsp;--%>
                            <%--<span class="byDate"><input type="text" class="ipt-sc hasDatepicker" id="dateTo" readonly="">--%>
                            <%--<img class="ui-datepicker-trigger" src="/static/v2/images/date.png" alt="" title=""></span></p></div><p>--%>
                            <%--<button class="btn-star">开始查询</button> <button class="btn-rst">重 置</button> </p>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--</li>--%>
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
                                        <div class="left cl-32">奖号</div>
                                        <div class="left cl-33">
                                            <div class="cl-35">
                                                <div class="left cl-34">万位</div>
                                                <div class="left cl-34">千位</div>
                                                <div class="left cl-34">百位</div>
                                                <div class="left cl-34">十位</div>
                                                <div class="left cl-34">个位</div>
                                            </div>
                                            <div class="cl-35 cl-36 clean">
                                                <script>
                                                    for(var i = 0; i < 5; ++i) {
                                                        for(var j = 0; j < 10; ++j) {
                                                            var s = '';
                                                            if(i % 2 == 0) {
                                                                s = 'bg-1';
                                                            } else {
                                                                s = 'bg-2'
                                                            }
                                                            document.write('<var class="' + s + '"><i>' + j + '</i></var>');
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
                                    <div class="left cl-32">奖号</div>
                                    <div class="left cl-33">
                                        <div class="cl-35">
                                            <div class="left cl-34">万位</div>
                                            <div class="left cl-34">千位</div>
                                            <div class="left cl-34">百位</div>
                                            <div class="left cl-34">十位</div>
                                            <div class="left cl-34">个位</div>
                                        </div>
                                        <div class="cl-35 cl-36 clean">
                                            <script>
                                                for(var i = 0; i < 5; ++i) {
                                                    for(var j = 0; j < 10; ++j) {
                                                        document.write('<var class=""><i>' + j + '</i></var>');
                                                    }
                                                }
                                            </script>
                                        </div>
                                    </div>
                                </div>
                                <div id="yiLouData">
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51">出现总次数</div>
                                        <div id="cxzcs"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51">平均遗漏值</div>
                                        <div id="pjylz"> </div>
                                    </div>
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51">最大遗漏值</div>
                                        <div id="zdylz"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51">最大连出值</div>
                                        <div id="zdlcz"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="shuju2" class="shuju hide">
                        <div class="biao">
                            <div id="main1" style="width: 1250px;height:600px;background: #fff"></div>
                        </div>
                    </div>
                    <div id="shuju3" class="shuju hide">
                        <div id="main2" style="width: 800px;height:400px;"></div>
                    </div>
                    <div id="shuju6" class="shuju hide">
                        <div class="chu-box">
                            <%--双面长龙--%>
                            <div class="chu" id="canvasHeiht">
                                <div class="cl-40">
                                    <div class="cl-30">
                                        <div class="left cl-31 sm-qh">期号</div>
                                        <div class="left cl-32 sm-jh">奖号</div>
                                        <div class="left cl-33">
                                            <div class="cl-35">
                                                <div class="left cl-jb cl-28 ">万位</div>
                                                <div class="left cl-jb cl-28 ">千位</div>
                                                <div class="left cl-jb cl-28 ">百位</div>
                                                <div class="left cl-jb cl-28 ">十位</div>
                                                <div class="left cl-jb cl-28 ">个位</div>
                                                <div class="left cl-jb cl-29">总和、龙虎和</div>
                                            </div>
                                            <div class="cl-35 cl-36 clean sm-w">
                                                <script>
                                                    for (var i = 0; i < 5; ++i) {
                                                        for (var j = 0; j < 6; ++j) {
                                                            document.write('<var class="sm-head"><i>' + (j == 0 ? '大' : (j == 2 ? '单' : (j == 3 ? '双' : (j == 4 ? '质' : (j == 5 ? '合' : '小'))))) + '</i></var>');
                                                        }
                                                    }

                                                    for (var j = 0; j < 7; ++j) {
                                                        document.write('<var class="zh"><i>' + (j == 0 ? '龙' : (j == 2 ? '总大' : (j == 3 ? '总小' : (j == 4 ? '总单' : (j == 5 ? '总双' : (j == 6 ? '和' : '虎')))))) + '</i></var>');
                                                    }
                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="dxdshezhi"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--长龙走势--%>
                    <div id="shuju7" class="shuju hide">
                        <div class="chu-box rechu-box">
                            <div class="chu">
                                <div class="sm_clong">
                                    <c:import url="common/bottom_zs.jsp">
                                        <c:param name="playGroupId" value="2"/>
                                    </c:import>
                                </div>
                            </div>
                        </div>
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
                        <table style="width:600px;">
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
                            <a href="javascript:void(0)" onclick="getSscPage('gcdt/tjssc')"><img class="btnjiang" src="${resPath}zst/img/jiang.png" alt=""></a>
                            <div class="jiezhi">
                                <h3>
                                    <p><font id="tip"></font>
                                        <span id="leftTime"></span></p>
                                </h3>
                            </div>
                            <div class="zhushi">每天销售84期&nbsp&nbsp每10分钟一期</div>
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
//canvas元素用于图形的绘制，通过脚本 (通常是JavaScript)来完成.
<canvas id="canvas" width="1660px" height="570px" style="position:absolute;top:265px;left:243px;z-index: -10"></canvas>
<canvas id="canvas2"  width="1660px" height="570px" style="position:absolute;top:265px;left:243px;z-index: -10"></canvas>


<c:import url="common/commonJs.jsp" />
<script>
    var playGroupId = 2;
    $(function () {
        $(".btn-navs li").click(function () {
            if($(this).data("id") == 'shuju2'){   //显示shuju2，隐藏shuju1
                $("#box .main-li").hide();
                $("#box .qhbox_title ").removeClass("qhbox_title");
            }
            else if($(this).data("id") == 'shuju1'){  //显示shuju1，隐藏shuju2
                $("#box .main-li").show();
                $("#box .chart-nav2").parent().addClass("qhbox_title");
            }
        });

    });
    $(function () {
        $(".btn-navs li").click(function () {
            if($(this).data("id") == 'shuju3'){   //显示shuju3，隐藏shuju2
                $("#box .chart-nav2").parent().addClass("qhbox_title");
                $("#box .qhbox_title2").removeClass("qhbox_title2");
            }
            else if($(this).data("id") == 'shuju2'){  //显示shuju2，隐藏shuju3
                $("#box .chart-nav3").parent().addClass("qhbox_title2");
                $("#box .qhbox_title2").parent().addClass("qhbox_title");
            }
        });
    });
    $(function () {
        $(".btn-navs li").click(function () {
            if($(this).data("id") == 'shuju1'){     //显示shuju1，隐藏shuju3
                $("#box .main-li").show();
                $("#box .chart-nav3").parent().addClass("qhbox_title2");
            }
            else if($(this).data("id") == 'shuju3'){     //显示shuju3，隐藏shuju1
                $("#box .main-li").hide();
                $("#box .chart-nav3").removeClass("qhbox_title2");
            }
        });
    });
</script>
<script>
    $(function() {
        $(".btn-navs li").click(function(e) {
            $(".shuju").hide();
            $("#" + $(this).data("id")).show();    //data() 方法向被选元素附加数据，或者从被选元素获取数据
            $(this).attr("class", "fff").siblings().removeClass(); //attr()设置或返回被选元素的属性和值 //siblings()返回被选元素的所有同级元素
            if($(this).data("id") == 'shuju1' || $(this).data("id") == 'shuju2' || $(this).data("id") == 'shuju3') {
                if($(this).data("id") == 'shuju1'){
                    $(".search").css("display","block");
                    $(".main-ul-box li a.active").removeClass('active');
                    $(".main-ul-box .main-ul-1 li:first-child a").addClass('active');
                }
                initHuatu($(this).data("contentid"));
            } else {
                clearHuatu();
            }
        });

        $(".main-ul-box li a").click(function () {
            $(".search").css("display","block");
            $(".shuju").hide();
            var smzsStr = $(this).data("id");    //data() 方法向被选元素附加数据，或者从被选元素获取数据
            if(smzsStr == 'smzs'){
                $("#shuju6").show();
            }else if(smzsStr == 'clzs'){
                $("#shuju7").show();
                $(".search").css("display","none");
            }else if(smzsStr == 'hmzs'){
                $("#shuju1").show();
            }
            $(".main-ul-box li a.active").removeClass('active');
            $(this).addClass('active');
            if($(this).data("id") == 'hmzs') {
                initHuatu($(this).data("contentid"));
            }else if($(this).data("id") == 'smzs'){
                initHuatu('canvasHeiht');
            } else {
                clearHuatu();
            }
        });

        var type = '${param.type}';
        if(typeof type == 'undefined' || type == '' || isNaN(type)) {  //isNaN() 函数用于检查其参数是否是非数字值
            type = 1;
        } else {
            type = Tools.parseInt(type);
        }
        $("[data-id='shuju" + type + "']").trigger("click"); //trigger() 方法触发被选元素上指定的事件以及事件的默认行为
        $(".search-right .qi a").eq(0).trigger("click");  //eq() 方法返回带有被选元素的指定索引号的元素
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
                //折线下-双面走势
                zhexianSm(data);
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
        $("#checkboxZhexian").change(function() { //当元素的值发生改变时，会发生 change 事件。该事件仅适用于文本域（text field），以及 textarea 和 select 元素。hange() 函数触发 change 事件，或规定当发生 change 事件时运行的函数。
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
    var playGroupId = 2;

    function lssj(data) {
        var str = '';
        $.each(data, function(index, value) {   //each() 方法为每个匹配元素规定要运行的函数
            str += '<tr>';
            str += '<td>' + value.number + '</td>';
            str += '<td>' + dateFormat(value.openTime, 'yyyy-mm-dd hh:MM:ss') + '</td>';
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
        var subtext = "天津时时彩";
        if(data.length > 0) {
            subtext += " 第" + data[0].number + '期 ~ 第' + data[data.length - 1].number + '期';
        }
        var option = {
            title: {
                text: '天津时时彩直方图',    //主标题文本
                subtext: subtext,     //副标题文本
                x: 'center'
            },
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
                data: [],
                name: '号码'
            },
            yAxis: [{
                type: 'value',
                splitNumber: 10,
                triggerEvent: true,
                name: '出现次数'
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
        for(var i = 0; i < 10; ++i) {
            yData[i] = 0;
            option.xAxis.data.push(i);
        }
        $.each(data, function(index, value) {
            var openCode = value.openCode;
            var arr = openCode.split(",");
            for(var i = 0; i < arr.length; ++i) {
                yData[Tools.parseInt(arr[i])]++;
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
        var subtext = "天津时时彩";
        if(data.length > 0) {
            subtext += " 第" + data[0].number + '期 ~ ' + "第" + data[data.length - 1].number + '期';
        }
        var option = {
            title: {
                text: '天津时时彩K线图',
                subtext: subtext,
                x: 'center'
            },
            legend: {
                data: ['万位', '千位', '百位', '十位', '个位'],
                y: 550
            },
            xAxis: [{
                axisLabel: {
                    rotate: -60,
                    interval: 0
                },
                type: 'category',
                boundaryGap: false,
                data: []
            }],
            tooltip: {
                trigger: 'axis',
                formatter: function(params) {
                    var openCode = params[0].data.openCode;

                    var res = params[0].seriesName;
                    res += '<br/>期号：' + params[0].name;
                    res += '<br/>号码：' + params[0].data;
                    return res;
                }
            },
            yAxis: [{
                type: 'value',
                name: '号码'
            }],
            grid: {
                left: '1%',
                right: '2%',
                containLabel: true,
                y2: 120
            },
            series: [{
                name: '万位',
                type: 'line',
                data: []
            }, {
                name: '千位',
                type: 'line',
                data: []
            }, {
                name: '百位',
                type: 'line',
                data: []
            }, {
                name: '十位',
                type: 'line',
                data: []
            }, {
                name: '个位',
                type: 'line',
                data: []
            }]
        };
        $.each(data, function(index, value) {
            option.xAxis[0].data.push(value.number);

            var tmpArr = value.openCode.split(",");
            $.each(tmpArr, function(index, value) {
                var v = Tools.parseInt(value);
                option.series[index].data.push(v);
            });
        });

        myChart1.setOption(option);
    }

    function zhexian(data) {  //折线
        var str = '';
        for(var i = 0; i < data.length; i++) {
            // qihao
            str += '<div class="cl-30 clean">';
            str += '<div class="left cl-31 number">' + data[i].number.substr(2) + '</div>';
            str += '<div class="left cl-32 openCode">' + data[i].openCode + '</div>';
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
                    if(k == haoma) {
                        str += '<i data-num="' + k + '" class="' + (j % 2 == 0 ? 'bg-4' : 'bg-5') + '">';
                        str += k;
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
        $("#zhexianData").html(str); //html() 方法返回或设置被选元素的内容  //如果该方法未设置参数，则返回被选元素的当前内容

        for(var i = 0; i < data.length - 1; ++i) {
            for(var j = 0; j < 5; ++j) {
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

    function zhexianSm(data) {  //折线--双面走势
        var str = '';
        var i_w = $(".sm-head").outerWidth(); //表头单元格元素宽度
        var i_h = $(".sm-head i:eq(1)").outerHeight();


        for(var i = 0; i < data.length; i++) {
            // qihao
            str += '<div class="cl-30 clean">';
            str += '<div class="left cl-31 sm-qh number">' + data[i].number.substr(2) + '</div>';
            str += '<div class="left cl-32 sm-jh openCode">' + data[i].openCode + '</div>';
            var kjData = data[i].openCode.split(",");

            for(var j = 0; j < kjData.length; ++j) {
                var next_daXiaoStr = '';
                var next_danSStr = '';
                var next_zhiHeStr = '';
                var daXiaoStr = getDaXaioStr(kjData[j]);
                var danSStr = getDanSStr(kjData[j]);
                var zhiHeStr = getZhiHeStr(kjData[j]);

                //画板高度
                var canves_h = i_h / 2;
                var Left_sm = 0;
                var top_sm = 0;
                var canves_w = 0;
                var nextNum = 0;

                str += '<div class="cl-35 cl-36 sm-w">';
                if(i < data.length - 1) {
                    nextNum = data[i + 1].openCode.split(",")[j];
                    //备用于画板定位号码（判断下一个号码位置）
                    next_daXiaoStr = getDaXaioStr(nextNum); //计算总和的大小
                    next_danSStr = getDanSStr(nextNum);
                    next_zhiHeStr = getZhiHeStr(nextNum);
                }


                for(var k = 0; k < 6; ++k) {
                    str += '<var class="' + (j % 2 == 0 ? 'sm-bg-a' : 'sm-bg-b') + ' i_' + j + "_" + k + '">';

                    var commonStr = '';
                    var dxStr = '',dsStr = '',zhStr = '';

                    //画板宽度
                    canves_w = i_w;
                    //画面距离上边距离
                    top_sm = i_h / 4 * 3;

                    commonStr += '<canvas class="zhexian" id="smcanvas' + i + j + '" width="' + canves_w + '" height="' + canves_h + '" style="z-index: 10; left:' + Left_sm + 'px; top:' + top_sm + 'px; display: none;"></canvas>';
                    commonStr += '</i>';

                    if(k == 0 || k == 1){

                        if(daXiaoStr == '大' && k == 0){
                            if(daXiaoStr != next_daXiaoStr){
                                Left_sm = i_w * 0.4;
                            }else{
                                Left_sm = -(i_w * 0.1);
                            }
                            str += '<i data-num="' + daXiaoStr + '" class="sm-bg-1-ds">';
                            str += daXiaoStr;
                            str += '<canvas class="zhexian" id="smcanvas_dx' + i + j + '" width="' + canves_w + '" height="' + canves_h + '" style="z-index: 10; left:' + Left_sm + 'px; top:' + top_sm + 'px; display: none;"></canvas>';
                            str += '</i>';
                        }else if(daXiaoStr == '小' && k == 1){
                            if(daXiaoStr != next_daXiaoStr){
                                Left_sm = -(i_w / 4 * 2.6 + i_w * 0.1);
                            }else{
                                Left_sm = -(i_w * 0.1);
                            }
                            str += '<i data-num="' + daXiaoStr + '" class="sm-bg-1-xd">';
                            str += daXiaoStr;
                            str += '<canvas class="zhexian" id="smcanvas_dx' + i + j + '" width="' + canves_w + '" height="' + canves_h + '" style="z-index: 10; left:' + Left_sm + 'px; top:' + top_sm + 'px; display: none;"></canvas>';
                            str += '</i>';
                        }else {
                            str += '<i></i>';
                        }
                    } else if(k == 2 || k  == 3){

                        if(danSStr == '单' && k == 2){
                            if(danSStr != next_danSStr){
                                Left_sm = i_w * 0.4;
                            }else{
                                Left_sm = -(i_w * 0.1);
                            }
                            str += '<i data-num="' + danSStr + '" class="sm-bg-1-xd">';
                            str += danSStr;
                            str += '<canvas class="zhexian" id="smcanvas_ds' + i + j + '" width="' + canves_w + '" height="' + canves_h + '" style="z-index: 10; left:' + Left_sm + 'px; top:' + top_sm + 'px; display: none;"></canvas>';
                            str += '</i>';
                        }else if(danSStr == '双' && k == 3){
                            if(danSStr != next_danSStr){
                                Left_sm = -(i_w / 4 * 2.6 + i_w * 0.1);
                            }else{
                                Left_sm = -(i_w * 0.1);
                            }
                            str += '<i data-num="' + danSStr + '" class="sm-bg-1-ds">';
                            str += danSStr;
                            str += '<canvas class="zhexian" id="smcanvas_ds' + i + j + '" width="' + canves_w + '" height="' + canves_h + '" style="z-index: 10; left:' + Left_sm + 'px; top:' + top_sm + 'px; display: none;"></canvas>';
                            str += '</i>';
                        }else {
                            str += '<i></i>';
                        }
                    } else if(k == 4 || k  == 5){

                        if(zhiHeStr == '质' && k == 4){
                            if(zhiHeStr != next_zhiHeStr){
                                Left_sm = i_w * 0.4;
                            }else{
                                Left_sm = -(i_w * 0.1);
                            }
                            str += '<i data-num="' + zhiHeStr + '" class="sm-bg-3-zhi">';
                            str += zhiHeStr;
                            str += '<canvas class="zhexian" id="smcanvas_hz' + i + j + '" width="' + canves_w + '" height="' + canves_h + '" style="z-index: 10; left:' + Left_sm + 'px; top:' + top_sm + 'px; display: none;"></canvas>';
                            str += '</i>';
                        }else if(zhiHeStr == '合' && k == 5){
                            if(zhiHeStr != next_zhiHeStr){
                                Left_sm = -(i_w / 4 * 2.6 + i_w * 0.1);
                            }else{
                                Left_sm = -(i_w * 0.1);
                            }
                            str += '<i data-num="' + zhiHeStr + '" class="sm-bg-3-he">';
                            str += zhiHeStr;
                            str += '<canvas class="zhexian" id="smcanvas_hz' + i + j + '" width="' + canves_w + '" height="' + canves_h + '" style="z-index: 10; left:' + Left_sm + 'px; top:' + top_sm + 'px; display: none;"></canvas>';
                            str += '</i>';
                        }else {
                            str += '<i></i>';
                        }
                    }


                    str += '</var>';
                }

                str += '</div>';
            }


            var lhHeStr = '',zdxStr = '',zdsStr = '';
            var num1 =  parseInt(kjData[0]);
            var num2 =  parseInt(kjData[1]);
            var num3 =  parseInt(kjData[2]);
            var num4 =  parseInt(kjData[3]);
            var num5 =  parseInt(kjData[4]);

            var znum = num1 + num2 + num3 + num4 + num5;


            str += '<div class="cl-35 cl-36 sm-w sm-lh-w">';
            if(i < data.length - 1) {
                bc1 = (data[i].openCode.split(",")[j]) - (data[i + 1].openCode.split(",")[j]);
            }

            for(var k = 0; k < 7; ++k) {
                str += '<var class="sm-lh-bg i_' + j + "_" + k + ' zh">';
                if(k == 0 || k == 1 || k == 6){
                    var tempStr = '';
                    if(num1 > num5){
                        lhHeStr = '龙';
                    }else if( num1 < num5){
                        lhHeStr = '虎';
                    }else if( num1 == num5){
                        lhHeStr = '和';
                    }


                    if(lhHeStr == '龙' && k == 0){
                        str += '<i class="long" data-num="' + lhHeStr + '">';
                        str += lhHeStr;
                        str += '</i>';
                    }else if(lhHeStr == '虎' && k == 1){
                        str += '<i class="hu" data-num="' + lhHeStr + '">';
                        str += lhHeStr;
                        str += '</i>';
                    }else if(lhHeStr == '和' && k == 6){
                        str += '<i class="he" data-num="' + lhHeStr + '">';
                        str += lhHeStr;
                        str += '</i>';
                    }else {
                        str += '<i></i>';
                    }
                } else if(k == 2 || k  == 3) {
                    var tempStr = '';
                    if(znum > 22){
                        zdxStr = '总大';
                    }else{
                        zdxStr = '总小';
                    }
                    if (zdxStr == '总大' && k == 2) {
                        str += '<i class="zongda" data-num="' + zdxStr + '">';
                        str += zdxStr;
                        str += '</i>';
                    } else if (zdxStr == '总小' && k == 3) {
                        str += '<i class="zongxiao" data-num="' + zdxStr + '">';
                        str += zdxStr;
                        str += '</i>';
                    } else {
                        str += '<i></i>';
                    }
                } else if(k == 4 || k  == 5) {
                    var tempStr = '';
                    if(znum % 2 == 0){
                        zdsStr = '总双';
                    }else{
                        zdsStr = '总单';
                    }
                    if (zdsStr == '总单' && k == 4) {
                        str += '<i class="zongdan" data-num="' + zdsStr + '">';
                        str += zdsStr;
                        str += '</i>';
                    } else if (zdsStr == '总双' && k == 5) {
                        str += '<i class="zongshuang" data-num="' + zdsStr + '">';
                        str += zdsStr;
                        str += '</i>';
                    } else {
                        str += '<i></i>';
                    }
                }
                str += '</var>';
            }
            str += '</div>';
            str += '</div>';
        }

        $("#dxdshezhi").html(str); //html() 方法返回或设置被选元素的内容  //如果该方法未设置参数，则返回被选元素的当前内容


        for(var i = 0; i < data.length - 1; ++i) {
            for(var j = 0; j < 5; ++j) {

                var canvas_dx = document.getElementById("smcanvas_dx" + i + j);
                var canvas_ds = document.getElementById("smcanvas_ds" + i + j);
                var canvas_hz = document.getElementById("smcanvas_hz" + i + j);

                var context_dx = canvas_dx.getContext("2d");
                var context_ds = canvas_ds.getContext("2d");
                var context_hz = canvas_hz.getContext("2d");

                var kjData = data[i].openCode.split(",");

                var next_daXiaoStr = '';
                var next_danSStr = '';
                var next_zhiHeStr = '';
                var daXiaoStr = getDaXaioStr(kjData[j]);
                var danSStr = getDanSStr(kjData[j]);
                var zhiHeStr = getZhiHeStr(kjData[j]);

                nextNum = data[i + 1].openCode.split(",")[j];
                //备用于画板定位号码（判断下一个号码位置）
                next_daXiaoStr = getDaXaioStr(nextNum); //计算总和的大小
                next_danSStr = getDanSStr(nextNum);
                next_zhiHeStr = getZhiHeStr(nextNum);

                if(daXiaoStr == '大'){
                    if(daXiaoStr != next_daXiaoStr) {
                        context_dx.moveTo(0, 0);
                        context_dx.lineTo(canvas_dx.width, canvas_dx.height);
                    } else {
                        context_dx.moveTo(canvas_dx.width / 2, 0);
                        context_dx.lineTo(canvas_dx.width / 2, canvas_dx.height);
                    }
                }else{
                    if(daXiaoStr != next_daXiaoStr) {
                        context_dx.moveTo(canvas_dx.width, 0);
                        context_dx.lineTo(0, canvas_dx.height);
                    } else {
                        context_dx.moveTo(canvas_dx.width / 2, 0);
                        context_dx.lineTo(canvas_dx.width / 2, canvas_dx.height);
                    }
                }

                context_dx.strokeStyle = "#e70f0f";
                context_dx.stroke();

                if(danSStr == '单'){
                    if(danSStr != next_danSStr) {
                        context_ds.moveTo(0, 0);
                        context_ds.lineTo(canvas_ds.width, canvas_ds.height);
                    } else {
                        context_ds.moveTo(canvas_ds.width / 2, 0);
                        context_ds.lineTo(canvas_ds.width / 2, canvas_ds.height);
                    }
                }else{
                    if(danSStr != next_danSStr) {
                        context_ds.moveTo(canvas_ds.width, 0);
                        context_ds.lineTo(0, canvas_ds.height);
                    } else {
                        context_ds.moveTo(canvas_ds.width / 2, 0);
                        context_ds.lineTo(canvas_ds.width / 2, canvas_ds.height);
                    }
                }

                context_ds.strokeStyle = "#e70f0f";
                context_ds.stroke();


                if(zhiHeStr == '质'){
                    if(zhiHeStr != next_zhiHeStr) {
                        context_hz.moveTo(0, 0);
                        context_hz.lineTo(canvas_hz.width, canvas_hz.height);
                    } else {
                        context_hz.moveTo(canvas_hz.width / 2, 0);
                        context_hz.lineTo(canvas_hz.width / 2, canvas_hz.height);
                    }
                }else{
                    if(zhiHeStr != next_zhiHeStr) {
                        context_hz.moveTo(canvas_hz.width, 0);
                        context_hz.lineTo(0, canvas_hz.height);
                    } else {
                        context_hz.moveTo(canvas_hz.width / 2, 0);
                        context_hz.lineTo(canvas_hz.width / 2, canvas_hz.height);
                    }
                }

                context_hz.strokeStyle = "#683535";
                context_hz.stroke();
            }
        }


        if($("#checkboxZhexian").is(":checked")) {
            $(".zhexian").show();
        } else {
            $(".zhexian").hide();
        }

        // 遗漏
        renderYilou(data);

//        if($("#checkboxYlsj").is(":checked")) {
//            $(".transparent").addClass("not-transparent");
//        } else {
//            $(".transparent").removeClass("not-transparent");
//        }
    }


    function getDaXaioStr(num) {
        if(typeof num == 'undefined'){
            return;
        }

        var flagStr = '';
        var numberStr = parseInt(num);
        if($.inArray(numberStr,[0,1,2,3,4]) >= 0){
            return flagStr = '小';
        }else{
            return flagStr = '大';
        }
    }

    function getZhDaXaioStr(num) {
        if(typeof num == 'undefined'){
            return;
        }
        var flagStr = '';
        var numberStr = parseInt(num);
        console.log(numberStr);
        if(numberStr <= 22){
            return flagStr = '小';
        }else{
            return flagStr = '大';
        }
    }

    function getDanSStr(num) {
        if(typeof num == 'undefined'){
            return;
        }

        var flagStr = '';
        var numberStr = parseInt(num);
        if(numberStr % 2 == 0){
            return flagStr = '双';
        }else{
            return flagStr = '单';
        }
    }

    function getZhiHeStr(num) {
        var flagStr = '';
        var numberStr = parseInt(num);
        if($.inArray(numberStr,[1,2,3,5,7]) >= 0){
            return flagStr = '质';
        }else{
            return flagStr = '合';
        }
    }

    function renderYilou(data) {
        // 遗漏统计
        var yilou = [];
        for(var i = 0; i < 5; ++i) {
            yilou[i] = [];
            for(var j = 0; j < 10; ++j) {
                yilou[i][j] = {
                    cxCs: 0, // 出现次数
                    maxLcCs: 0, // 最大连出次数
                    ylArr: [] // 遗漏次数
                };
            }
        }

        for(var i = 0; i < 5; ++i) {
            for(var j = 0; j < 10; ++j) {
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
        for(var i = 0; i < 5; ++i) {
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
        for(var i = 0; i < 5; ++i) {
            for(var j = 0; j < 10; ++j) {
                str5 += '<tr>';
                if(j == 0) {
                    if(i == 0) {
                        str5 += '<td rowspan="10">万位</td>';
                    } else if(i == 1) {
                        str5 += '<td rowspan="10">千位</td>';
                    } else if(i == 2) {
                        str5 += '<td rowspan="10">百位</td>';
                    } else if(i == 3) {
                        str5 += '<td rowspan="10">十位</td>';
                    } else if(i == 4) {
                        str5 += '<td rowspan="10">个位</td>';
                    }
                }

                str5 += '<td>' + j + '</td>';

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
        for(var i = 0; i < 5; ++i) {
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
        for(var i = 0; i < 5; ++i) {
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