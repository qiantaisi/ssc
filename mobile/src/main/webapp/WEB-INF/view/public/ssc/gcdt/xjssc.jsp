<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-gcdt-xjssc">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a href="javascript:void(0);" class="button button-link pull-right menubtn">
                菜单
            </a>
            <h1 class="title">新疆时时彩</h1>
            <%--<h1 class="title">--%>
                <%--<i class="title_cq">新疆时时彩--%>
                    <%--<div class="gfwf_triangle_down">--%>
                        <%--&lt;%&ndash;画出一个向下的三角形图标&ndash;%&gt;--%>
                    <%--</div>--%>
                <%--</i>--%>
            <%--</h1>--%>
        </header>
        <c:import url="common/commonBet.jsp" />
        <%--<div class="BeginFind Hide_Show">--%>
            <%--<div class="gfwf_consele">--%>
                <%--<div class="gfwf_one">--%>
                    <%--<a class="F1_color" href="<%=basePath%>ssc/gcdt/gfwf/xjssc.html">--%>
                        <%--<div class="border_one color_one">--%>
                            <%--官方模式--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="gfwf_two">--%>
                    <%--<a class="F2_color" href="<%=basePath%>ssc/gcdt/xjssc.html">--%>
                        <%--<div class="border_two color_two">--%>
                            <%--传统模式--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="gfwf_mask">--%>
                <%--&lt;%&ndash;实现蒙版&ndash;%&gt;--%>
            <%--</div>--%>
        <%--</div>--%>
        <div class="content cl-601">
            <div class="cl-600" id="ssc-parent-menu">
                <div class="cl-602">
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/xjssc/sm.html">双面</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/xjssc/szp.html">数字盘</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-yzdw">一字定</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/xjssc/ezdw.html">二字定</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/xjssc/szdw.html">三字定</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-yzzh">一字组</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-ezzh">二字组</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/xjssc/ezhs.html">二字和</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-zxs">组选三</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-zxl">组选六</a>
                    <a href="javascript:void(0)" data-type="sub-menu" data-sub_menu_id="sub-menu-kd">跨度</a>
                    <a href="javascript:void(0)" data-type="page" data-url="<%=basePath%>ssc/gcdt/xjssc/lh.html">龙虎</a>
                </div>
            </div>
            <div class="cl-900" id="lastOpenInfo"></div>
            <div class="cl-901">
                <div class="cl-902">
                    <span class="left" data-number="" id="number">第<font>..数据读取中..</font>期</span>
                    <span class="right">距离下一期还有：<font id="leftTime">00:00:00</font></span>
                </div>
                <div class="cl-903" id="openHistoryList">
                </div>
            </div>
            <div id="sub-menu-list">
                <div class="cl-600 cl-610 hide" id="sub-menu-yzdw">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/yzdw_wdw.html">万定位</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/yzdw_qdw.html" href="javascript:void(0)">千定位</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/yzdw_bdw.html" href="javascript:void(0)">百定位</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/yzdw_sdw.html" href="javascript:void(0)">十定位</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/yzdw_gdw.html" href="javascript:void(0)">个定位</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-yzzh">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/yzzh_qw.html">全五一字组合</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/yzzh_qs.html">前三一字组合</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/yzzh_zs.html">中三一字组合</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/yzzh_hs.html">后三一字组合</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-ezzh">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/ezzh_qs.html">前三二字组合</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/ezzh_zs.html">中三二字组合</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/ezzh_hs.html">后三二字组合</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-zxs">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/zxs_qs.html">前三组选三</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/zxs_zs.html">中三组选三</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/zxs_hs.html">后三组选三</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-zxl">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/zxl_qs.html">前三组选六</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/zxl_zs.html">中三组选六</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/zxl_hs.html">后三组选六</a>
                    </div>
                </div>
                <div class="cl-600 cl-610 hide" id="sub-menu-kd">
                    <div class="cl-602">
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/kd_qs.html">前三跨度</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/kd_zs.html">中三跨度</a>
                        <a data-url="<%=basePath%>ssc/gcdt/xjssc/kd_hs.html">后三跨度</a>
                    </div>
                </div>
            </div>
            <div class="bg-white cl-951" id="betContainer">
            </div>
        </div>
    </div>
    <c:import url="../../common/leftSscPanel.jsp" />
    <c:import url="../../common/menuAlert.jsp">
        <c:param name="playGroupId" value="3"/>
    </c:import>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script type="text/html" id="template_openNumber_item">
    <div class="cl-904">
        <div class="cl-981"><span class="number">第<font class="style_blue">{{number}}</font>期&nbsp;|&nbsp;</span></div>
        <div class="cl-982">
            <span class="openNumber">
                {{if openCodeArr != null}}
                    {{each openCodeArr as value index}}
                        <i>{{value}}</i>
                    {{/each}}
                {{else}}
                    开奖中
                {{/if}}
            </span>
        </div>
    </div>
</script>
<script type="text/html" id="template_lastOpenInfo">
    <span class="left cl-1200 ssc_1200_qi" id="lastNumber">第<span class="style_blue">{{number}}</span>期&nbsp;&nbsp;</span>
    <div class="left">
        <span class="cl-1201 ssc_1201_num">
            {{each openCodeArr as value index}}
                <i>{{value}}</i>
            {{/each}}
        </span>
        <span class="cl-1202 ssc_1202_sx">&nbsp;
            {{each infoArr as value index}}
                <i>{{value}}</i>
            {{/each}}
        </span>
    </div>
</script>
<c:import url="../../common/bodyEnd.jsp"/>