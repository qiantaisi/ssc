<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../../common/bodyStart.jsp"/>
<c:import url="../common/commonHead.jsp" />
<div class="page-group">
    <div class="page page-current" id="page-zst-jbzst">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left open-panel" data-panel='#panel-left'>
                <font>彩种切换</font>
                <span class="icon icon-top-gcdt"></span>
            </a>
            <%--<a class="yxsm" href="<%=basePath%>ssc/kjjl/bqxq.html?playGroupId=1">--%>
            <%--游戏说明--%>
            <%--</a>--%>
            <a class="button button-link pull-right open-panel" data-panel='#panel-right'>
                菜单
            </a>
            <h1 class="title">幸运飞艇</h1>
        </header>
        <div class="content cl-601 zst-cl-10">
            <div class="cl-600" id="ssc-parent-menu">
                <div class="re-cl-602">
                    <a data-name="jb" href="javascript:void(0)" class="choose">基本走势</a>
                    <%--<a data-name="sm" href="javascript:void(0)" class="sm">双面走势</a>--%>
                    <span class="goucai"><a id="blink" href="<%=basePath%>ssc/gcdt/xyft.html">立即购彩</a></span>
                    <span class="gengduo">更多期数</span>
                </div>
            </div>
            <div class="click-qishu-btns">
                <a href="javascript:void(0)" data-qishu="50">50期</a>
                <a href="javascript:void(0)" data-qishu="100">100期</a>
            </div>
            <div id="sub-menu-list">
                <div class="cl-600 cl-610 re-cl-610">
                    <div class="cl-602 index-btns">
                        <a href="javascript:void(0)" data-index="0" class="wanW active">冠军</a>
                        <a href="javascript:void(0)" data-index="1">亚军</a>
                        <a href="javascript:void(0)" data-index="2">第三名</a>
                        <a href="javascript:void(0)" data-index="3">第四名</a>
                        <a href="javascript:void(0)" data-index="4">第五名</a>
                        <a href="javascript:void(0)" data-index="5">第六名</a>
                        <a href="javascript:void(0)" data-index="6">第七名</a>
                        <a href="javascript:void(0)" data-index="7">第八名</a>
                        <a href="javascript:void(0)" data-index="8">第九名</a>
                        <a href="javascript:void(0)" data-index="9">第十名</a>
                    </div>
                </div>
            <%--<div class="cl-600" id="ssc-parent-menu">--%>
                <%--<div class="cl-602 index-btns">--%>
                    <%--<a href="javascript:void(0)" class="active" data-index="0">冠军</a>--%>
                    <%--<a href="javascript:void(0)" data-index="1">亚军</a>--%>
                    <%--<a href="javascript:void(0)" data-index="2">第三名</a>--%>
                    <%--<a href="javascript:void(0)" data-index="3">第四名</a>--%>
                    <%--<a href="javascript:void(0)" data-index="4">第五名</a>--%>
                    <%--<a href="javascript:void(0)" data-index="5">第六名</a>--%>
                    <%--<a href="javascript:void(0)" data-index="6">第七名</a>--%>
                    <%--<a href="javascript:void(0)" data-index="7">第八名</a>--%>
                    <%--<a href="javascript:void(0)" data-index="8">第九名</a>--%>
                    <%--<a href="javascript:void(0)" data-index="9">第十名</a>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div id="sub-menu-list">--%>
                <%--<div class="cl-600 cl-610">--%>
                    <%--<div class="cl-602 qishu-btns">--%>
                        <%--<a data-qishu="30" href="javascript:void(0)">30期</a>--%>
                        <%--<a data-qishu="50" href="javascript:void(0)">50期</a>--%>
                        <%--<a data-qishu="80" href="javascript:void(0)">80期</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="zst-cl-1 zst_style">
                    <div class="item">
                        <span class="">期号</span>
                        <span>1</span>
                        <span>2</span>
                        <span>3</span>
                        <span>4</span>
                        <span>5</span>
                        <span>6</span>
                        <span>7</span>
                        <span>8</span>
                        <span>9</span>
                        <span>10</span>
                    </div>
                    <div class="zst-content zst_relative">
                        <%--<script>--%>
                        <%--for (var i = 0; i < 50; ++i) {--%>
                        <%--document.write('<div class="item">\--%>
                        <%--<span class="">20120230</span>\--%>
                        <%--<span><i class="cus-on-red">3</i></span>\--%>
                        <%--<span>1</span>\--%>
                        <%--<span>2</span>\--%>
                        <%--<span>3</span>\--%>
                        <%--<span>4</span>\--%>
                        <%--<span>5</span>\--%>
                        <%--<span>6</span>\--%>
                        <%--<span>7</span>\--%>
                        <%--<span>8</span>\--%>
                        <%--<span>9</span>\--%>
                        <%--</div>');--%>
                        <%--}--%>
                        <%--</script>--%>

                    </div>
                </div>
            </div>
            <%--<c:import url="../../../common/copyright.jsp"/>--%>
        </div>
    </div>
    <c:import url="../common/leftZstPanel.jsp"/>
    <c:import url="../../../common/rightPanel.jsp"/>
</div>
<c:import url="../../../common/commonJs.jsp"/>
<script type="text/html" id="template_item">
    <div class="item">
        <span>{{number}}</span>
        {{each numArr}}
        {{if $value.flag == true}}
        <span class="jbspan jbspan_relative"><i class="cus-on-red">{{$value.num}}{{#htmlCanvas}}</i></span>
        {{else}}
        <span class="common_span">{{$value.num}}</span>
        {{/if}}
        {{/each}}
    </div>
</script>
<script type="text/html" id="template_tongji">
    <div class="item">
        <span class="">出现总次数</span>
        {{each cxzcs}}
        <span>{{$value}}</span>
        {{/each}}
    </div>
    <div class="item">
        <span class="">平均遗漏值</span>
        {{each pjylz}}
        <span>{{$value}}</span>
        {{/each}}
    </div>
    <div class="item">
        <span class="">最大遗漏值</span>
        {{each zdylz}}
        <span>{{$value}}</span>
        {{/each}}
    </div>
    <div class="item">
        <span class="">最大连出值</span>
        {{each zdlcz}}
        <span>{{$value}}</span>
        {{/each}}
    </div>
</script>
<script>
    var playGroupId = 14;

    function renderData(data) {
        var left_w = 0; //球离左边的距离
        var spanW = 0, firstSpanW = 0;
        var spanH = 0;
        firstSpanW = $(".zst_style .item span").eq(0).width(); //宽度
        spanW = $(".zst_style .item span").eq(1).width();
        spanH = $(".zst_style .item span").eq(1).height() * 2;

        var cxzcs = []; // 出现总次数
        var zdylz = []; // 最大遗漏值
        var tmpZdylz = [];   // 临时计算最大遗漏值

        var pjylz = []; // 平均遗漏值
        var tmpPjylz = []; // 临时计算平均遗漏值

        var zdlcz = []; // 最大连出值
        var tmpZdlcz = [];  // 临时计算最大连出值

        for (var j = 1; j <= 10; ++j) {
            cxzcs[j-1] = 0;

            zdylz[j-1] = 0;
            tmpZdylz[j-1] = {
                total: 0,   // 当前数
                maxTotal: 0,    // 最大数
                count: 0    // 计算次数
            };

            pjylz[j-1] = 0;
            tmpPjylz[j-1] = {
                totalYl: 0, // 遗漏总计
                count: 0    // 遗漏次数
            };

            zdlcz[j-1] = 0;
            tmpZdlcz[j-1] = {
                max: 0, // 连出最大
                count: 0    // 连出计数
            };
        }


        var dataIndex = parseInt($(".index-btns .active").attr("data-index"));
        var result = [];
        var bc1 = 0;

//        $.each(data, function (index, value) {
        for (var ii = 0; ii < data.length; ii++) {
            var num = parseInt(data[ii].openCode.split(",")[dataIndex]);
            var htmlCanvas ="";
            if( ii < data.length - 1){
                bc1 = Tools.parseInt(data[ii].openCode.split(',')[dataIndex]) - Tools.parseInt(data[ii + 1].openCode.split(',')[dataIndex]);
            }

            if (bc1 > 0) {
                bc1 = (bc1 + 1) * spanW; //获取两个球之间的宽度
                left_w = (Tools.parseInt(data[ii].openCode.split(',')[dataIndex])) * spanW + firstSpanW - bc1; //获取画板距左边的位置
            } else if (bc1 < 0) {
                bc1 = (-bc1 + 1) * spanW;
                left_w = Tools.parseInt(data[ii].openCode.split(',')[dataIndex] - 1) * spanW + firstSpanW;
            } else if (bc1 == 0) {
                bc1 = spanW;
                left_w = Tools.parseInt(data[ii].openCode.split(',')[dataIndex] - 1) * spanW + firstSpanW;
            }

            htmlCanvas = '<canvas class="mobile_zx" id="canvas'+ ii +''+ dataIndex +'" width="'+ bc1 +'px" height="'+ spanH +'px" style="z-index: 10; left:'+ left_w +'px; display: inline;"></canvas>';


            var tmpArr = [];
            for (var i = 1; i <= 10; ++i) {
                tmpArr.push({
                    num: i,
                    flag: num == i ? true : false
                });

                // 出现总次数
                if (num == i) {
                    cxzcs[i - 1]++;
                }

                // 遗漏值
                if (num == i) { // 出现
                    tmpZdylz[i-1].maxTotal = tmpZdylz[i-1].total > tmpZdylz[i-1].maxTotal ? tmpZdylz[i-1].total : tmpZdylz[i-1].maxTotal;
                    tmpZdylz[i-1].total = 0;

                    tmpZdlcz[i-1].count++;
                    tmpZdlcz[i-1].max = tmpZdlcz[i-1].count > tmpZdlcz[i-1].max ? tmpZdlcz[i-1].count : tmpZdlcz[i-1].max;
                } else {   // 遗漏
                    tmpPjylz[i-1].totalYl++;
                    if( tmpZdylz[i-1].total < 1){
                        tmpPjylz[i-1].count++; //遗漏次数
                    }

                    tmpZdylz[i-1].total++;
                    tmpZdlcz[i-1].count = 0;
                }
            }

            result.push({
                htmlCanvas: htmlCanvas,//画板标签
                number: data[ii].number.substr(2),
                numArr: tmpArr
            });
        }

        $.each(tmpZdylz, function (index, value) {
            if (cxzcs[index] > 0) {
                zdylz[index] = value.maxTotal;
            }
        });

        $.each(tmpPjylz, function (index, value) {
            if (cxzcs[index] > 0) {
                pjylz[index] = parseInt(value.totalYl / value.count);
            }
        });

        $.each(tmpZdlcz, function (index, value) {
            if (cxzcs[index] > 0) {
                zdlcz[index] = value.max;
            }
        });

        var str = '';
        $.each(result, function (index, value) {
            var html = template("template_item", value);
            str += html;
        });

        var tongjiData = {
            cxzcs: cxzcs,
            zdylz: zdylz,
            pjylz: pjylz,
            zdlcz: zdlcz
        };
        str += template("template_tongji", tongjiData);


        $(".zst-content").html(str);

        //画出相对应的折线
        for (var m = 0; m < data.length - 1; m++) {
            //设置canvas定位
            var canvas = document.getElementById("canvas" + m + "" + dataIndex + "");
            var context = canvas.getContext("2d");
            var bc1 = (data[m].openCode.split(',')[dataIndex]) - data[m + 1].openCode.split(',')[dataIndex];
            if (bc1 < 0) {
                context.moveTo(17, 13);
                context.lineTo(canvas.width - 18, canvas.height - 12);
            } else if (bc1 > 0) {
                context.moveTo(canvas.width - 16, 13);
                context.lineTo(18, canvas.height - 15);
            } else {
                context.moveTo(canvas.width / 2, canvas.height / 3);
                context.lineTo(canvas.width / 2, canvas.height / 2);
            }
            context.strokeStyle = "#F63F3F";
            context.lineWidth = 2;
            context.stroke();
        }
    }
</script>
<c:import url="../../../common/bodyEnd.jsp"/>