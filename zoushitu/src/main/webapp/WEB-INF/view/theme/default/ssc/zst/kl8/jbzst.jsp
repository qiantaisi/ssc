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
            <h1 class="title">北京快乐8</h1>
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
                            <var style="display:block;width:100%;height:20px;line-height:20px;text-align:center;">号码分布</var>
                            <div class="zst-cl-51 zst-cl-101" style="width:3202px!important">
                                <span style="width:3200px;height:20px;">
                                    <script>
                                        for(var i = 1; i <= 80; i++){
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

<script>
    var playGroupId = 8;
    function renderData(data) {
        var strHtml = "";
        for (var i = 0; i < data.length; ++i) {
            var kjData = data[i].openCode.split(",");

            strHtml += '<div class="item zst-cl-102 zst-cl-102_resetH">';
            strHtml += '<span class="" style="width:80px!important">' + data[i].number + '</span>';
            strHtml += '<div class="zst-cl-50">';
            strHtml += '<div class="zst-cl-51 zst-cl-101" style="width:3200px!important">';

            for (var n = 0; n < 80; n++) {
                strHtml += getBj(kjData, n + 1);
            }
            strHtml += '</div></div></div>';
        }


        $(".zst-content").html(strHtml);

        resetTouchScroll();
        bindTouchScroll();
    }

    function getBj(num, wei) {
        var strHtmlbg = '';
        var strHtml_inner = "";
        for(var m = 0; m < 20; m++){
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