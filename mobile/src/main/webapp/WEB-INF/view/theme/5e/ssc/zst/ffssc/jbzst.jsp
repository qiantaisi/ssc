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
<c:import url="../../../common/commonJs.jsp"/>
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
            <h1 class="title">分分时时彩</h1>
        </header>
        <div class="content cl-601 zst-cl-10">
            <div class="cl-600" id="ssc-parent-menu">
                <div class="re-cl-602">
                    <a data-name="jb" href="javascript:void(0)" class="choose">基本走势</a>
                    <a data-name="sm" href="javascript:void(0)" class="sm">双面走势</a>
                    <span class="goucai"><a id="blink" href="<%=basePath%>ssc/gcdt/ffssc.html">购彩</a></span>
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
                        <a href="javascript:void(0)" data-index="0" class="wanW active">万位</a>
                        <a href="javascript:void(0)" data-index="1">千位</a>
                        <a href="javascript:void(0)" data-index="2">百位</a>
                        <a href="javascript:void(0)" data-index="3">十位</a>
                        <a href="javascript:void(0)" data-index="4">个位</a>
                    </div>
                    <%--<div class="cl-602 qishu-btns">--%>
                    <%--<a href="javascript:void(0)" data-qishu="30">30期</a>--%>
                    <%--<a href="javascript:void(0)" data-qishu="50">50期</a>--%>
                    <%--<a href="javascript:void(0)" data-qishu="80">80期</a>'--%>
                    <%--</div>--%>
                </div>

                <div class="zst-cl-1 zst_style">
                    <div class="item">
                        <span class="">期号</span>
                        <span>0</span>
                        <span>1</span>
                        <span>2</span>
                        <span>3</span>
                        <span>4</span>
                        <span>5</span>
                        <span>6</span>
                        <span>7</span>
                        <span>8</span>
                        <span>9</span>
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
                    <div class="zst-content zst_relative_sm">

                    </div>
                </div>
            </div>

            <div id="sub-menu_sm-list" class="hide_flag">
                <div class="cl-600 cl-610 re-cl-610">
                    <div class="cl-602 index-sm-btns">
                        <a href="javascript:void(0)" data-index="0" class="wanW active">万位</a>
                        <a href="javascript:void(0)" data-index="1">千位</a>
                        <a href="javascript:void(0)" data-index="2">百位</a>
                        <a href="javascript:void(0)" data-index="3">十位</a>
                        <a href="javascript:void(0)" data-index="4">个位</a>
                        <a href="javascript:void(0)" data-index="5">总和、龙虎和</a>
                    </div>
                </div>
                <div class="zst-cl-1 zst-cl-1-dx zst_style">
                    <div class="item item-sm">
                        <span class="qihao">期号</span>
                        <span class="haoma">号码</span>
                        <span>大</span>
                        <span>小</span>
                        <span>单</span>
                        <span>双</span>
                        <span>质</span>
                        <span>合</span>
                    </div>
                    <div class="zst-content_sm zst_relative"></div>
                </div>
                <div class="zst-cl-1 zst-cl-1-lh">
                    <div class="item item-sm">
                        <span class="qihao">期号</span>
                        <span class="haoma">号码</span>
                        <span class="span-l">龙</span>
                        <span class="span-h">虎</span>
                        <span>总大</span>
                        <span>总小</span>
                        <span>总单</span>
                        <span>总双</span>
                        <span class="span-he">和</span>
                    </div>
                    <div class="zst-content_sm_lh zst_relative"></div>
                </div>
            </div>
            <%--<c:import url="../../../common/copyright.jsp"/>--%>
        </div>
    </div>
    <c:import url="../common/leftZstPanel.jsp"/>
    <c:import url="../../../common/rightPanel.jsp"/>
