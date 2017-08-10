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
        <a href="javascript:void(0)" data-name="sma"><span>三码</span></a>
        <a href="javascript:void(0)" data-name="ema"><span>二码</span></a>
        <a href="javascript:void(0)" data-name="bdw"><span>不定位</span></a>
        <a href="javascript:void(0)" data-name="dwd"><span>定位胆</span></a>
        <a href="javascript:void(0)" data-name="rxfs"><span>任选复式</span></a>
        <a href="javascript:void(0)" data-name="rxtd"><span>任选拖胆</span></a>
    </div>
    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2" id="gfwf_playName"></div>
        <div class="xuan1"></div>
    </div>
    <div class="staer wx-select restaer">
        <div class="hide" id="playGroup_sma">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zxfs"
               data-fun_zhushu="zhushu_q3zxfs"
               data-fun_content="content_q3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/sma/q3zxfs.html"
               data-play_id="543"
               data-play_pl_id="14261"
               data-name="前三直选复式">
                <span class="staer1">前三直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_z3zxfs"
               data-fun_zhushu="zhushu_z3zxfs"
               data-fun_content="content_z3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/sma/z3zxfs.html"
               data-play_id="497"
               data-play_pl_id="14207"
               data-name="中三直选复式">
                <span class="zxfs">中三直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zxfs"
               data-fun_zhushu="zhushu_h3zxfs"
               data-fun_content="content_h3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/sma/h3zxfs.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="后三直选复式">
                <span class="staer1">后三直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zxfs"
               data-fun_zhushu="zhushu_q3zxfs"
               data-fun_content="content_q3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/sma/q3zuxfs.html"
               data-play_id="543"
               data-play_pl_id="14261"
               data-name="前三组选复式">
                <span class="staer1">前三组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_z3zxfs"
               data-fun_zhushu="zhushu_z3zxfs"
               data-fun_content="content_z3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/sma/z3zuxfs.html"
               data-play_id="497"
               data-play_pl_id="14207"
               data-name="中三组选复式">
                <span class="zxfs">中三直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zxfs"
               data-fun_zhushu="zhushu_h3zxfs"
               data-fun_content="content_h3zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/sma/h3zuxfs.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="后三组选复式">
                <span class="staer1">后三组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3zxtd"
               data-fun_zhushu="zhushu_q3zxtd"
               data-fun_content="content_q3zxtd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/sma/q3zuxtd.html"
               data-play_id="543"
               data-play_pl_id="14261"
               data-name="前三组选拖胆">
                <span class="staer1">前三组选拖胆</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_z3zxtd"
               data-fun_zhushu="zhushu_z3zxtd"
               data-fun_content="content_z3zxtd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/sma/z3zuxtd.html"
               data-play_id="497"
               data-play_pl_id="14207"
               data-name="中三组选拖胆">
                <span class="zxfs">中三组选拖胆</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3zxtd"
               data-fun_zhushu="zhushu_h3zxtd"
               data-fun_content="content_h3zxtd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/sma/h3zuxtd.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="后三组选拖胆">
                <span class="staer1">后三组选拖胆</span>
            </a>
        </div>
        <div class="hide" id="playGroup_ema">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zxfs"
               data-fun_zhushu="zhushu_q2zxfs"
               data-fun_content="content_q2zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/ema/q2zxfs.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="前二直选复式">
                <span class="staer1">前二直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zxfs"
               data-fun_zhushu="zhushu_q2zxfs"
               data-fun_content="content_q2zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/ema/q2zuxfs.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="前二组选复式">
                <span class="staer1">前二组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q2zxtd"
               data-fun_zhushu="zhushu_q2zxtd"
               data-fun_content="content_q2zxtd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/ema/q2zuxtd.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="前二组选拖胆">
                <span class="staer1">前二组选拖胆</span>
            </a>

            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h2zxfs"
               data-fun_zhushu="zhushu_h2zxfs"
               data-fun_content="content_h2zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/ema/h2zxfs.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="后二直选复式">
                <span class="staer1">后二直选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h2zxfs"
               data-fun_zhushu="zhushu_h2zxfs"
               data-fun_content="content_h2zxfs"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/ema/h2zuxfs.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="后二组选复式">
                <span class="staer1">后二组选复式</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h2zxtd"
               data-fun_zhushu="zhushu_h2zxtd"
               data-fun_content="content_h2zxtd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/ema/h2zuxtd.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="后二组选拖胆">
                <span class="staer1">后二组选拖胆</span>
            </a>
        </div>
        <div class="hide" id="playGroup_bdw">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_q3w"
               data-fun_zhushu="zhushu_q3w"
               data-fun_content="content_q3w"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/bdw/q3w.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="前三位">
                <span class="staer1">前三位</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_z3w"
               data-fun_zhushu="zhushu_z3w"
               data-fun_content="content_z3w"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/bdw/z3w.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="中三位">
                <span class="staer1">中三位</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_h3w"
               data-fun_zhushu="zhushu_h3w"
               data-fun_content="content_h3w"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/bdw/h3w.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="后三位">
                <span class="staer1">后三位</span>
            </a>
        </div>
        <div class="hide" id="playGroup_dwd">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_dwd"
               data-fun_zhushu="zhushu_dwd"
               data-fun_content="content_dwd"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/dwd/dwd.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="定位胆">
                <span class="staer1">定位胆</span>
            </a>

        </div>

        <div class="hide" id="playGroup_rxfs">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx1z1"
               data-fun_zhushu="zhushu_rx1z1"
               data-fun_content="content_rx1z1"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxfs/rx1z1.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选一中一">
                <span class="staer1">任选一中一</span>
            </a>

            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2z2"
               data-fun_zhushu="zhushu_rx2z2"
               data-fun_content="content_rx2z2"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxfs/rx2z2.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选二中二">
                <span class="staer1">任选二中二</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3z3"
               data-fun_zhushu="zhushu_rx3z3"
               data-fun_content="content_rx3z3"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxfs/rx3z3.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选三中三">
                <span class="staer1">任选三中三</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4z4"
               data-fun_zhushu="zhushu_rx4z4"
               data-fun_content="content_rx4z4"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxfs/rx4z4.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选四中四">
                <span class="staer1">任选四中四</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx5z5"
               data-fun_zhushu="zhushu_rx5z5"
               data-fun_content="content_rx5z5"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxfs/rx5z5.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选五中五">
                <span class="staer1">任选五中五</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx6z5"
               data-fun_zhushu="zhushu_rx6z5"
               data-fun_content="content_rx6z5"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxfs/rx6z5.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选六中五">
                <span class="staer1">任选六中五</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx7z5"
               data-fun_zhushu="zhushu_rx7z5"
               data-fun_content="content_rx7z5"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxfs/rx7z5.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选七中五">
                <span class="staer1">任选七中五</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx8z5"
               data-fun_zhushu="zhushu_rx8z5"
               data-fun_content="content_rx8z5"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxfs/rx8z5.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选八中五">
                <span class="staer1">任选八中五</span>
            </a>
        </div>

        <div class="hide" id="playGroup_rxtd">

            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx2z2"
               data-fun_zhushu="zhushu_rx2z2"
               data-fun_content="content_rx2z2"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxtd/rx2z2.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选二中二">
                <span class="staer1">任选二中二</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx3z3"
               data-fun_zhushu="zhushu_rx3z3"
               data-fun_content="content_rx3z3"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxtd/rx3z3.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选三中三">
                <span class="staer1">任选三中三</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx4z4"
               data-fun_zhushu="zhushu_rx4z4"
               data-fun_content="content_rx4z4"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxtd/rx4z4.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选四中四">
                <span class="staer1">任选四中四</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx5z5"
               data-fun_zhushu="zhushu_rx5z5"
               data-fun_content="content_rx5z5"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxtd/rx5z5.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选五中五">
                <span class="staer1">任选五中五</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx6z5"
               data-fun_zhushu="zhushu_rx6z5"
               data-fun_content="content_rx6z5"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxtd/rx6z5.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选六中五">
                <span class="staer1">任选六中五</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx7z5"
               data-fun_zhushu="zhushu_rx7z5"
               data-fun_content="content_rx7z5"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxtd/rx7z5.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选七中五">
                <span class="staer1">任选七中五</span>
            </a>
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_rx8z5"
               data-fun_zhushu="zhushu_rx8z5"
               data-fun_content="content_rx8z5"
               data-url="<%=basePath%>ssc/gcdt/gfwf/gd11x5/rxtd/rx8z5.html"
               data-play_id="499"
               data-play_pl_id="14209"
               data-name="任选八中五">
                <span class="staer1">任选八中五</span>
            </a>
        </div>
    </div>
</div>

<div class="gfwf_mask2 Hide_Show2">
    <%--蒙版--%>
</div>