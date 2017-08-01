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
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/dwd/zxfs.html"
               data-play_id="616"
               data-play_pl_id="14338"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/wx/wx.html"
               data-play_id="656"
               data-play_pl_id="14392"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/sx/sx.html"
               data-play_id="654"
               data-play_pl_id="14390"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/hs/zxfs.html"
               data-play_id="652"
               data-play_pl_id="14388"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zxhz"
               data-fun_zhushu="zhushu_h3zxhz"
               data-fun_content="content_h3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/hs/zxhz.html"
               data-play_id="649"
               data-play_pl_id="14383"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zxkd"
               data-fun_zhushu="zhushu_h3zxkd"
               data-fun_content="content_h3zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/hs/zxkd.html"
               data-play_id="648"
               data-play_pl_id="14382"
               data-name="直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zh"
               data-fun_zhushu="zhushu_h3zh"
               data-fun_content="content_h3zh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/hs/hszh.html"
               data-play_id="650"
               data-play_pl_id="14386|14385|14384"
               data-name="后三组合">
                <span class="staer1">后三组合</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3z3fs"
               data-fun_zhushu="zhushu_h3z3fs"
               data-fun_content="content_h3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/hs/zsfs.html"
               data-play_id="647"
               data-play_pl_id="14381"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3z6fs"
               data-fun_zhushu="zhushu_h3z6fs"
               data-fun_content="content_h3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/hs/zlfs.html"
               data-play_id="645"
               data-play_pl_id="14379"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zuxhz"
               data-fun_zhushu="zhushu_h3zuxhz"
               data-fun_content="content_h3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/hs/zuxhz.html"
               data-play_id="642"
               data-play_pl_id="14374|14375"
               data-name="组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zuxbd"
               data-fun_zhushu="zhushu_h3zuxbd"
               data-fun_content="content_h3zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/hs/zxbd.html"
               data-play_id="641"
               data-play_pl_id="14373|14372"
               data-name="组选包胆">
                <span class="staer1">组选包胆</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3hzws"
               data-fun_zhushu="zhushu_h3hzws"
               data-fun_content="content_h3hzws"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/hs/hzws.html"
               data-play_id="640"
               data-play_pl_id="14371"
               data-name="和值尾数">
                <span class="staer1">和值尾数</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3tsh"
               data-fun_zhushu="zhushu_h3tsh"
               data-fun_content="content_h3tsh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/hs/tsh.html"
               data-play_id="639"
               data-play_pl_id="14370|14369|14368"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qs/zxfs.html"
               data-play_id="638"
               data-play_pl_id="14367"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zxhz"
               data-fun_zhushu="zhushu_q3zxhz"
               data-fun_content="content_q3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qs/zxhz.html"
               data-play_id="635"
               data-play_pl_id="14362"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zxkd"
               data-fun_zhushu="zhushu_q3zxkd"
               data-fun_content="content_q3zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qs/zxkd.html"
               data-play_id="634"
               data-play_pl_id="14361"
               data-name="直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zh"
               data-fun_zhushu="zhushu_q3zh"
               data-fun_content="content_q3zh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qs/qszh.html"
               data-play_id="636"
               data-play_pl_id="14363|14364|14365"
               data-name="前三组合">
                <span class="staer1">前三组合</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3z3fs"
               data-fun_zhushu="zhushu_q3z3fs"
               data-fun_content="content_q3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qs/zsfs.html"
               data-play_id="633"
               data-play_pl_id="14360"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3z6fs"
               data-fun_zhushu="zhushu_q3z6fs"
               data-fun_content="content_q3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qs/zlfs.html"
               data-play_id="631"
               data-play_pl_id="14358"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zuxhz"
               data-fun_zhushu="zhushu_q3zuxhz"
               data-fun_content="content_q3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qs/zuxhz.html"
               data-play_id="628"
               data-play_pl_id="14353|14354"
               data-name="组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zuxbd"
               data-fun_zhushu="zhushu_q3zuxbd"
               data-fun_content="content_q3zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qs/zxbd.html"
               data-play_id="627"
               data-play_pl_id="14351|14352"
               data-name="组选包胆">
                <span class="staer1">组选包胆</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3hzws"
               data-fun_zhushu="zhushu_q3hzws"
               data-fun_content="content_q3hzws"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qs/hzws.html"
               data-play_id="626"
               data-play_pl_id="14350"
               data-name="和值尾数">
                <span class="staer1">和值尾数</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3tsh"
               data-fun_zhushu="zhushu_q3tsh"
               data-fun_content="content_q3tsh"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qs/tsh.html"
               data-play_id="625"
               data-play_pl_id="14347|14348|14349"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qe/zxfs.html"
               data-play_id="624"
               data-play_pl_id="14346"
               data-name="前二-直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zxhz"
               data-fun_zhushu="zhushu_q2zxhz"
               data-fun_content="content_q2zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qe/zxhz.html"
               data-play_id="622"
               data-play_pl_id="14344"
               data-name="前二-直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zxkd"
               data-fun_zhushu="zhushu_q2zxkd"
               data-fun_content="content_q2zxkd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qe/zxkd.html"
               data-play_id="621"
               data-play_pl_id="14343"
               data-name="前二-直选跨度">
                <span class="staer1">直选跨度</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zuxfs"
               data-fun_zhushu="zhushu_q2zuxfs"
               data-fun_content="content_q2zuxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qe/zuxfs.html"
               data-play_id="620"
               data-play_pl_id="14342"
               data-name="前二-组选复式">
                <span class="staer1">组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zuxhz"
               data-fun_zhushu="zhushu_q2zuxhz"
               data-fun_content="content_q2zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qe/zuxhz.html"
               data-play_id="618"
               data-play_pl_id="14340"
               data-name="前二-组选和值">
                <span class="staer1">组选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zuxbd"
               data-fun_zhushu="zhushu_q2zuxbd"
               data-fun_content="content_q2zuxbd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/qe/zuxbd.html"
               data-play_id="617"
               data-play_pl_id="14339"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/bdw/qsym.html"
               data-play_id="615"
               data-play_pl_id="14337"
               data-name="前三一码">
                <span class="staer1">前三一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3em"
               data-fun_zhushu="zhushu_q3em"
               data-fun_content="content_q3em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/bdw/qsem.html"
               data-play_id="614"
               data-play_pl_id="14336"
               data-name="前三二码">
                <span class="staer1">前三二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3ym"
               data-fun_zhushu="zhushu_h3ym"
               data-fun_content="content_h3ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/bdw/hsym.html"
               data-play_id="613"
               data-play_pl_id="14335"
               data-name="后三一码">
                <span class="staer1">后三一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3em"
               data-fun_zhushu="zhushu_h3em"
               data-fun_content="content_h3em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/bdw/hsem.html"
               data-play_id="612"
               data-play_pl_id="14334"
               data-name="后三二码">
                <span class="staer1">后三二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q4ym"
               data-fun_zhushu="zhushu_q4ym"
               data-fun_content="content_q4ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/bdw/qsiym.html"
               data-play_id="611"
               data-play_pl_id="14333"
               data-name="前四一码">
                <span class="staer1">前四一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q4em"
               data-fun_zhushu="zhushu_q4em"
               data-fun_content="content_q4em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/bdw/qsiem.html"
               data-play_id="610"
               data-play_pl_id="14332"
               data-name="前四二码">
                <span class="staer1">前四二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h4ym"
               data-fun_zhushu="zhushu_h4ym"
               data-fun_content="content_h4ym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/bdw/hsiym.html"
               data-play_id="609"
               data-play_pl_id="14331"
               data-name="后四一码">
                <span class="staer1">后四一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h4em"
               data-fun_zhushu="zhushu_h4em"
               data-fun_content="content_h4em"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/bdw/hsiem.html"
               data-play_id="608"
               data-play_pl_id="14330"
               data-name="后四二码">
                <span class="staer1">后四二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_wxym"
               data-fun_zhushu="zhushu_wxym"
               data-fun_content="content_wxym"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/bdw/wxym.html"
               data-play_id="607"
               data-play_pl_id="14329"
               data-name="五星一码">
                <span class="staer1">五星一码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_wxem"
               data-fun_zhushu="zhushu_wxem"
               data-fun_content="content_wxem"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/bdw/wxem.html"
               data-play_id="606"
               data-play_pl_id="14328"
               data-name="五星二码">
                <span class="staer1">五星二码</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_wx3m"
               data-fun_zhushu="zhushu_wx3m"
               data-fun_content="content_wx3m"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/bdw/wxsm.html"
               data-play_id="605"
               data-play_pl_id="14327"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/dxds/qedxds.html"
               data-play_id="604"
               data-play_pl_id="14326"
               data-name="前二大小单双">
                <span class="staer1">前二大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h2dxds"
               data-fun_zhushu="zhushu_h2dxds"
               data-fun_content="content_h2dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/dxds/hedxds.html"
               data-play_id="603"
               data-play_pl_id="14325"
               data-name="后二大小单双">
                <span class="staer1">后二大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3dxds"
               data-fun_zhushu="zhushu_q3dxds"
               data-fun_content="content_q3dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/dxds/qsdxds.html"
               data-play_id="602"
               data-play_pl_id="14324"
               data-name="前三大小单双">
                <span class="staer1">前三大小单双</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3dxds"
               data-fun_zhushu="zhushu_h3dxds"
               data-fun_content="content_h3dxds"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/dxds/hsdxds.html"
               data-play_id="601"
               data-play_pl_id="14323"
               data-name="后三大小单双">
                <span class="staer1">后三大小单双</span>
            </a>
        </div>`
        <div class="hide" id="playGroup_rx2">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2zxfs"
               data-fun_zhushu="zhushu_rx2zxfs"
               data-fun_content="content_rx2zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxe/zxfs.html"
               data-play_id="600"
               data-play_pl_id="14322"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2zxhz"
               data-fun_zhushu="zhushu_rx2zxhz"
               data-fun_content="content_rx2zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxe/zxhz.html"
               data-play_id="598"
               data-play_pl_id="14320"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2zuxfs"
               data-fun_zhushu="zhushu_rx2zuxfs"
               data-fun_content="content_rx2zuxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxe/zuxfs.html"
               data-play_id="597"
               data-play_pl_id="14319"
               data-name="组选复式">
                <span class="staer1">组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2zuxhz"
               data-fun_zhushu="zhushu_rx2zuxhz"
               data-fun_content="content_rx2zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxe/zuxhz.html"
               data-play_id="595"
               data-play_pl_id="14317"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxs/zxfs.html"
               data-play_id="594"
               data-play_pl_id="14316"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3zxhz"
               data-fun_zhushu="zhushu_rx3zxhz"
               data-fun_content="content_rx3zxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxs/zxhz.html"
               data-play_id="592"
               data-play_pl_id="14314"
               data-name="直选和值">
                <span class="staer1">直选和值</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3z3fs"
               data-fun_zhushu="zhushu_rx3z3fs"
               data-fun_content="content_rx3z3fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxs/zusfs.html"
               data-play_id="591"
               data-play_pl_id="14313"
               data-name="组三复式">
                <span class="staer1">组三复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3z6fs"
               data-fun_zhushu="zhushu_rx3z6fs"
               data-fun_content="content_rx3z6fs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxs/zulfs.html"
               data-play_id="589"
               data-play_pl_id="14311"
               data-name="组六复式">
                <span class="staer1">组六复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3zuxhz"
               data-fun_zhushu="zhushu_rx3zuxhz"
               data-fun_content="content_rx3zuxhz"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxs/zuxhz.html"
               data-play_id="586"
               data-play_pl_id="14306|14307"
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
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxsi/zxfs.html"
               data-play_id="585"
               data-play_pl_id="14305"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu24"
               data-fun_zhushu="zhushu_rx4zu24"
               data-fun_content="content_rx4zu24"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxsi/zx24.html"
               data-play_id="583"
               data-play_pl_id="14303"
               data-name="组选24">
                <span class="staer1">组选24</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu12"
               data-fun_zhushu="zhushu_rx4zu12"
               data-fun_content="content_rx4zu12"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxsi/zx12.html"
               data-play_id="582"
               data-play_pl_id="14302"
               data-name="组选12">
                <span class="staer1">组选12</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu6"
               data-fun_zhushu="zhushu_rx4zu6"
               data-fun_content="content_rx4zu6"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxsi/zx6.html"
               data-play_id="581"
               data-play_pl_id="14301"
               data-name="组选6">
                <span class="staer1">组选6</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4zu4"
               data-fun_zhushu="zhushu_rx4zu4"
               data-fun_content="content_rx4zu4"
               data-url="<%=basePath%>ssc/gcdt/gfwf/ffssc/rxsi/zx4.html"
               data-play_id="580"
               data-play_pl_id="14300"
               data-name="组选4">
                <span class="staer1">组选4</span>
            </a>
        </div>
    </div>
</div>

<div class="gfwf_mask2 Hide_Show2">
    <%--蒙版--%>
</div>