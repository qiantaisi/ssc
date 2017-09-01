<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
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
            <h1 class="title">双色球</h1>
        </header>
        <div class="content cl-601 zst-cl-10">

            <div id="sub-menu-list">
                <div class="cl-600 cl-610">
                    <div class="cl-602 qishu-btns">
                        <a data-qishu="30" href="javascript:void(0)" class="active">30期</a>
                        <a data-qishu="50" href="javascript:void(0)">50期</a>
                        <a data-qishu="80" href="javascript:void(0)">80期</a>
                    </div>
                </div>
                <div class="zst-cl-1 zst_style zst-cl-20">
                    <div class="item zst-cl-21">
                        <span class="" style="width:80px!important">期号</span>
                        <div class="zst-cl-50">
                            <var style="display:block;width:100%;height:20px;line-height:20px;text-align:center;">号码分布</var>
                            <div class="zst-cl-51 zst-cl-101" style="width:1964px!important">
                                <span style="width:1320px;">
                                    <var style="display:block;width:100%;">红球区</var>
                                </span>
                                <span style="width:644px;">
                                    <var style="display:block;width:100%;">蓝球区</var>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="zst-content zst-content-all zst_relative">

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
    var playGroupId = 12;
    function renderData(data) {
        var left_w = 0; //球离左边的距离
        var spanW = 0, firstSpanW = 0;
        var spanH = 0;
        spanW = $(".zst-cl-101 span i").eq(1).width();
        spanH = $(".zst-cl-21 span").height();
        firstSpanW = spanW * 10; //宽度


        var lanma = []; // 号码和值
        var cxzcs = []; // 出现总次数

        var zdylz = []; // 最大遗漏值
        var tmpZdylz = [];   // 临时计算最大遗漏值

        var pjylz = [];      // 平均遗漏值
        var tmpPjylz = [];   // 临时计算平均遗漏值

        var zdlcz = [];     // 最大连出值
        var tmpZdlcz = [];  // 临时计算最大连出值


        for (var jj = 0; jj < 17; jj++) {
            cxzcs[jj] = 0;

            zdylz[jj] = 0;
            tmpZdylz[jj] = {
                total: 0,   // 当前数
                maxTotal: 0,   // 最大数
                count: 0    // 计算次数
            };

            pjylz[jj] = 0;
            tmpPjylz[jj] = {
                totalYl: 0, // 遗漏总计
                count: 0,  // 遗漏次数
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

        for (var j = 0; j < 34; j++) {
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

        for (var idata = 0; idata < data.length; idata++) {
            var num = 0, hm_num = 0, count=0;
            var arr = [], hm_arr = [];
            var openCode = data[idata].openCode.split(",");

            for (var n = 1; n < 17; n++) {
                arr[n] = 0;
            }

            for (var n = 1; n < 34; n++) {
                hm_arr[n] = 0;
            }


            //计算前面六个号码出现次数
            for (var jYl = 0; jYl < openCode.length - 1; jYl++) {
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

        var strHtml = "";
        var bc1 = 0;

        //篮球号码存于数组
        for (var ii = 0; ii < data.length; ii++) {
            var kjData = data[ii].openCode.split(",");

            $.each(kjData, function (index, value) {
                if(index == kjData.length - 1){
                    lanma.push(value);
                }
            });
        }

        for (var i = 0; i < data.length; ++i) {
            var kjData = data[i].openCode.split(",");

            strHtml += '<div class="item zst-cl-102 zst-cl-102_resetH">';
            strHtml += '<span class="" style="width:80px!important">' + data[i].number + '</span>';
            strHtml += '<div class="zst-cl-50">';
            strHtml += '<div class="zst-cl-51 zst-cl-101" style="width:1962px!important">';

            if (i < data.length - 1) {
                bc1 = lanma[i] - lanma[i + 1];
            }

            for (var n = 1; n < 34; n++) {
                strHtml += getBj(kjData, n);
            }
            for (var m = 1; m < 17; m++) {
                strHtml += getHzBj(lanma[i], m);
            }
            strHtml += '</div></div></div>';
        }


        //计算遗漏平均值
        for (var ii = 0; ii < numberArr.length; ii++) {
            for (var jj = 1; jj < 17; jj++) {
                //判断是遗漏号
                if (numberArr[ii][jj] == 0) {
                    //遗漏累加
                    tmpPjylz[jj].totalYl++;
                    //遗漏计数标签
                    tmpPjylz[jj].cx0Flag++;
                    if (tmpPjylz[jj].cx0Flag == 1) {
                        tmpPjylz[jj].count++;
                    }

                    //最大遗漏计算
                    tmpZdylz[jj].count++;
                    if (ii == numberArr.length - 1) {
                        tmpZdylz[jj].total = tmpZdylz[jj].count; //当前遗漏
                        tmpZdylz[jj].maxTotal = tmpZdylz[jj].total > tmpZdylz[jj].maxTotal ? tmpZdylz[jj].total : tmpZdylz[jj].maxTotal;
                    }

                    //最大连出值
                    tmpZdlcz[jj].total = tmpZdlcz[jj].count; //当前连出值
                    tmpZdlcz[jj].maxTotal = tmpZdlcz[jj].total > tmpZdlcz[jj].maxTotal ? tmpZdlcz[jj].total : tmpZdlcz[jj].maxTotal;
                    tmpZdlcz[jj].count = 0;

                } else {
                    //如果出现计数标签归零
                    tmpPjylz[jj].cx0Flag = 0;

                    //最大遗漏计算
                    tmpZdylz[jj].total = tmpZdylz[jj].count; //当前遗漏
                    tmpZdylz[jj].maxTotal = tmpZdylz[jj].total > tmpZdylz[jj].maxTotal ? tmpZdylz[jj].total : tmpZdylz[jj].maxTotal;
                    tmpZdylz[jj].count = 0;

                    //最大连出值
                    tmpZdlcz[jj].count++;
                    //如果当前期数等于最后一期
                    if (ii == numberArr.length - 1) {
                        tmpZdlcz[jj].total = tmpZdlcz[jj].count; //当前连出值
                        tmpZdlcz[jj].maxTotal = tmpZdlcz[jj].total > tmpZdlcz[jj].maxTotal ? tmpZdlcz[jj].total : tmpZdlcz[jj].maxTotal;
                    }
                }
            }
        }


        for (var iZd = 0; iZd < tmpZdylz.length; iZd++) {
            if(cxzcs[iZd] > 0){
                zdylz[iZd] = tmpZdylz[iZd].maxTotal;
            }
        }

        for (var iPj = 0; iPj < tmpPjylz.length; iPj++) {
            if(cxzcs[iPj] > 0){
                pjylz[iPj] = parseInt(tmpPjylz[iPj].totalYl / tmpPjylz[iPj].count);
            }
        }

        for (var iLc = 0; iLc < tmpZdlcz.length; iLc++) {
            if(cxzcs[iLc] > 0){
                zdlcz[iLc] = tmpZdlcz[iLc].maxTotal;
            }
        }



        //计算平均遗漏--号码位
        //计算遗漏平均值
        for (var ii = 0; ii < hm_numberArr.length; ii++) {
            for (var jj = 1; jj < 34; jj++) {
                //判断是遗漏号
                if (hm_numberArr[ii][jj] == 0) {
                    //遗漏累加
                    hm_tmpPjylz[jj].totalYl++;
                    //遗漏计数标签
                    hm_tmpPjylz[jj].cx0Flag++;
                    if (hm_tmpPjylz[jj].cx0Flag == 1) {
                        hm_tmpPjylz[jj].count++;
                    }

                    //最大遗漏计算
                    hm_tmpZdylz[jj].count++;
                    if (ii == hm_numberArr.length - 1) {
                        hm_tmpZdylz[jj].total = hm_tmpZdylz[jj].count; //当前遗漏
                        hm_tmpZdylz[jj].maxTotal = hm_tmpZdylz[jj].total > hm_tmpZdylz[jj].maxTotal ? hm_tmpZdylz[jj].total : hm_tmpZdylz[jj].maxTotal;
                    }

                    //最大连出值
                    hm_tmpZdlcz[jj].total = hm_tmpZdlcz[jj].count; //当前连出值
                    hm_tmpZdlcz[jj].maxTotal = hm_tmpZdlcz[jj].total > hm_tmpZdlcz[jj].maxTotal ? hm_tmpZdlcz[jj].total : hm_tmpZdlcz[jj].maxTotal;
                    hm_tmpZdlcz[jj].count = 0;

                } else {
                    //如果出现计数标签归零
                    hm_tmpPjylz[jj].cx0Flag = 0;

                    //最大遗漏计算
                    hm_tmpZdylz[jj].total = hm_tmpZdylz[jj].count; //当前遗漏
                    hm_tmpZdylz[jj].maxTotal = hm_tmpZdylz[jj].total > hm_tmpZdylz[jj].maxTotal ? hm_tmpZdylz[jj].total : hm_tmpZdylz[jj].maxTotal;
                    hm_tmpZdylz[jj].count = 0;

                    //最大连出值
                    hm_tmpZdlcz[jj].count++;
                    //如果当前期数等于最后一期
                    if (ii == numberArr.length - 1) {
                        hm_tmpZdlcz[jj].total = hm_tmpZdlcz[jj].count; //当前连出值
                        hm_tmpZdlcz[jj].maxTotal = hm_tmpZdlcz[jj].total > hm_tmpZdlcz[jj].maxTotal ? hm_tmpZdlcz[jj].total : hm_tmpZdlcz[jj].maxTotal;
                    }
                }
            }
        }


        for (var iZd = 0; iZd < hm_tmpZdylz.length; iZd++) {
            if(hm_cxzcs[iZd] > 0){
                hm_zdylz[iZd] = hm_tmpZdylz[iZd].maxTotal;
            }
        }

        for (var iPj = 0; iPj < hm_tmpPjylz.length; iPj++) {
            if(hm_cxzcs[iPj] > 0){
                hm_pjylz[iPj] = parseInt(hm_tmpPjylz[iPj].totalYl / hm_tmpPjylz[iPj].count);
            }
        }

        for (var iLc = 0; iLc < hm_tmpZdlcz.length; iLc++) {
            if(hm_cxzcs[iLc] > 0){
                hm_zdlcz[iLc] = hm_tmpZdlcz[iLc].maxTotal;
            }
        }

        var cxzcsStr = '出现总次数';
        var pjylzStr = '平均遗漏值';
        var zdylzStr = '最大遗漏值';
        var zdlczStr = '最大连出值';
        var tempStr = '';
        var tempArr = [];
        var hm_tempArr = [];
        for (var h = 0; h < 4; h++) {
            if (h == 0) {
                tempStr = cxzcsStr;
                tempArr = cxzcs;
                hm_tempArr = hm_cxzcs;
            } else if (h == 1) {
                tempStr = pjylzStr;
                tempArr = pjylz;
                hm_tempArr = hm_pjylz;
            } else if (h == 2) {
                tempStr = zdylzStr;
                tempArr = zdylz;
                hm_tempArr = hm_zdylz;
            } else if (h == 3) {
                tempStr = zdlczStr;
                tempArr = zdlcz;
                hm_tempArr = hm_zdlcz;
            }
            strHtml += '<div class="item zst-cl-102 zst-cl-102_resetH">';
            strHtml += '<span class="" style="width:80px!important">' + tempStr + '</span>';
            strHtml += '<div class="zst-cl-50">';
            strHtml += '<div class="zst-cl-51 zst-cl-101" style="width:1962px!important">';
            for (var x = 1; x < 34; x++) {
                strHtml += '<span class="jbspan" style="width:40px!important">' + hm_tempArr[x] + '</span>';
            }
            for (var x_lm = 1; x_lm < 17; x_lm++) {
                strHtml += '<span class="jbspan" style="width:40px!important">' + tempArr[x_lm] + '</span>';
            }

            strHtml += '</div></div></div>';
        }

        $(".zst-content").html(strHtml);

        resetTouchScroll();
        bindTouchScroll();

        //动态修改显示内容高度 不同屏幕下高度(大于530高度的屏幕使用--.zst-content-all {height: calc(110vh - 1.8rem - 3.2rem - 23px - 2.0rem - 2.2rem)!important;})
        var zca_H = $("#sub-menu-list").height();
        if (zca_H > 530) {
            $(".zst-content-all").css('height', 'calc(110vh - 1.8rem - 3.2rem - 23px - 2.0rem - 2.2rem)!important');
        }

    }

    //获取号码分布
    function getBj(num, wei) {

        var strHtmlbg = '';
        var strHtml_inner = "";
        for (var m = 0; m < 6; m++) {
            if (num[m] == wei) {
                strHtml_inner = '<span class="jbspan ' + strHtmlbg + '" style="width:40px!important"><i class="cus-on-red i_style_mar">' + wei + '</i></span>';
                break;
            } else {
                strHtml_inner = '<span class="jbspan ' + strHtmlbg + '" style="width:40px!important">' + wei + '</span>';
            }
        }
        return strHtml_inner;
    }

    //获取和值号码分布背景
    function getHzBj(num, wei) {
        var strHtmlbg = '';
        var strHtml_inner = "";
        if (num == wei) {
            strHtml_inner = '<span class="jbspan ' + strHtmlbg + '" style="width:40px!important"><i class="cus-on-blue i_style_mar">' + wei + '</i></span>';
        } else {
            strHtml_inner = '<span class="jbspan ' + strHtmlbg + '" style="width:40px!important;">' + wei + '</span>';
        }
        return strHtml_inner;
    }

    function resetTouchScroll() {
        pageX = 0;
        pageY = 0;
        $(".zst-cl-101").css("left", "0");
    }

    var pageX = 0;
    var pageY = 0;
    function bindTouchScroll() {
        $(".zst-cl-101").unbind("touchstart").bind('touchstart', function (event) {
            pageX = event.touches[0].pageX;
            pageY = event.touches[0].pageY;
        });
        $(".zst-cl-101").unbind("touchmove").bind('touchmove', function (event) {
            var tmpPageX = event.touches[0].pageX;
            var tmpPageY = event.touches[0].pageY;

            var length = Math.abs(tmpPageX - pageX);
            var left = 0;
            if (tmpPageX > pageX) {
                left = parseInt($(this).css("left")) + length;
            } else if (tmpPageX < pageX) {
                left = parseInt($(this).css("left")) - length;
            } else if (tmpPageX == pageX) {
                left = parseInt($(this).css("left"));
            }

            var maxLength = $(this).width() - $(this).parent().width();
            if (left > 0) {
                left = 0;
            } else if (left < -1 * maxLength) {
                left = -1 * maxLength;
            }
            $(".zst-cl-101").css("left", left + "px");
            pageX = tmpPageX;
            pageY = tmpPageY;
        });
    }
</script>
<c:import url="../../../common/bodyEnd.jsp"/>