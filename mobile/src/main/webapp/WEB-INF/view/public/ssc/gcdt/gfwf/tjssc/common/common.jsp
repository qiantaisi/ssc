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
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dwd/zxfs.html"
               data-play_id="749"
               data-play_pl_id="14566"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/wx/wx.html"
               data-play_id="685"
               data-play_pl_id="14486"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/sx/sx.html"
               data-play_id="744"
               data-play_pl_id="14561"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxfs.html"
               data-play_id="733"
               data-play_pl_id="14545"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zxhz"
               data-fun_zhushu="zhushu_h3zxhz"
               data-fun_content="content_h3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxhz.html"
               data-play_id="732"
               data-play_pl_id="14545"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zxkd"
               data-fun_zhushu="zhushu_h3zxkd"
               data-fun_content="content_h3zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxkd.html"
               data-play_id="735"
               data-play_pl_id="14549"
               data-name="直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zh"
               data-fun_zhushu="zhushu_h3zh"
               data-fun_content="content_h3zh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/hszh.html"
               data-play_id="734"
               data-play_pl_id="14548|14547|1456"
               data-name="后三组合">
                <span class="staer1">后三组合</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3z3fs"
               data-fun_zhushu="zhushu_h3z3fs"
               data-fun_content="content_h3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zsfs.html"
               data-play_id="738"
               data-play_pl_id="14553"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3z6fs"
               data-fun_zhushu="zhushu_h3z6fs"
               data-fun_content="content_h3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zlfs.html"
               data-play_id="740"
               data-play_pl_id="14555"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zuxhz"
               data-fun_zhushu="zhushu_h3zuxhz"
               data-fun_content="content_h3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zuxhz.html"
               data-play_id="742"
               data-play_pl_id="14559|14558"
               data-name="组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zuxbd"
               data-fun_zhushu="zhushu_h3zuxbd"
               data-fun_content="content_h3zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/zxbd.html"
               data-play_id="741"
               data-play_pl_id="14557|14556"
               data-name="组选包胆">
                <span class="staer1">组选包胆</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3hzws"
               data-fun_zhushu="zhushu_h3hzws"
               data-fun_content="content_h3hzws"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/hzws.html"
               data-play_id="729"
               data-play_pl_id="14539"
               data-name="和值尾数">
                <span class="staer1">和值尾数</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3tsh"
               data-fun_zhushu="zhushu_h3tsh"
               data-fun_content="content_h3tsh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/hs/tsh.html"
               data-play_id="730"
               data-play_pl_id="14542|14541|14540"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxfs.html"
               data-play_id="711"
               data-play_pl_id="14516"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zxhz"
               data-fun_zhushu="zhushu_q3zxhz"
               data-fun_content="content_q3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxhz.html"
               data-play_id="710"
               data-play_pl_id="14515"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zxkd"
               data-fun_zhushu="zhushu_q3zxkd"
               data-fun_content="content_q3zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxkd.html"
               data-play_id="713"
               data-play_pl_id="14520"
               data-name="直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zh"
               data-fun_zhushu="zhushu_q3zh"
               data-fun_content="content_q3zh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/qszh.html"
               data-play_id="712"
               data-play_pl_id="14517|14518|14519"
               data-name="前三组合">
                <span class="staer1">前三组合</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3z3fs"
               data-fun_zhushu="zhushu_q3z3fs"
               data-fun_content="content_q3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zsfs.html"
               data-play_id="716"
               data-play_pl_id="14524"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3z6fs"
               data-fun_zhushu="zhushu_q3z6fs"
               data-fun_content="content_q3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zlfs.html"
               data-play_id="718"
               data-play_pl_id="14526"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zuxhz"
               data-fun_zhushu="zhushu_q3zuxhz"
               data-fun_content="content_q3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zuxhz.html"
               data-play_id="720"
               data-play_pl_id="14530"
               data-name="组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zuxbd"
               data-fun_zhushu="zhushu_q3zuxbd"
               data-fun_content="content_q3zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/zxbd.html"
               data-play_id="719"
               data-play_pl_id="14528"
               data-name="组选包胆">
                <span class="staer1">组选包胆</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3hzws"
               data-fun_zhushu="zhushu_q3hzws"
               data-fun_content="content_q3hzws"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/hzws.html"
               data-play_id="707"
               data-play_pl_id="14510"
               data-name="和值尾数">
                <span class="staer1">和值尾数</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3tsh"
               data-fun_zhushu="zhushu_q3tsh"
               data-fun_content="content_q3tsh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qs/tsh.html"
               data-play_id="708"
               data-play_pl_id="14511|14512|14513"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zxfs.html"
               data-play_id="723"
               data-play_pl_id="14533"
               data-name="前二-直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zxhz"
               data-fun_zhushu="zhushu_q2zxhz"
               data-fun_content="content_q2zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zxhz.html"
               data-play_id="722"
               data-play_pl_id="14532"
               data-name="前二-直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zxkd"
               data-fun_zhushu="zhushu_q2zxkd"
               data-fun_content="content_q2zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zxkd.html"
               data-play_id="724"
               data-play_pl_id="14534"
               data-name="前二-直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zuxfs"
               data-fun_zhushu="zhushu_q2zuxfs"
               data-fun_content="content_q2zuxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zuxfs.html"
               data-play_id="728"
               data-play_pl_id="14538"
               data-name="前二-组选复式">
                <span class="staer1">组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zuxhz"
               data-fun_zhushu="zhushu_q2zuxhz"
               data-fun_content="content_q2zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zuxhz.html"
               data-play_id="725"
               data-play_pl_id="14535"
               data-name="前二-组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zuxbd"
               data-fun_zhushu="zhushu_q2zuxbd"
               data-fun_content="content_q2zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/qe/zuxbd.html"
               data-play_id="726"
               data-play_pl_id="14536"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsym.html"
               data-play_id="676"
               data-play_pl_id="14477"
               data-name="前三一码">
                <span class="staer1">前三一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3em"
               data-fun_zhushu="zhushu_q3em"
               data-fun_content="content_q3em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsem.html"
               data-play_id="677"
               data-play_pl_id="14478"
               data-name="前三二码">
                <span class="staer1">前三二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3ym"
               data-fun_zhushu="zhushu_h3ym"
               data-fun_content="content_h3ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsym.html"
               data-play_id="680"
               data-play_pl_id="14481"
               data-name="后三一码">
                <span class="staer1">后三一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3em"
               data-fun_zhushu="zhushu_h3em"
               data-fun_content="content_h3em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsem.html"
               data-play_id="681"
               data-play_pl_id="14482"
               data-name="后三二码">
                <span class="staer1">后三二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q4ym"
               data-fun_zhushu="zhushu_q4ym"
               data-fun_content="content_q4ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsiym.html"
               data-play_id="678"
               data-play_pl_id="14479"
               data-name="前四一码">
                <span class="staer1">前四一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q4em"
               data-fun_zhushu="zhushu_q4em"
               data-fun_content="content_q4em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/qsiem.html"
               data-play_id="679"
               data-play_pl_id="14480"
               data-name="前四二码">
                <span class="staer1">前四二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h4ym"
               data-fun_zhushu="zhushu_h4ym"
               data-fun_content="content_h4ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsiym.html"
               data-play_id="682"
               data-play_pl_id="14483"
               data-name="后四一码">
                <span class="staer1">后四一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h4em"
               data-fun_zhushu="zhushu_h4em"
               data-fun_content="content_h4em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/hsiem.html"
               data-play_id="683"
               data-play_pl_id="14484"
               data-name="后四二码">
                <span class="staer1">后四二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_wxym"
               data-fun_zhushu="zhushu_wxym"
               data-fun_content="content_wxym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/wxym.html"
               data-play_id="673"
               data-play_pl_id="14474"
               data-name="五星一码">
                <span class="staer1">五星一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_wxem"
               data-fun_zhushu="zhushu_wxem"
               data-fun_content="content_wxem"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/wxem.html"
               data-play_id="675"
               data-play_pl_id="14476"
               data-name="五星二码">
                <span class="staer1">五星二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_wx3m"
               data-fun_zhushu="zhushu_wx3m"
               data-fun_content="content_wx3m"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/bdw/wxsm.html"
               data-play_id="674"
               data-play_pl_id="14475"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/qedxds.html"
               data-play_id="745"
               data-play_pl_id="14562"
               data-name="前二大小单双">
                <span class="staer1">前二大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h2dxds"
               data-fun_zhushu="zhushu_h2dxds"
               data-fun_content="content_h2dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/hedxds.html"
               data-play_id="747"
               data-play_pl_id="14564"
               data-name="后二大小单双">
                <span class="staer1">后二大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3dxds"
               data-fun_zhushu="zhushu_q3dxds"
               data-fun_content="content_q3dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/qsdxds.html"
               data-play_id="746"
               data-play_pl_id="14563"
               data-name="前三大小单双">
                <span class="staer1">前三大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3dxds"
               data-fun_zhushu="zhushu_h3dxds"
               data-fun_content="content_h3dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/dxds/hsdxds.html"
               data-play_id="748"
               data-play_pl_id="14565"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zxfs.html"
               data-play_id="688"
               data-play_pl_id="14489"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2zxhz"
               data-fun_zhushu="zhushu_rx2zxhz"
               data-fun_content="content_rx2zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zxhz.html"
               data-play_id="687"
               data-play_pl_id="14488"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2zuxfs"
               data-fun_zhushu="zhushu_rx2zuxfs"
               data-fun_content="content_rx2zuxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zuxfs.html"
               data-play_id="691"
               data-play_pl_id="14492"
               data-name="组选复式">
                <span class="staer1">组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2zuxhz"
               data-fun_zhushu="zhushu_rx2zuxhz"
               data-fun_content="content_rx2zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxe/zuxhz.html"
               data-play_id="690"
               data-play_pl_id="14491"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zxfs.html"
               data-play_id="695"
               data-play_pl_id="14497"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3zxhz"
               data-fun_zhushu="zhushu_rx3zxhz"
               data-fun_content="content_rx3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zxhz.html"
               data-play_id="694"
               data-play_pl_id="14496"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3z3fs"
               data-fun_zhushu="zhushu_rx3z3fs"
               data-fun_content="content_rx3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zusfs.html"
               data-play_id="697"
               data-play_pl_id="14499"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3z6fs"
               data-fun_zhushu="zhushu_rx3z6fs"
               data-fun_content="content_rx3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zulfs.html"
               data-play_id="699"
               data-play_pl_id="14501"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3zuxhz"
               data-fun_zhushu="zhushu_rx3zuxhz"
               data-fun_content="content_rx3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxs/zuxhz.html"
               data-play_id="700"
               data-play_pl_id="14502|14503"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zxfs.html"
               data-play_id="702"
               data-play_pl_id="14505"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu24"
               data-fun_zhushu="zhushu_rx4zu24"
               data-fun_content="content_rx4zu24"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx24.html"
               data-play_id="704"
               data-play_pl_id="14507"
               data-name="组选24">
                <span class="staer1">组选24</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu12"
               data-fun_zhushu="zhushu_rx4zu12"
               data-fun_content="content_rx4zu12"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx12.html"
               data-play_id="703"
               data-play_pl_id="14506"
               data-name="组选12">
                <span class="staer1">组选12</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu6"
               data-fun_zhushu="zhushu_rx4zu6"
               data-fun_content="content_rx4zu6"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx6.html"
               data-play_id="706"
               data-play_pl_id="14509"
               data-name="组选6">
                <span class="staer1">组选6</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu4"
               data-fun_zhushu="zhushu_rx4zu4"
               data-fun_content="content_rx4zu4"
               data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/rxsi/zx4.html"
               data-play_id="705"
               data-play_pl_id="14508"
               data-name="组选4">
                <span class="staer1">组选4</span>
            </a>
        </div>
    </div>
</div>

<div class="gfwf_mask2 Hide_Show2">
    <%--蒙版--%>
</div>