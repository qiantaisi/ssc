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
        <a href="javascript:void(0)" data-type="gfwf_page">
            <span class="staer1">直选复式</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">五星</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/wx/wx.html" data-name="五星-直选复式">
            <span class="staer1">直选复式</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">四星</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/sx/sx.html" data-name="四星-直选复式">
            <span class="staer1">直选复式</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">后三</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/sx/sx.html" data-name="直选复式">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/gfwf/cqssc/sx/sx.html">
            <span class="staer1">直选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选跨度</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">后三组合</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组三复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组六复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选包单</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">和值尾数</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">特殊号</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">前三</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选跨度</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">前三组合</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组三复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组六复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选包胆</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">和值尾数</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">特殊号</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">前二</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选跨度</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选包但</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">不定位</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">前三一码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">前三二码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">后三一码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">后三二码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">前四一码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">前四二码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">后四一码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">后四二码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">五星一码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">五星二码</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">五星三码</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">大小单双</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">前二大小单双</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">后二大小单双</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">前三大小单双</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">后三大小单双</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">任选二</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选和值</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">任选三</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选和值</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组三复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组六复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选和值</span>
        </a>
    </div>

    <div class="xuan">
        <div class="xuan1"></div>
        <div class="xuan2">任选四</div>
        <div class="xuan1"></div>
    </div>
    <div class="staer">
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">直选复式</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选24</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选12</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选6</span>
        </a>
        <a href="javascript:void(0)" data-type="gfwf_page" data-url="<%=basePath%>ssc/gcdt/cqssc/sx.html">
            <span class="staer1">组选4</span>
        </a>
    </div>
</div>

<div class="gfwf_mask2 Hide_Show2">
    <%--蒙版--%>
</div>