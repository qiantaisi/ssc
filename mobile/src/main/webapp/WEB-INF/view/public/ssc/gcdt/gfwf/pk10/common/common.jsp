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
        <a href="javascript:void(0)" data-name="qy"><span>前一</span></a>
        <a href="javascript:void(0)" data-name="dwd"><span>定位胆</span></a>
        <a href="javascript:void(0)" data-name="qe"><span>前二</span></a>
        <a href="javascript:void(0)" data-name="qsan"><span>前三</span></a>
    </div>
    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2" id="gfwf_playName"></div>
        <div class="xuan1"></div>
    </div>
    <div class="staer wx-select restaer">
        <div class="hide" id="playGroup_qy">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_qy"
               data-fun_zhushu="zhushu_qy"
               data-fun_content="content_qy"
               data-url="<%=basePath%>ssc/gcdt/gfwf/pk10/qy/qy.html"
               data-play_id="659"
               data-play_pl_id="14408"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
        </div>
        <div class="hide" id="playGroup_dwd">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_dwd_pk10"
               data-fun_zhushu="zhushu_dwd_pk10"
               data-fun_content="content_dwd_pk10"
               data-url="<%=basePath%>ssc/gcdt/gfwf/pk10/dwd/dwd.html"
               data-play_id="662"
               data-play_pl_id="14413"
               data-name="定位胆">
                <span class="zxfs">定位胆</span>
            </a>
        </div>
        <div class="hide" id="playGroup_qe">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_qe"
               data-fun_zhushu="zhushu_qe"
               data-fun_content="content_qe"
               data-url="<%=basePath%>ssc/gcdt/gfwf/pk10/qe/qe.html"
               data-play_id="660"
               data-play_pl_id="14410|14409"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
        </div>
        <div class="hide" id="playGroup_qsan">
            <a href="javascript:void(0)"
               data-type="gfwf_page"
               data-fun_random="random_qsan"
               data-fun_zhushu="zhushu_qsan"
               data-fun_content="content_qsan"
               data-url="<%=basePath%>ssc/gcdt/gfwf/pk10/qsan/qsan.html"
               data-play_id="661"
               data-play_pl_id="14412"
               data-name="直选复式">
                <span class="staer1">直选复式</span>
            </a>
        </div>
    </div>
</div>

<div class="gfwf_mask2 Hide_Show2">
    <%--蒙版--%>
</div>