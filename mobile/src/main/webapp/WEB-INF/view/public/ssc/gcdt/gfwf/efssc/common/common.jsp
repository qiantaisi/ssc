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
    <div class="xuan yixuan">
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
               data-fun_random="random_dwd"
               data-fun_zhushu="zhushu_dwd"
               data-fun_content="content_dwd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/dwd/zxfs.html"
               data-play_id="955"
               data-play_pl_id="14752"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
        </div>
        <div class="hide" id="playGroup_5x">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_5xzxfs"
               data-fun_zhushu="zhushu_5xzxfs"
               data-fun_content="content_5xzxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/wx/wx.html"
               data-play_id="891"
               data-play_pl_id="14672"
               data-name="直选复式">
                <span class="zxfs">直选复式</span>
            </a>
        </div>
        <div class="hide" id="playGroup_4x">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_4xzxfs"
               data-fun_zhushu="zhushu_4xzxfs"
               data-fun_content="content_4xzxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/sx/sx.html"
               data-play_id="950"
               data-play_pl_id="14747"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
        </div>
        <div class="hide" id="playGroup_h3">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zxfs"
               data-fun_zhushu="zhushu_h3zxfs"
               data-fun_content="content_h3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/hs/zxfs.html"
               data-play_id="939"
               data-play_pl_id="14731"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zxhz"
               data-fun_zhushu="zhushu_h3zxhz"
               data-fun_content="content_h3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/hs/zxhz.html"
               data-play_id="938"
               data-play_pl_id="14730"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zxkd"
               data-fun_zhushu="zhushu_h3zxkd"
               data-fun_content="content_h3zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/hs/zxkd.html"
               data-play_id="941"
               data-play_pl_id="14735"
               data-name="直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zh"
               data-fun_zhushu="zhushu_h3zh"
               data-fun_content="content_h3zh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/hs/hszh.html"
               data-play_id="940"
               data-play_pl_id="14732|14733|14734"
               data-name="后三组合">
                <span class="staer1">后三组合</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3z3fs"
               data-fun_zhushu="zhushu_h3z3fs"
               data-fun_content="content_h3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/hs/zsfs.html"
               data-play_id="944"
               data-play_pl_id="14739"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3z6fs"
               data-fun_zhushu="zhushu_h3z6fs"
               data-fun_content="content_h3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/hs/zlfs.html"
               data-play_id="946"
               data-play_pl_id="14741"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zuxhz"
               data-fun_zhushu="zhushu_h3zuxhz"
               data-fun_content="content_h3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/hs/zuxhz.html"
               data-play_id="948"
               data-play_pl_id="14745|14744"
               data-name="组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zuxbd"
               data-fun_zhushu="zhushu_h3zuxbd"
               data-fun_content="content_h3zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/hs/zxbd.html"
               data-play_id="947"
               data-play_pl_id="14743|14742"
               data-name="组选包胆">
                <span class="staer1">组选包胆</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3hzws"
               data-fun_zhushu="zhushu_h3hzws"
               data-fun_content="content_h3hzws"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/hs/hzws.html"
               data-play_id="935"
               data-play_pl_id="14725"
               data-name="和值尾数">
                <span class="staer1">和值尾数</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3tsh"
               data-fun_zhushu="zhushu_h3tsh"
               data-fun_content="content_h3tsh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/hs/tsh.html"
               data-play_id="936"
               data-play_pl_id="14728|14727|14726"
               data-name="特殊号">
                <span class="staer1">特殊号</span>
            </a>
        </div>
        <div class="hide" id="playGroup_q3">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zxfs"
               data-fun_zhushu="zhushu_q3zxfs"
               data-fun_content="content_q3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qs/zxfs.html"
               data-play_id="917"
               data-play_pl_id="14702"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zxhz"
               data-fun_zhushu="zhushu_q3zxhz"
               data-fun_content="content_q3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qs/zxhz.html"
               data-play_id="916"
               data-play_pl_id="14701"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zxkd"
               data-fun_zhushu="zhushu_q3zxkd"
               data-fun_content="content_q3zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qs/zxkd.html"
               data-play_id="919"
               data-play_pl_id="14706"
               data-name="直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zh"
               data-fun_zhushu="zhushu_q3zh"
               data-fun_content="content_q3zh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qs/qszh.html"
               data-play_id="918"
               data-play_pl_id="14703|14704|14705"
               data-name="前三组合">
                <span class="staer1">前三组合</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3z3fs"
               data-fun_zhushu="zhushu_q3z3fs"
               data-fun_content="content_q3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qs/zsfs.html"
               data-play_id="922"
               data-play_pl_id="14710"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3z6fs"
               data-fun_zhushu="zhushu_q3z6fs"
               data-fun_content="content_q3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qs/zlfs.html"
               data-play_id="924"
               data-play_pl_id="14712"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zuxhz"
               data-fun_zhushu="zhushu_q3zuxhz"
               data-fun_content="content_q3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qs/zuxhz.html"
               data-play_id="926"
               data-play_pl_id="14715|14716"
               data-name="组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zuxbd"
               data-fun_zhushu="zhushu_q3zuxbd"
               data-fun_content="content_q3zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qs/zxbd.html"
               data-play_id="925"
               data-play_pl_id="14713||14714"
               data-name="组选包胆">
                <span class="staer1">组选包胆</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3hzws"
               data-fun_zhushu="zhushu_q3hzws"
               data-fun_content="content_q3hzws"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qs/hzws.html"
               data-play_id="913"
               data-play_pl_id="14696"
               data-name="和值尾数">
                <span class="staer1">和值尾数</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3tsh"
               data-fun_zhushu="zhushu_q3tsh"
               data-fun_content="content_q3tsh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qs/tsh.html"
               data-play_id="914"
               data-play_pl_id="14697|14698|14699"
               data-name="特殊号">
                <span class="staer1">特殊号</span>
            </a>
        </div>
        <div class="hide" id="playGroup_q2">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zxfs"
               data-fun_zhushu="zhushu_q2zxfs"
               data-fun_content="content_q2zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qe/zxfs.html"
               data-play_id="929"
               data-play_pl_id="14719"
               data-name="前二-直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zxhz"
               data-fun_zhushu="zhushu_q2zxhz"
               data-fun_content="content_q2zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qe/zxhz.html"
               data-play_id="928"
               data-play_pl_id="14718"
               data-name="前二-直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zxkd"
               data-fun_zhushu="zhushu_q2zxkd"
               data-fun_content="content_q2zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qe/zxkd.html"
               data-play_id="930"
               data-play_pl_id="14720"
               data-name="前二-直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zuxfs"
               data-fun_zhushu="zhushu_q2zuxfs"
               data-fun_content="content_q2zuxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qe/zuxfs.html"
               data-play_id="934"
               data-play_pl_id="14724"
               data-name="前二-组选复式">
                <span class="staer1">组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zuxhz"
               data-fun_zhushu="zhushu_q2zuxhz"
               data-fun_content="content_q2zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qe/zuxhz.html"
               data-play_id="931"
               data-play_pl_id="14721"
               data-name="前二-组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zuxbd"
               data-fun_zhushu="zhushu_q2zuxbd"
               data-fun_content="content_q2zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/qe/zuxbd.html"
               data-play_id="932"
               data-play_pl_id="14722"
               data-name="前二-组选包胆">
                <span class="staer1">组选包胆</span>
            </a>
        </div>
        <div class="hide" id="playGroup_bdw">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3ym"
               data-fun_zhushu="zhushu_q3ym"
               data-fun_content="content_q3ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/bdw/qsym.html"
               data-play_id="882"
               data-play_pl_id="14663"
               data-name="前三一码">
                <span class="staer1">前三一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3em"
               data-fun_zhushu="zhushu_q3em"
               data-fun_content="content_q3em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/bdw/qsem.html"
               data-play_id="883"
               data-play_pl_id="14664"
               data-name="前三二码">
                <span class="staer1">前三二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3ym"
               data-fun_zhushu="zhushu_h3ym"
               data-fun_content="content_h3ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/bdw/hsym.html"
               data-play_id="886"
               data-play_pl_id="14667"
               data-name="后三一码">
                <span class="staer1">后三一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3em"
               data-fun_zhushu="zhushu_h3em"
               data-fun_content="content_h3em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/bdw/hsem.html"
               data-play_id="887"
               data-play_pl_id="14668"
               data-name="后三二码">
                <span class="staer1">后三二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q4ym"
               data-fun_zhushu="zhushu_q4ym"
               data-fun_content="content_q4ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/bdw/qsiym.html"
               data-play_id="884"
               data-play_pl_id="14665"
               data-name="前四一码">
                <span class="staer1">前四一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q4em"
               data-fun_zhushu="zhushu_q4em"
               data-fun_content="content_q4em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/bdw/qsiem.html"
               data-play_id="885"
               data-play_pl_id="14666"
               data-name="前四二码">
                <span class="staer1">前四二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h4ym"
               data-fun_zhushu="zhushu_h4ym"
               data-fun_content="content_h4ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/bdw/hsiym.html"
               data-play_id="888"
               data-play_pl_id="14669"
               data-name="后四一码">
                <span class="staer1">后四一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h4em"
               data-fun_zhushu="zhushu_h4em"
               data-fun_content="content_h4em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/bdw/hsiem.html"
               data-play_id="889"
               data-play_pl_id="14670"
               data-name="后四二码">
                <span class="staer1">后四二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_wxym"
               data-fun_zhushu="zhushu_wxym"
               data-fun_content="content_wxym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/bdw/wxym.html"
               data-play_id="879"
               data-play_pl_id="14660"
               data-name="五星一码">
                <span class="staer1">五星一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_wxem"
               data-fun_zhushu="zhushu_wxem"
               data-fun_content="content_wxem"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/bdw/wxem.html"
               data-play_id="881"
               data-play_pl_id="14662"
               data-name="五星二码">
                <span class="staer1">五星二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_wx3m"
               data-fun_zhushu="zhushu_wx3m"
               data-fun_content="content_wx3m"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/bdw/wxsm.html"
               data-play_id="880"
               data-play_pl_id="14661"
               data-name="五星三码">
                <span class="staer1">五星三码</span>
            </a>
        </div>
        <div class="hide" id="playGroup_dxds">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2dxds"
               data-fun_zhushu="zhushu_q2dxds"
               data-fun_content="content_q2dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/dxds/qedxds.html"
               data-play_id="951"
               data-play_pl_id="14748"
               data-name="前二大小单双">
                <span class="staer1">前二大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h2dxds"
               data-fun_zhushu="zhushu_h2dxds"
               data-fun_content="content_h2dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/dxds/hedxds.html"
               data-play_id="953"
               data-play_pl_id="14750"
               data-name="后二大小单双">
                <span class="staer1">后二大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3dxds"
               data-fun_zhushu="zhushu_q3dxds"
               data-fun_content="content_q3dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/dxds/qsdxds.html"
               data-play_id="952"
               data-play_pl_id="14749"
               data-name="前三大小单双">
                <span class="staer1">前三大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3dxds"
               data-fun_zhushu="zhushu_h3dxds"
               data-fun_content="content_h3dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/dxds/hsdxds.html"
               data-play_id="954"
               data-play_pl_id="14751"
               data-name="后三大小单双">
                <span class="staer1">后三大小单双</span>
            </a>
        </div>
        <div class="hide" id="playGroup_rx2">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2zxfs"
               data-fun_zhushu="zhushu_rx2zxfs"
               data-fun_content="content_rx2zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxe/zxfs.html"
               data-play_id="894"
               data-play_pl_id="14675"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2zxhz"
               data-fun_zhushu="zhushu_rx2zxhz"
               data-fun_content="content_rx2zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxe/zxhz.html"
               data-play_id="893"
               data-play_pl_id="14674"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2zuxfs"
               data-fun_zhushu="zhushu_rx2zuxfs"
               data-fun_content="content_rx2zuxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxe/zuxfs.html"
               data-play_id="897"
               data-play_pl_id="14678"
               data-name="组选复式">
                <span class="staer1">组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2zuxhz"
               data-fun_zhushu="zhushu_rx2zuxhz"
               data-fun_content="content_rx2zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxe/zuxhz.html"
               data-play_id="896"
               data-play_pl_id="14677"
               data-name="组选和值 ">
                <span class="staer1">组选和值</span>
            </a>
        </div>
        <div class="hide" id="playGroup_rx3">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3zxfs"
               data-fun_zhushu="zhushu_rx3zxfs"
               data-fun_content="content_rx3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxs/zxfs.html"
               data-play_id="901"
               data-play_pl_id="14683"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3zxhz"
               data-fun_zhushu="zhushu_rx3zxhz"
               data-fun_content="content_rx3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxs/zxhz.html"
               data-play_id="900"
               data-play_pl_id="14682"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3z3fs"
               data-fun_zhushu="zhushu_rx3z3fs"
               data-fun_content="content_rx3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxs/zusfs.html"
               data-play_id="903"
               data-play_pl_id="14685"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3z6fs"
               data-fun_zhushu="zhushu_rx3z6fs"
               data-fun_content="content_rx3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxs/zulfs.html"
               data-play_id="905"
               data-play_pl_id="14687"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3zuxhz"
               data-fun_zhushu="zhushu_rx3zuxhz"
               data-fun_content="content_rx3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxs/zuxhz.html"
               data-play_id="906"
               data-play_pl_id="14688|14689"
               data-name="组选和值">
                <span class="staer1">组选和值</span>
            </a>
        </div>
        <div class="hide" id="playGroup_rx4">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zxfs"
               data-fun_zhushu="zhushu_rx4zxfs"
               data-fun_content="content_rx4zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxsi/zxfs.html"
               data-play_id="908"
               data-play_pl_id="14691"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu24"
               data-fun_zhushu="zhushu_rx4zu24"
               data-fun_content="content_rx4zu24"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxsi/zx24.html"
               data-play_id="910"
               data-play_pl_id="14693"
               data-name="组选24">
                <span class="staer1">组选24</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu12"
               data-fun_zhushu="zhushu_rx4zu12"
               data-fun_content="content_rx4zu12"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxsi/zx12.html"
               data-play_id="909"
               data-play_pl_id="14692"
               data-name="组选12">
                <span class="staer1">组选12</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu6"
               data-fun_zhushu="zhushu_rx4zu6"
               data-fun_content="content_rx4zu6"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxsi/zx6.html"
               data-play_id="912"
               data-play_pl_id="14695"
               data-name="组选6">
                <span class="staer1">组选6</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu4"
               data-fun_zhushu="zhushu_rx4zu4"
               data-fun_content="content_rx4zu4"
               data-url="<%=basePath%>ssc/gcdt/gfwf/xjssc/rxsi/zx4.html"
               data-play_id="911"
               data-play_pl_id="14694"
               data-name="组选4">
                <span class="staer1">组选4</span>
            </a>
        </div>
    </div>
</div>

<div class="gfwf_mask2 Hide_Show2">
    <%--蒙版--%>
</div>