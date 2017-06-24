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
<div class="x_wrap">
    <div class="x_1 gfwf-title">
        <span>五星-直选复式</span>
    </div>
    <div class="x_2">
        <span><img src="${resPath}img/ico22.png"/></span>
    </div>
    <div class="x_3">
        <span>直选方式
            <div class="gfwf_triangle_down2">
                <%--画出一个向下的三角形图标--%>
            </div>
        </span>
    </div>
</div>

<div class="gfwf_xz gfwf_wh">
    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">定位胆</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_dwd" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dwd/zxfs.html"
           data-name="定位胆-直选复式">
            <span class="staer1">直选复式</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">五星</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer wx-select">
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_5xzxfs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/wx/wx.html"
           data-name="五星-直选复式">
            <span class="zxfs">直选复式</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">四星</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_4xzxfs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/sx/sx.html"
           data-name="四星-直选复式">
            <span class="staer1">直选复式</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">后三</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h3zxfs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxfs.html"
           data-name="后三-直选复式">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h3zxhz" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxhz.html"
           data-name="后三-直选和值">
            <span class="staer1">直选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h3zxkd" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxkd.html"
           data-name="后三-直选跨度">
            <span class="staer1">直选跨度</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h3zh"v data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/hszh.html"
           data-name="后三-后三组合">
            <span class="staer1">后三组合</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h3z3fs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zsfs.html"
           data-name="后三-组三复式">
            <span class="staer1">组三复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h3z6fs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zlfs.html"
           data-name="后三-组六复式">
            <span class="staer1">组六复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h3zuxhz" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zuxhz.html"
           data-name="后三-组选和值">
            <span class="staer1">组选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h3zuxbd" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxbd.html"
           data-name="后三-组选包胆">
            <span class="staer1">组选包胆</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h3hzws" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/hzws.html"
           data-name="后三-和值尾数">
            <span class="staer1">和值尾数</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h3tsh" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/tsh.html"
           data-name="后三-特殊号">
            <span class="staer1">特殊号</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">前三</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q3zxfs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxfs.html"
           data-name="前三-直选复式">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q3zxhz" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxhz.html"
           data-name="前三-直选和值">
            <span class="staer1">直选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q3zxkd" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxkd.html"
           data-name="前三-直选跨度">
            <span class="staer1">直选跨度</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q3zh" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/hszh.html"
           data-name="前三-后三组合">
            <span class="staer1">前三组合</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q3z3fs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zsfs.html"
           data-name="前三-组三复式">
            <span class="staer1">组三复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q3z6fs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zlfs.html"
           data-name="前三-组六复式">
            <span class="staer1">组六复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q3zuxhz" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zuxhz.html"
           data-name="前三-组选和值">
            <span class="staer1">组选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q3zuxbd" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxbd.html"
           data-name="前三-组选包胆">
            <span class="staer1">组选包胆</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q3hzws" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/hzws.html"
           data-name="前三-和值尾数">
            <span class="staer1">和值尾数</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q3tsh" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/tsh.html"
           data-name="前三-特殊号">
            <span class="staer1">特殊号</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">前二</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q2zxfs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zxfs.html"
           data-name="前二-直选复式">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q2zxhz" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zxhz.html"
           data-name="前二-直选和值">
            <span class="staer1">直选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q2zxkd" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zxkd.html"
           data-name="前二-直选跨度">
            <span class="staer1">直选跨度</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q2zuxfs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zuxfs.html"
           data-name="前二-组选复式">
            <span class="staer1">组选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q2zxhz" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zuxhz.html"
           data-name="前二-直选和值">
            <span class="staer1">组选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q2zuxbd" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zuxbd.html"
           data-name="前二 -组选包胆">
            <span class="staer1">组选包胆</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">不定位</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_qsym" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsym.html"
           data-name="不定位-前三一码">
            <span class="staer1">前三一码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_qsem" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsem.html"
           data-name="不定位-前三二码">
            <span class="staer1">前三二码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_hsym" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsym.html"
           data-name="不定位-后三一码">
            <span class="staer1">后三一码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_hsem" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsem.html"
           data-name="不定位-后三二码">
            <span class="staer1">后三二码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q4ym" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsiym.html"
           data-name="不定位-前四一码">
            <span class="staer1">前四一码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q4em" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsiem.html"
           data-name="不定位-前四二码">
            <span class="staer1">前四二码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h4ym" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsiym.html"
           data-name="不定位-后四一码">
            <span class="staer1">后四一码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h4em" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsiem.html"
           data-name="不定位-后四二码">
            <span class="staer1">后四二码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_wxym" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/wxym.html"
           data-name="不定位-五星一码">
            <span class="staer1">五星一码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_wxem" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/wxem.html"
           data-name="不定位-五星二码">
            <span class="staer1">五星二码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_wx3m" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/wxsm.html"
           data-name="不定位-五星三码">
            <span class="staer1">五星三码</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">大小单双</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q2dxds" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/qedxds.html"
           data-name="大小单双-前二大小单双">
            <span class="staer1">前二大小单双</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h2dxds" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/hedxds.html"
           data-name="大小单双-后二大小单双">
            <span class="staer1">后二大小单双</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_q3dxds" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/qsdxds.html"
           data-name="大小单双-前三大小单双">
            <span class="staer1">前三大小单双</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_h3dxds" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/hsdxds.html"
           data-name="大小单双-后三大小单双">
            <span class="staer1">后三大小单双</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">任选二</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx2zxfs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zxfs.html"
           data-name="任选二-直选复式">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx2zxhz" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zxhz.html"
           data-name="任选二-直选和值">
            <span class="staer1">直选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx2zuxfs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zuxfs.html"
           data-name="任选二-组选复式">
            <span class="staer1">组选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx2zuxhz" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zuxhz.html"
           data-name="任选二-组选和值 ">
            <span class="staer1">组选和值</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">任选三</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx3zxfs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zxfs.html"
           data-name="任选三-直选复式">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx3zxhz" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zxhz.html"
           data-name="任选三-直选和值">
            <span class="staer1">直选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx3z3fs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zusfs.html"
           data-name="任选三-组三复式">
            <span class="staer1">组三复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx3z6fs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zulfs.html"
           data-name="任选三-组六复式">
            <span class="staer1">组六复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx3zuxhz" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zuxhz.html"
           data-name="任选三-组选和值">
            <span class="staer1">组选和值</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">任选四</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx4zxfs" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zxfs.html"
           data-name="任选四-直选复式">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx4zu24" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx24.html"
           data-name="任选四-组选24">
            <span class="staer1">组选24</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx4zu12" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx12.html"
           data-name="任选四-组选12">
            <span class="staer1">组选12</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx4zu6" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx6.html"
           data-name="任选四-组选6">
            <span class="staer1">组选6</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-fun_zhushu="zhushu_rx4zu4" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx4.html"
           data-name="任选四-组选4">
            <span class="staer1">组选4</span>
        </a>
    </div>
</div>

<div class="gfwf_mask2 Hide_Show2">
    <%--蒙版--%>
</div>