</div>
<%--<c:import url="../../../common/commonJs.jsp"/>--%>
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
    var playGroupId = 15;

    function renderData(data) {
        var left_w = 0; //球离左边的距离
        var spanW = 0   //宽
        var firstSpanW = 0;
        var spanH = 0;  //高
        firstSpanW = $(".zst_style .item span").eq(0).width(); //宽度
        spanW = $(".zst_style .item span").eq(1).width();  //宽度
        spanH = $(".zst_style .item span").eq(1).height() * 2;   //高度

        //数组变量存储相同类型的数据
        var cxzcs = []; // 出现总次数
        var zdylz = []; // 最大遗漏值
        var tmpZdylz = [];   // 临时计算最大遗漏值

        var pjylz = []; // 平均遗漏值
        var tmpPjylz = []; // 临时计算平均遗漏值

        var zdlcz = []; // 最大连出值
        var tmpZdlcz = [];  // 临时计算最大连出值

        for (var i = 0; i <= 9; ++i) {    //通过循环对数组进行初始化
            cxzcs[i] = 0;

            zdylz[i] = 0;
            tmpZdylz[i] = {
                total: 0,   // 当前数
                maxTotal: 0,    // 最大数
                count: 0    // 计算次数
            };

            pjylz[i] = 0;
            tmpPjylz[i] = {
                totalYl: 0, // 遗漏总计
                count: 0    // 遗漏次数
            };

            zdlcz[i] = 0;
            tmpZdlcz[i] = {
                max: 0, // 连出最大
                count: 0    // 连出计数
            };
        }


        //attr() 方法设置或返回被选元素的属性和值
        var dataIndex = parseInt($(".index-btns .active").attr("data-index"));
        var result = [];
        var bc1 = 0;

        // $.each(data, function(index, value) {   //each() 方法为每个匹配元素规定要运行的函数
        for (var ii = 0; ii < data.length; ii++) {
            //var num = parseInt(value.openCode.split(",")[dataIndex]);
            var num = parseInt(data[ii].openCode.split(",")[dataIndex]);
            var htmlCanvas = "";
            if (ii < data.length - 1) {
                bc1 = Tools.parseInt(data[ii].openCode.split(',')[dataIndex]) - Tools.parseInt(data[ii + 1].openCode.split(',')[dataIndex]);
            }

            if (bc1 > 0) {
                bc1 = (bc1 + 1) * spanW; //获取两个球之间的宽度
                left_w = (Tools.parseInt(data[ii].openCode.split(',')[dataIndex]) + 1) * spanW + firstSpanW - bc1; //获取画板距左边的位置
            } else if (bc1 < 0) {
                bc1 = (-bc1 + 1) * spanW;
                left_w = Tools.parseInt(data[ii].openCode.split(',')[dataIndex]) * spanW + firstSpanW;
            } else if (bc1 == 0) {
                bc1 = spanW;
                left_w = Tools.parseInt(data[ii].openCode.split(',')[dataIndex]) * spanW + firstSpanW;
            }

            htmlCanvas = '<canvas class="mobile_zx" id="canvas' + ii + '' + dataIndex + '" width="' + bc1 + 'px" height="' + spanH + 'px" style="z-index: 10; left:' + left_w + 'px; display: inline;"></canvas>';


            var tmpArr = [];
            for (var i = 0; i <= 9; ++i) {
                tmpArr.push({     //push() 向数组的末尾添加一个或多个元素，并返回新的长度
                    num: i,
                    flag: num == i ? true : false
                });

                // 出现总次数
                if (num == i) {
                    cxzcs[i]++;
                }

                // 遗漏值
                if (num == i) { // 出现
                    tmpZdylz[i].maxTotal = tmpZdylz[i].total > tmpZdylz[i].maxTotal ? tmpZdylz[i].total : tmpZdylz[i].maxTotal;
                    tmpZdylz[i].total = 0;

                    tmpZdlcz[i].count++;
                    tmpZdlcz[i].max = tmpZdlcz[i].count > tmpZdlcz[i].max ? tmpZdlcz[i].count : tmpZdlcz[i].max;
                } else {   // 遗漏
                    tmpPjylz[i].totalYl++;
                    if (tmpZdylz[i].total < 1) {
                        tmpPjylz[i].count++; //遗漏次数
                    }

                    tmpZdylz[i].total++;
                    tmpZdlcz[i].count = 0;
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


        $(".zst-content").html(str);   //html()设置或返回被选元素的内容

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
        //设置canvas定位
        //var canvas = document.getElementById("canvas10");
        //var context = canvas.getContext("2d");
        //context.moveTo(18, 10);
        //context.lineTo(202, 34);
        //context.strokeStyle = "#F63F3F";
        //context.stroke();


        //移动端双面走势----------------------------------------
        var sm_left_w = 0, sm_top_w = 0; //球离左边的距离
        var sm_spanW = 0, sm_spanH = 0;
        var firstSpanW = 0, twoSpanW = 0;
        var sm_str = '', dxStr = '', dsStr = '', zhStr = '';
        var sm_str_lh = '';
        var flag_canvas = '';
        var canvas_W = 0,canvas_H = 0; //临时获取元素属性

        firstSpanW = $(".zst-cl-1-dx .item-sm span").eq(0).width(); //宽度
        twoSpanW = $(".zst-cl-1-dx .item-sm span").eq(1).width(); //宽度
        sm_spanW = $(".zst-cl-1-dx .item-sm span").eq(2).width();
        sm_spanH = $(".zst-cl-1-dx .item-sm span").eq(2).height();

        canvas_W = sm_spanW;
        canvas_H = sm_spanH / 2;

        //attr() 方法设置或返回被选元素的属性和值
        var dataIndex = parseInt($(".index-sm-btns .active").attr("data-index"));

        for (var sm_i = 0; sm_i < data.length; sm_i++) {
           var kjData = data[sm_i].openCode.split(",");
            var next_daXiaoStr = '';
            var next_danSStr = '';
            var next_zhiHeStr = '';
            var daXiaoStr = getDaXaioStr(kjData[dataIndex]);
            var danSStr = getDanSStr(kjData[dataIndex]);
            var zhiHeStr = getZhiHeStr(kjData[dataIndex]);

            if(sm_i < data.length - 1) {
                var nextNum = data[sm_i + 1].openCode.split(",")[dataIndex];
                //备用于画板定位号码（判断下一个号码位置）
                next_daXiaoStr = getDaXaioStr(nextNum);
                next_danSStr = getDanSStr(nextNum);
                next_zhiHeStr = getZhiHeStr(nextNum);
            }

            //获取当前号码
            var num = parseInt(data[sm_i].openCode.split(",")[dataIndex]);
            var htmlCanvas = "";
            var sta_h, sta_m_h, end_h, rehaoma;
            var str_hm = data[sm_i].openCode.split(',').join('');

            //获取当前号码并标记为红色
            if ($.inArray(dataIndex, [0, 1, 2, 3, 4]) >= 0) {
                if (dataIndex == 0) {
                    sta_h = '<i style="color:red;">' + data[sm_i].openCode.split(',')[dataIndex] + '</i>';
                    end_h = str_hm.substr(dataIndex + 1);
                } else if (dataIndex == 4) {
                    sta_h = str_hm.substr(0, dataIndex);
                    end_h = '<i style="color:red;">' + data[sm_i].openCode.split(',')[dataIndex] + '</i>';
                } else {
                    sta_h = str_hm.substr(0, dataIndex);
                    sta_m_h = '<i style="color:red;">' + str_hm.substr(dataIndex, 1) + '</i>';
                    end_h = sta_m_h + str_hm.substr(dataIndex + 1);
                }

                rehaoma = sta_h + end_h;
            }


            sm_str += '<div class="item item-sm">';
            sm_str += '<span>' + data[sm_i].number.substr(2) + '</span>';
            sm_str += '<span class="haoma">' + rehaoma + '</span>';//号码位置
            if ($.inArray(num, [0, 1, 2, 3, 4]) >= 0) {
                dxStr = '小';
            } else {
                dxStr = '大';
            }
            if ($.inArray(num, [1, 3, 5, 7, 9]) >= 0) {
                dsStr = '单';
            } else {
                dsStr = '双';
            }
            if ($.inArray(num, [1, 2, 3, 5, 7]) >= 0) {
                zhStr = '质';
            } else {
                zhStr = '合';
            }

            for (var h = 0; h < 6; h++) {
                if(h == 0){
                    flag_canvas = 'dx';
                    if (h == 0 && dxStr == '大') {
                        if(daXiaoStr == next_daXiaoStr){
                            sm_top_w = sm_spanH / 4 * 3.0 + sm_i * sm_spanH;
                            sm_left_w = firstSpanW + twoSpanW + 'px';
                        }else{
                            sm_top_w = sm_spanH / 4 * 2.9 + sm_i * sm_spanH;
                            sm_left_w = sm_spanW / 4 * 1.6 + firstSpanW + twoSpanW + 'px';
                        }
                        sm_str += '<span><i class="jb_i jbspan bg-da">' + dxStr;
                        sm_str += getCanvasStr(sm_i,dataIndex,flag_canvas,canvas_W,canvas_H,sm_left_w,sm_top_w);
                        sm_str += '</i></span>';
                    } else {
                        sm_str += '<span></span>';
                    }
                }

                if(h == 1){
                    flag_canvas = 'dx';
                    if (h == 1 && dxStr == '小') {
                        if(daXiaoStr == next_daXiaoStr){
                            sm_top_w = sm_spanH / 4 * 3.0 + sm_i * sm_spanH;
                            sm_left_w = sm_spanW + firstSpanW + twoSpanW + 'px';
                        }else{
                            sm_top_w = sm_spanH / 4 * 2.8 + sm_i * sm_spanH;
                            sm_left_w = (sm_spanW / 4 * 1.6) + firstSpanW + twoSpanW + 'px';
                        }
                        sm_str += '<span><i class="jb_i jbspan bg-xiao">' + dxStr;
                        sm_str += getCanvasStr(sm_i,dataIndex,flag_canvas,canvas_W,canvas_H,sm_left_w,sm_top_w);
                        sm_str += '</i></span>';
                    } else {
                        sm_str += '<span></span>';
                    }
                }

                if(h == 2){
                    flag_canvas = 'ds';
                    if (h == 2 && dsStr == '单') {
                        if(danSStr == next_danSStr){
                            sm_top_w = sm_spanH / 4 * 3.0 + sm_i * sm_spanH;
                            sm_left_w = firstSpanW + twoSpanW + sm_spanW + sm_spanW / 2 + 'px';
                        }else{
                            sm_top_w = sm_spanH / 4 * 3.1 + sm_i * sm_spanH;
                            sm_left_w = sm_spanW / 4 * 1.6 + firstSpanW + twoSpanW + sm_spanW * h + 'px';
                        }
                        sm_str += '<span><i class="jb_i jbspan bg-dan">' + dsStr;
                        sm_str += getCanvasStr(sm_i,dataIndex,flag_canvas,canvas_W,canvas_H,sm_left_w,sm_top_w);
                        sm_str += '</i></span>';
                    } else {
                        sm_str += '<span></span>';
                    }
                }

                if(h == 3){
                    flag_canvas = 'ds';
                    if (h == 3 && dsStr == '双') {
                        if(danSStr == next_danSStr){
                            sm_top_w = sm_spanH / 4 * 3.0 + sm_i * sm_spanH;
                            sm_left_w = firstSpanW + twoSpanW + sm_spanW  * h + 'px';
                        }else{
                            sm_top_w = sm_spanH / 4 * 2.9 + sm_i * sm_spanH;
                            sm_left_w = sm_spanW / 4 * 1.6 + firstSpanW + twoSpanW + sm_spanW * 2 + 'px';
                        }
                        sm_str += '<span><i class="jb_i jbspan bg-shuang">' + dsStr;
                        sm_str += getCanvasStr(sm_i,dataIndex,flag_canvas,canvas_W,canvas_H,sm_left_w,sm_top_w);
                        sm_str += '</i></span>';
                    } else {
                        sm_str += '<span></span>';
                    }
                }

                if(h == 4){
                    flag_canvas = 'zh';
                    if (h == 4 && zhStr == '质') {
                        if(zhiHeStr == next_zhiHeStr){
                            sm_top_w = sm_spanH / 4 * 3.0 + sm_i * sm_spanH;
                            sm_left_w = firstSpanW + twoSpanW + sm_spanW * h + 'px';
                        }else{
                            sm_top_w = sm_spanH / 4 * 3.1 + sm_i * sm_spanH;
                            sm_left_w = sm_spanW / 4 * 1.6 + firstSpanW + twoSpanW + sm_spanW * h + 'px';
                        }
                        sm_str += '<span><i class="jb_i jbspan bg-zhi">' + zhStr;
                        sm_str += getCanvasStr(sm_i,dataIndex,flag_canvas,canvas_W,canvas_H,sm_left_w,sm_top_w);
                        sm_str += '</i></span>';
                    } else {
                        sm_str += '<span></span>';
                    }
                }

                if(h == 5){
                    flag_canvas = 'zh';
                    if (h == 5 && zhStr == '合') {
                        if(zhiHeStr == next_zhiHeStr){
                            sm_top_w = sm_spanH / 4 * 3.0 + sm_i * sm_spanH;
                            sm_left_w = firstSpanW + twoSpanW + sm_spanW * 4.96 + 'px';
                        }else{
                            sm_top_w = sm_spanH / 4 * 2.9 + sm_i * sm_spanH;
                            sm_left_w = sm_spanW / 4 * 1.6 + firstSpanW + twoSpanW + sm_spanW * 4 + 'px';
                        }
                        sm_str += '<span><i class="jb_i jbspan bg-he">' + zhStr;
                        sm_str += getCanvasStr(sm_i,dataIndex,flag_canvas,canvas_W,canvas_H,sm_left_w,sm_top_w);
                        sm_str += '</i></span>';
                    } else {
                        sm_str += '<span></span>';
                    }
                }

            }


            sm_str += '</div>'; //单双大小质合


            //双面龙虎总单、双、大、小、和
            var sm_long = '',sm_hu = '',temp_lh = '';
            var tempZdx = '', tempZds = '';
            var sm_wan = '',sm_qian = '',sm_bai = '',sm_shi = '',sm_ge = '',z_he = 0;
            sm_wan = parseInt(data[sm_i].openCode.split(',')[0]);
            sm_qian = parseInt(data[sm_i].openCode.split(',')[1]);
            sm_bai = parseInt(data[sm_i].openCode.split(',')[2]);
            sm_shi = parseInt(data[sm_i].openCode.split(',')[3]);
            sm_ge = parseInt(data[sm_i].openCode.split(',')[4]);
            z_he = sm_wan + sm_qian + sm_bai + sm_shi + sm_ge;

            sm_long = parseInt(data[sm_i].openCode.split(',')[0]);
            sm_hu = parseInt(data[sm_i].openCode.split(',')[4]);
            temp_lh = sm_long > sm_hu ? '龙' : (sm_long == sm_hu ? '和' : '虎');

            if($.inArray(z_he,[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22]) >= 0){
                tempZdx = '总小';
            }else{
                tempZdx = '总大';
            }

            if(z_he % 2 == 0){
                tempZds = '总双';
            }else{
                tempZds = '总单';
            }

            sm_str_lh += '<div class="item item-sm re-sm-item-i">';
            sm_str_lh += '<span>' + data[sm_i].number.substr(2) + '</span>'; //期号
            sm_str_lh += '<span class="haoma">' + str_hm + '</span>';//号码位置
            for(var s = 0; s < 7; s++){
                if(s == 0){
                    if (s == 0 && temp_lh == '龙') {
                        sm_str_lh += '<span class="span-jb"><i class="bg-long">' + temp_lh + '</i></span>';
                    } else {
                        sm_str_lh += '<span class="span-jb"></span>';
                    }
                }else if(s == 1){
                    if (s == 1 && temp_lh == '虎') {
                        sm_str_lh += '<span class="span-jb"><i class="bg-hu">' + temp_lh + '</i></span>';
                    } else {
                        sm_str_lh += '<span class="span-jb"></span>';
                    }
                }else if(s == 6){
                    if (s == 6 && temp_lh == '和') {
                        sm_str_lh += '<span class="span-jb"><i class="bg-hezhi">' + temp_lh + '</i></span>';
                    } else {
                        sm_str_lh += '<span class="span-jb"></span>';
                    }
                }

                if(s == 2){
                    if (s == 2 && tempZdx == '总大') {
                        sm_str_lh += '<span><i class="bg-zda">' + tempZdx + '</i></span>';
                    } else {
                        sm_str_lh += '<span></span>';
                    }
                }else if(s == 3){
                    if (s == 3 && tempZdx == '总小') {
                        sm_str_lh += '<span><i class="bg-zxiao">' + tempZdx + '</i></span>';
                    } else {
                        sm_str_lh += '<span></span>';
                    }
                }

                if(s == 4){
                    if (s == 4 && tempZds == '总单') {
                        sm_str_lh += '<span><i class="bg-zdan">' + tempZds + '</i></span>';
                    } else {
                        sm_str_lh += '<span></span>';
                    }
                }else if(s == 5){
                    if (s == 5 && tempZds == '总双') {
                        sm_str_lh += '<span><i class="bg-zshuang">' + tempZds + '</i></span>';
                    } else {
                        sm_str_lh += '<span></span>';
                    }
                }
            }

            sm_str_lh += '</div>';
        }


        $(".zst-content_sm").html(sm_str);   //html()设置或返回被选元素的内容
        $(".zst-content_sm_lh").html(sm_str_lh);   //html()设置或返回被选元素的内容

        for (var i = 0; i < data.length - 1; ++i) {
            var canvas_dx = document.getElementById("canvas" + i + dataIndex + "dx");
            var canvas_ds = document.getElementById("canvas" + i + dataIndex + "ds");
            var canvas_hz = document.getElementById("canvas" + i + dataIndex + "zh");

            var context_dx = canvas_dx.getContext("2d");
            var context_ds = canvas_ds.getContext("2d");
            var context_hz = canvas_hz.getContext("2d");

            var next_daXiaoStr = '', daXiaoStr = '';
            var next_danSstr = '', danSStr_can = '';
            var next_zhiHeStr = '',zhiHeStr = '';
            var num = '';
            var nextNum_sm = '';

            //当前号码过去大小、单双、质合标记
            num = data[i].openCode.split(",")[dataIndex];
            daXiaoStr = getDaXaioStr(num);
            danSStr_can = getDanSStr(num);
            zhiHeStr = getZhiHeStr(num);

            //获取下一期的号码过去大小、单双、质合标记
            nextNum_sm = data[i + 1].openCode.split(",")[dataIndex];
            next_daXiaoStr = getDaXaioStr(nextNum_sm);
            next_danSstr = getDanSStr(nextNum_sm);
            next_zhiHeStr = getZhiHeStr(nextNum_sm);

            if (daXiaoStr == '大') {
                if (daXiaoStr != next_daXiaoStr) {
                    context_dx.moveTo(0, 0);
                    context_dx.lineTo(canvas_dx.width, canvas_dx.height);
                } else {
                    context_dx.moveTo(canvas_dx.width / 2, 0);
                    context_dx.lineTo(canvas_dx.width / 2, canvas_dx.height);
                }
            } else {
                if (daXiaoStr != next_daXiaoStr) {
                    context_dx.moveTo(canvas_dx.width, 0);
                    context_dx.lineTo(0, canvas_dx.height);
                } else {
                    context_dx.moveTo(canvas_dx.width / 2, 0);
                    context_dx.lineTo(canvas_dx.width / 2, canvas_dx.height);
                }
            }

            context_dx.strokeStyle = "#e70f0f";
            context_dx.stroke();

            if(danSStr_can == '单'){
                if(danSStr_can != next_danSstr) {
                    context_ds.moveTo(0, 0);
                    context_ds.lineTo(canvas_ds.width, canvas_ds.height);
                } else {
                    context_ds.moveTo(canvas_ds.width, 0);
                    context_ds.lineTo(canvas_ds.width, canvas_ds.height);
                }
            }else{
                if(danSStr_can != next_danSstr) {
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

    function getCanvasStr(sm_i,dataIndex,flag_canvas,canvas_W,sm_spanH,sm_left_w,sm_top_w){
        var canvas_str = '<canvas class="mobile_zx" id="canvas' + sm_i + dataIndex + flag_canvas + '" width="' + canvas_W + 'px" height="' + sm_spanH + 'px" style="z-index: 10; left:' + sm_left_w + '; top:' + sm_top_w + 'px; display: inline;"></canvas>';
        return canvas_str;
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
</script>
<script language="javascript">
    function changeColor() {
        var color = "blue|red";
        color = color.split("|");
        document.getElementById("blink").style.color = color[parseInt(Math.random() * color.length)];
    }
    setInterval("changeColor()", 230);
</script>
<c:import url="../../../common/bodyEnd.jsp"/>