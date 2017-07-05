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
        <span></span>
    </div>
    <div class="x_2">
        <span><img src="${resPath}img/ico22.png"/></span>
    </div>
    <div class="x_3 gfwf-playName">
        <span>
            <font></font>
            <div class="gfwf_triangle_down2">
                <%--画出一个向下的三角形图标--%>
            </div>
        </span>
    </div>
</div>

<div class="gfwf_xz gfwf_wh">
    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2" id="gfwf_playGroupName"></div>
        <div class="xuan1"></div>
    </div>
    <div class="staer wx-select2">
        <a href="javascript:void(0)" data-name="dwd"><span>定位胆</span></a>
        <a href="javascript:void(0)" data-name="5x"><span>五星</span></a>
        <a href="javascript:void(0)" data-name="4x"><span>四星</span></a>
        <a href="javascript:void(0)" data-name="h3"><span>后三</span></a>
        <a href="javascript:void(0)" data-name="q3"><span>前三</span></a>
        <a href="javascript:void(0)" data-name="q2"><span>前二</span></a>
        <a href="javascript:void(0)" data-name="bdw"><span>不定位</span></a>
        <a href="javascript:void(0)" data-name="dxds"><span>大小单双</span></a>
        <a href="javascript:void(0)" data-name="rx2"><span>任选二</span></a>
        <a href="javascript:void(0)" data-name="rx3"><span>任选三</span></a>
        <a href="javascript:void(0)" data-name="rx4"><span>任选四</span></a>
    </div>
    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2" id="gfwf_playName"></div>
        <div class="xuan1"></div>
    </div>
    <div class="staer wx-select restaer">
        <div class="hide" id="playGroup_dwd">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_dwd"
               data-fun_content="content_dwd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dwd/zxfs.html"
               data-play_id="543"
               data-play_pl_id="14261"
               data-name="直选复式">
                <span>直选复式</span>
            </a>
        </div>
        <div class="hide" id="playGroup_5x">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_5xzxfs"
               data-fun_zhushu="zhushu_5xzxfs"
               data-fun_content="content_5xzxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/wx/wx.html"
               data-play_id="497"
               data-play_pl_id="14207"
               data-name="直选复式">
                <span class="zxfs">直选复式</span>
            </a>
        </div>
        <div class="hide" id="playGroup_4x">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_4xzxfs"
               data-fun_content="content_4xzxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/sx/sx.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
        </div>
        <div class="hide" id="playGroup_h3">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3zxfs"
               data-fun_content="content_h3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxfs.html"
               data-play_id="502"
               data-play_pl_id="14221"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3zxhz"
               data-fun_content="content_h3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxhz.html"
               data-play_id="505"
               data-play_pl_id="14216"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3zxkd"
               data-fun_content="content_h3zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxkd.html"
               data-play_id="506"
               data-play_pl_id="14215"
               data-name="直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3zh"
               data-fun_content="content_h3zh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/hszh.html"
               data-play_id="504"
               data-play_pl_id="14217|14218|14219"
               data-name="后三组合">
                <span class="staer1">后三组合</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3z3fs"
               data-fun_content="content_h3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zsfs.html"
               data-play_id="507"
               data-play_pl_id="14214"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3z6fs"
               data-fun_content="content_h3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zlfs.html"
               data-play_id="509"
               data-play_pl_id="14212"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3zuxhz"
               data-fun_content="content_h3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zuxhz.html"
               data-play_id="512"
               data-play_pl_id="14229|14230"
               data-name="组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3zuxbd"
               data-fun_content="content_h3zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxbd.html"
               data-play_id="513"
               data-play_pl_id="14227|14228"
               data-name="组选包胆">
                <span class="staer1">组选包胆</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3hzws"
               data-fun_content="content_h3hzws"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/hzws.html"
               data-play_id="514"
               data-play_pl_id="14226"
               data-name="和值尾数">
                <span class="staer1">和值尾数</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3tsh"
               data-fun_content="content_h3tsh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/tsh.html"
               data-play_id="515"
               data-play_pl_id="14223|14224|14225"
               data-name="特殊号">
                <span class="staer1">特殊号</span>
            </a>
        </div>
        <div class="hide" id="playGroup_q3">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3zxfs"
               data-fun_content="content_q3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxfs.html"
               data-play_id="516"
               data-play_pl_id="14222"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3zxhz"
               data-fun_content="content_q3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxhz.html"
               data-play_id="519"
               data-play_pl_id="14237"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3zxkd"
               data-fun_content="content_q3zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxkd.html"
               data-play_id="520"
               data-play_pl_id="14238"
               data-name="直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3zh"
               data-fun_content="content_q3zh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/qszh.html"
               data-play_id="518"
               data-play_pl_id="14234|14235|14236"
               data-name="后三组合">
                <span class="staer1">前三组合</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3z3fs"
               data-fun_content="content_q3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zsfs.html"
               data-play_id="521"
               data-play_pl_id="14239"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3z6fs"
               data-fun_content="content_q3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zlfs.html"
               data-play_id="523"
               data-play_pl_id="14241"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3zuxhz"
               data-fun_content="content_q3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zuxhz.html"
               data-play_id="528"
               data-play_pl_id="14246"
               data-name="组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3zuxbd"
               data-fun_content="content_q3zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxbd.html"
               data-play_id="529"
               data-play_pl_id="14247"
               data-name="组选包胆">
                <span class="staer1">组选包胆</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3hzws"
               data-fun_content="content_q3hzws"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/hzws.html"
               data-play_id="531"
               data-play_pl_id="14249"
               data-name="和值尾数">
                <span class="staer1">和值尾数</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3tsh"
               data-fun_content="content_q3tsh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/tsh.html"
               data-play_id="534"
               data-play_pl_id="14250|14251|14252"
               data-name="特殊号">
                <span class="staer1">特殊号</span>
            </a>
        </div>
        <div class="hide" id="playGroup_q2">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q2zxfs"
               data-fun_content="content_q2zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zxfs.html"
               data-play_id="535"
               data-play_pl_id="14253"
               data-name="前二-直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q2zxhz"
               data-fun_content="content_q2zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zxhz.html"
               data-play_id="537"
               data-play_pl_id="14255"
               data-name="前二-直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q2zxkd"
               data-fun_content="content_q2zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zxkd.html"
               data-play_id="538"
               data-play_pl_id="14256"
               data-name="前二-直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q2zuxfs"
               data-fun_content="content_q2zuxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zuxfs.html"
               data-play_id="539"
               data-play_pl_id="14257"
               data-name="前二-组选复式">
                <span class="staer1">组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q2zuxhz"
               data-fun_content="content_q2zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zuxhz.html"
               data-play_id="541"
               data-play_pl_id="14259"
               data-name="前二-组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q2zuxbd"
               data-fun_content="content_q2zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zuxbd.html"
               data-play_id="542"
               data-play_pl_id="14260"
               data-name="前二-组选包胆">
                <span class="staer1">组选包胆</span>
            </a>
        </div>
        <div class="hide" id="playGroup_bdw">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3ym"
               data-fun_content="content_q3ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsym.html"
               data-play_id="544"
               data-play_pl_id="14262"
               data-name="前三一码">
                <span class="staer1">前三一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3em"
               data-fun_content="content_q3em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsem.html"
               data-play_id="545"
               data-play_pl_id="14263"
               data-name="前三二码">
                <span class="staer1">前三二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3ym"
               data-fun_content="content_h3ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsym.html"
               data-play_id="546"
               data-play_pl_id="14264"
               data-name="后三一码">
                <span class="staer1">后三一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3em"
               data-fun_content="content_h3em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsem.html"
               data-play_id="547"
               data-play_pl_id="14265"
               data-name="后三二码">
                <span class="staer1">后三二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q4ym"
               data-fun_content="content_q4ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsiym.html"
               data-play_id="548"
               data-play_pl_id="14266"
               data-name="前四一码">
                <span class="staer1">前四一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q4em"
               data-fun_content="content_q4em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsiem.html"
               data-play_id="549"
               data-play_pl_id="14267"
               data-name="前四二码">
                <span class="staer1">前四二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h4ym"
               data-fun_content="content_h4ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsiym.html"
               data-play_id="550"
               data-play_pl_id="14268"
               data-name="后四一码">
                <span class="staer1">后四一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h4em"
               data-fun_content="content_h4em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsiem.html"
               data-play_id="551"
               data-play_pl_id="14269"
               data-name="后四二码">
                <span class="staer1">后四二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_wxym"
               data-fun_content="content_wxym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/wxym.html"
               data-play_id="552"
               data-play_pl_id="14270"
               data-name="五星一码">
                <span class="staer1">五星一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_wxem"
               data-fun_content="content_wxem"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/wxem.html"
               data-play_id="553"
               data-play_pl_id="14271"
               data-name="五星二码">
                <span class="staer1">五星二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_wx3m"
               data-fun_content="content_wx3m"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/wxsm.html"
               data-play_id="554"
               data-play_pl_id="14272"
               data-name="五星三码">
                <span class="staer1">五星三码</span>
            </a>
        </div>
        <div class="hide" id="playGroup_dxds">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q2dxds"
               data-fun_content="content_q2dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/qedxds.html"
               data-play_id="555"
               data-play_pl_id="14273"
               data-name="前二大小单双">
                <span class="staer1">前二大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h2dxds"
               data-fun_content="content_h2dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/hedxds.html"
               data-play_id="556"
               data-play_pl_id="14274"
               data-name="后二大小单双">
                <span class="staer1">后二大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_q3dxds"
               data-fun_content="content_q3dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/qsdxds.html"
               data-play_id="557"
               data-play_pl_id="14275"
               data-name="前三大小单双">
                <span class="staer1">前三大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_h3dxds"
               data-fun_content="content_h3dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/hsdxds.html"
               data-play_id="558"
               data-play_pl_id="14276"
               data-name="后三大小单双">
                <span class="staer1">后三大小单双</span>
            </a>
        </div>
        <div class="hide" id="playGroup_rx2">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx2zxfs"
               data-fun_content="content_rx2zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zxfs.html"
               data-play_id="559"
               data-play_pl_id="14277"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx2zxhz"
               data-fun_content="content_rx2zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zxhz.html"
               data-play_id="561"
               data-play_pl_id="14279"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx2zuxfs"
               data-fun_content="content_rx2zuxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zuxfs.html"
               data-play_id="562"
               data-play_pl_id="14280"
               data-name="组选复式">
                <span class="staer1">组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx2zuxhz"
               data-fun_content="content_rx2zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zuxhz.html"
               data-play_id="564"
               data-play_pl_id="14282"
               data-name="组选和值 ">
                <span class="staer1">组选和值</span>
            </a>
        </div>
        <div class="hide" id="playGroup_rx3">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx3zxfs"
               data-fun_content="content_rx3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zxfs.html"
               data-play_id="565"
               data-play_pl_id="14283"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx3zxhz"
               data-fun_content="content_rx3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zxhz.html"
               data-play_id="567"
               data-play_pl_id="14285"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx3z3fs"
               data-fun_content="content_rx3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zusfs.html"
               data-play_id="568"
               data-play_pl_id="14286"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx3z6fs"
               data-fun_content="content_rx3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zulfs.html"
               data-play_id="570"
               data-play_pl_id="14288"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx3zuxhz"
               data-fun_content="content_rx3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zuxhz.html"
               data-play_id="573"
               data-play_pl_id="14292|14293"
               data-name="组选和值">
                <span class="staer1">组选和值</span>
            </a>
        </div>
        <div class="hide" id="playGroup_rx4">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx4zxfs"
               data-fun_content="content_rx4zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zxfs.html"
               data-play_id="574"
               data-play_pl_id="14294"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx4zu24"
               data-fun_content="content_rx4zu24"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx24.html"
               data-play_id="576"
               data-play_pl_id="14296"
               data-name="组选24">
                <span class="staer1">组选24</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx4zu12"
               data-fun_content="content_rx4zu12"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx12.html"
               data-play_id="577"
               data-play_pl_id="14297"
               data-name="组选12">
                <span class="staer1">组选12</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx4zu6"
               data-fun_content="content_rx4zu6"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx6.html"
               data-play_id="578"
               data-play_pl_id="14298"
               data-name="组选6">
                <span class="staer1">组选6</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_zhushu="zhushu_rx4zu4"
               data-fun_content="content_rx4zu4"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx4.html"
               data-play_id="579"
               data-play_pl_id="14299"
               data-name="组选4">
                <span class="staer1">组选4</span>
            </a>
        </div>
    </div>
</div>

<div class="gfwf_mask2 Hide_Show2">
    <%--蒙版--%>
</div>