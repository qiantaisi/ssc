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
            <h1 class="title">重庆幸运农场-走势图</h1>
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
                            <div class="zst-cl-51 zst-cl-101" style="width:804px!important">
                                <span style="width:400px;">
                                   <var style="display:block;width:100%;">小区</var>
                                   <script>
                                        for (var i = 1; i <= 10; ++i) {
                                            document.write('<i style="width:40px!important">' + i + '</i>');
                                        }
                                   </script>
                                </span>
                                <span style="width:402px;">
                                    <var style="display:block;width:100%;">大区</var>
                                    <script>
                                        for (var i = 11; i <= 20; ++i) {
                                            document.write('<i style="width:40px!important">' + i + '</i>');
                                        }
                                    </script>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="zst-content zst-content-all">

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
                <span class="jbspan"><i class="cus-on-red">{{$value.num}}</i></span>
            {{else}}
                <span>{{$value.num}}</span>
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
    var playGroupId = 10;
    function renderData(data) {
        var cxzcs = []; // 出现总次数
        var zdylz = []; // 最大遗漏值
        var tmpZdylz = [];   // 临时计算最大遗漏值

        var pjylz = []; // 平均遗漏值
        var tmpPjylz = []; // 临时计算平均遗漏值

        var zdlcz = []; // 最大连出值
        var tmpZdlcz = [];  // 临时计算最大连出值

        for (var j = 1; j <= 20; ++j) {
            cxzcs[j-1] = 0;

            zdylz[j] = 0;
            tmpZdylz[j] = {
                total: 0,   // 当前数
                maxTotal: 0,    // 最大数
                count: 0    // 计算次数
            };

            pjylz[j] = 0;
            tmpPjylz[j] = {
                totalYl: 0, // 遗漏总计
                count: 0,    // 遗漏次数
                cx0Flag: 0 //出现标签

            };

            zdlcz[j] = 0;
            tmpZdlcz[j] = {
                total: 0, //当前数
                maxTotal: 0, // 连出最大
                count: 0    // 连出计数
            };
        }

        var strHtml = "";
        var numberArr = [];
        for (var i = 0; i < data.length; ++i) {
            var kjData = data[i].openCode.split(",");

            strHtml += '<div class="item zst-cl-102 zst-cl-102_resetH">';
            strHtml += '<span class="" style="width:80px!important;">' + data[i].number.substr(2) + '</span>';
            strHtml += '<div class="zst-cl-50">';
            strHtml += '<div class="zst-cl-51 zst-cl-101" style="width:802px!important">';

            //计算遗漏值
            var arr = [];
            //设置默认20个位初始为0
            for (var m = 1; m <= 20; m++) {
                arr[m] = 0;
            }
            //每期相对应出现号码保存1值
            for(var a = 0; a < kjData.length; a++){
                var num = parseInt(kjData[a]);
                arr[num] = 1;
            }
            //获取每期号码位置出现或遗漏的次数
            numberArr.push(arr);

            for (var n = 0; n < 20; n++) {
                strHtml += getBj(kjData, n + 1);

                // 出现总次数
                $.each(kjData, function (index, value) {
                    if (value == (n + 1)) {
                        cxzcs[n]++;
                    }
                });
            }
            strHtml += '</div></div></div>';

        }

        for(var ii = 0; ii < numberArr.length; ii++){
            for (var jj = 1; jj <= 20; jj++) {
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
                        tmpZdlcz[jj].total = tmpZdlcz[jj].count; //当前连出值
                        tmpZdlcz[jj].maxTotal = tmpZdlcz[jj].total > tmpZdlcz[jj].maxTotal ? tmpZdlcz[jj].total : tmpZdlcz[jj].maxTotal;
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



        for(var iZd = 1; iZd < tmpZdylz.length; iZd++){
            zdylz[iZd - 1] = tmpZdylz[iZd].maxTotal;
        }

        for(var iPj = 1; iPj < tmpPjylz.length; iPj++){
            pjylz[iPj - 1] = parseInt(tmpPjylz[iPj].totalYl / tmpPjylz[iPj].count);
        }

        for(var iLc = 1; iLc < tmpZdlcz.length; iLc++){
            zdlcz[iLc - 1] = tmpZdlcz[iLc].maxTotal;
        }


        var cxzcsStr = '出现总次数';
        var pjylzStr = '平均遗漏值';
        var zdylzStr = '最大遗漏值';
        var zdlczStr = '最大连出值';
        var tempStr = '';
        var tempArr = [];
        for(var h = 0; h < 4; h++){
            if(h == 0){
                tempStr = cxzcsStr;
                tempArr = cxzcs;
            }else if(h == 1){
                tempStr = pjylzStr;
                tempArr = pjylz;
            }else if(h == 2){
                tempStr = zdylzStr;
                tempArr = zdylz;
            }else if(h == 3){
                tempStr = zdlczStr;
                tempArr = zdlcz;
            }
            strHtml += '<div class="item zst-cl-102 zst-cl-102_resetH">';
            strHtml += '<span class="" style="width:80px!important">' + tempStr + '</span>';
            strHtml += '<div class="zst-cl-50">';
            strHtml += '<div class="zst-cl-51 zst-cl-101" style="width:802px!important">';
            for(var x = 0; x < 20; x++){
                strHtml += '<span class="jbspan" style="width:40px!important">' + tempArr[x] + '</span>';
            }
            strHtml += '</div></div></div>';
        }

        $(".zst-content").html(strHtml);

        resetTouchScroll();
        bindTouchScroll();

        //动态修改显示内容高度 不同屏幕下高度(大于530高度的屏幕使用--.zst-content-all {height: calc(110vh - 1.8rem - 3.2rem - 23px - 2.0rem - 2.2rem)!important;})
        var zca_H = $("#sub-menu-list").height();
        if(zca_H > 530){
            $(".zst-content-all").css('height','calc(110vh - 1.8rem - 3.2rem - 23px - 2.0rem - 2.2rem)!important');
        }
    }

    function getBj(num, wei) {
        var strHtmlbg = '';
        var strHtml_inner = "";
        if(wei > 10){
            strHtmlbg = 'daqubg';
        }else {
            strHtmlbg = 'xiaoqubg';
        }
        for(var m = 0; m < 8; m++){
            if(num[m] == wei) {
                strHtml_inner = '<span class="jbspan ' + strHtmlbg +'" style="width:40px!important"><i class="cus-on-red i_style_mar">' + wei + '</i></span>';
                break;
            }else{
                strHtml_inner = '<span class="jbspan ' + strHtmlbg +'" style="width:40px!important">' + wei + '</span>';
            }
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
        $(".zst-cl-101").unbind("touchstart").bind('touchstart',function(event){
            pageX = event.touches[0].pageX;
            pageY = event.touches[0].pageY;
        });
        $(".zst-cl-101").unbind("touchmove").bind('touchmove',function(event){
            var tmpPageX = event.touches[0].pageX;
            var tmpPageY = event.touches[0].pageY;

            var length = Math.abs(tmpPageX - pageX);
            var left = 0;
            if (tmpPageX > pageX) {
                left = parseInt($(this).css("left")) + length;
            } else if (tmpPageX < pageX) {
                left = parseInt($(this).css("left")) - length;
            } else if(tmpPageX == pageX){
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