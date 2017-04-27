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
                <font>彩种列表</font>
                <span class="icon icon-top-gcdt"></span>
            </a>
            <%--<a class="yxsm" href="<%=basePath%>ssc/kjjl/bqxq.html?playGroupId=1">--%>
            <%--游戏说明--%>
            <%--</a>--%>
            <a class="button button-link pull-right open-panel" data-panel='#panel-right'>
                菜单
            </a>
            <h1 class="title">香港六合彩</h1>
        </header>
        <div class="content cl-601 zst-cl-10">
            <div id="sub-menu-list">
                <div class="cl-600 cl-610">
                    <div class="cl-602 qishu-btns">
                        <a data-qishu="30" href="javascript:void(0)">30期</a>
                        <a data-qishu="50" href="javascript:void(0)">50期</a>
                        <a data-qishu="80" href="javascript:void(0)">80期</a>
                    </div>
                </div>
                <div class="zst-cl-1 zst_style zst-cl-20">
                    <div class="item zst-cl-21">
                        <span class="" style="width:80px!important">期号</span>
                        <div class="zst-cl-50">
                            <div class="zst-cl-51 zst-cl-101" style="width:646px!important">
                                <span style="width:40px!important">正码一</span>
                                <span style="width:40px!important">正码二</span>
                                <span style="width:40px!important">正码三</span>
                                <span style="width:40px!important">正码四</span>
                                <span style="width:40px!important">正码五</span>
                                <span style="width:40px!important">正码六</span>
                                <span style="width:40px!important">特码</span>
                                <span style="width:161px;">
                                    <var style="display:block;width:100%;">总和</var>
                                    <i style="width:40px!important">总数</i>
                                    <i style="width:40px!important">总双</i>
                                    <i style="width:40px!important">大小</i>
                                    <i style="width:40px!important">七色波</i>
                                </span>
                                <span style="width:205px;">
                                    <var style="display:block;width:100%;">特码</var>
                                    <i style="width:40px!important">单双</i>
                                    <i style="width:41px!important">大小</i>
                                    <i style="width:41px!important">合单双</i>
                                    <i style="width:41px!important">合大小</i>
                                    <i style="width:41px!important">大小尾</i>
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
<script>
    var playGroupId = 6;
    function renderData(data) {
        var strHtml = "";

        for (var i = 0; i < data.length; ++i) {
            var kjData = data[i].openCode.split(",");
            var sum = 0;
            var boseArr = [0, 0, 0];

            $.each(kjData, function(index, value) {
                sum += Tools.parseInt(value);
                boseArr[getBose(value)]++;
            });
            var maxBose = 0;
            var maxValue = 0;
            $.each(boseArr, function(index, value) {
                if(value > maxValue) {
                    maxValue = value;
                    maxBose = index;
                }
            });
            if(maxBose == 0) {
                maxBose = '<font class="color-red">红波</font>';
            } else if(maxBose == 1) {
                maxBose = '<font class="color-blue">蓝波</font>';
            } else if(maxBose == 2) {
                maxBose = '<font class="color-green">绿波</font>';
            }

            strHtml += '<div class="item zst-cl-102">';
            strHtml += '<span class="zst-cl-102_span" style="width:80px!important">' + data[i].number.substr(2) + '</span>';
            strHtml += '<div class="zst-cl-50">';
            strHtml += '<div class="zst-cl-51 zst-cl-101" style="width:646px!important">';
            for(var ii = 0; ii < 7; ii++){
                strHtml += getBj(kjData[ii]);
            }
            strHtml += '<span class="zst-cl-102_span" style="width:40px!important">' + sum + '</span>';
            strHtml += '<span class="zst-cl-102_span" style="width:40px!important">'+ (sum % 2 == 0 ? '总和双' : '总和单') + '</span>';
            strHtml += '<span class="zst-cl-102_span" style="width:40px!important">'+ (sum >= 175 ? '总和大' : '总和小') + '</span>';
            strHtml += '<span class="zst-cl-102_span" style="width:40px!important">'+ maxBose + '</span>';
            var tm = Tools.parseInt(kjData[6]);
            strHtml += '<span class="zst-cl-102_span" style="width:40px!important">' + (tm % 2 == 0 ? '<font class="color-red">双</font>' : '<font>单</font>') + '</span>';
            strHtml += '<span class="zst-cl-102_span" style="width:40px!important">' + (tm >= 25 ? (tm != 49 ? '<font class="color-red">大</font>' : '和') : '<font>小</font>') + '</span>';
            strHtml += '<span class="zst-cl-102_span" style="width:40px!important">' + ((Math.floor(tm / 10) + tm % 10) % 2 == 0 ? '<font class="color-red">合双</font>' : '<font>合单</font>') + '</span>';
            strHtml += '<span class="zst-cl-102_span" style="width:40px!important">' + (tm == 49 ? '和' : ((Math.floor(tm / 10) + tm % 10) >= 7 ? '<font class="color-red">合大</font>' : '<font>合小</font>')) + '</span>';
            strHtml += '<span class="zst-cl-102_span" style="width:40px!important">' + (tm == 49 ? '和' : (tm % 10 >= 5 ? '<font class="color-red">尾大</font>' : '<font>尾小</font>')) + '</span></div></div>';
            strHtml += '</div>';
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

    function getBj(num) {
        var strClass = '';
        var h = getBose(num);
        if(h == 0){
            strClass = 'cus-on-red';
        }else if(h == 1){
            strClass = 'cus-on-blue';
        }else{
            strClass = 'cus-on-green';
        }
        strHtml = '<span class="jbspan" style="width:40px!important"><i class="'+ strClass +'">' + num + '</i><span class="sxName">'  + getSxName(num) +'</span></span>';
        return strHtml;
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
            } else if (tmpPageX < pageX){
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