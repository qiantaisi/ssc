<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-wfsm-wfsm">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">
                <c:choose>
                    <c:when test="${playGroupId == 1}">重庆时时彩</c:when>
                    <c:when test="${playGroupId == 2}">天津时时彩</c:when>
                    <c:when test="${playGroupId == 3}">新疆时时彩</c:when>
                    <c:when test="${playGroupId == 4}">体彩排列3</c:when>
                    <c:when test="${playGroupId == 5}">福彩3D</c:when>
                    <c:when test="${playGroupId == 6}">六合彩</c:when>
                    <c:when test="${playGroupId == 7}">北京28</c:when>
                    <c:when test="${playGroupId == 8}">北京快乐8</c:when>
                    <c:when test="${playGroupId == 9}">北京PK10</c:when>
                    <c:when test="${playGroupId == 10}">重庆幸运农场</c:when>
                    <c:when test="${playGroupId == 11}">广东快乐十分</c:when>
                    <c:when test="${playGroupId == 12}">双色球</c:when>
                    <c:when test="${playGroupId == 13}">三分时时彩</c:when>
                    <c:when test="${playGroupId == 14}">幸运飞艇</c:when>
                    <c:when test="${playGroupId == 15}">分分时时彩</c:when>
                    <c:when test="${playGroupId == 16}">两分时时彩</c:when>
                    <c:when test="${playGroupId == 17}">五分时时彩</c:when>
                    <c:when test="${playGroupId == 18}">江苏快3</c:when>
                    <c:when test="${playGroupId == 19}">湖北快3</c:when>
                    <c:when test="${playGroupId == 20}">安徽快3</c:when>
                    <c:when test="${playGroupId == 21}">吉林快3</c:when>
                    <c:when test="${playGroupId == 22}">10分六合彩</c:when>
                    <c:when test="${playGroupId == 23}">极速PK10</c:when>
                    <c:when test="${playGroupId == 24}">广东11选5</c:when>
                </c:choose>
                -玩法说明
            </h1>
        </header>
        <div class="content cl-700">
            <div class="buttons-tab cl-701" id="buttonsTabList">
                <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${playGroupId}" class="active button wfsm_cd"
                   data-id="btn-bqxq"><span>传统模式</span></a>
                <c:choose>
                    <c:when test="${playGroupId == 7}">
                        <a href="javascript:void(0)" onclick="tishi()" class="button wfsm_cd"
                           data-id="btn-gdqc"><span>官方模式</span></a>
                    </c:when>
                    <c:otherwise>
                        <a href="<%=basePath%>ssc/wfsm/wfsm-gfwf.html?playGroupId=${playGroupId}" class="button wfsm_cd"
                           data-id="btn-gdqc"><span>官方模式</span></a>
                    </c:otherwise>
                </c:choose>
                <%--<a href="<%=basePath%>ssc/wfsm/lskj.html?playGroupId=${playGroupId}" class="button"--%>
                   <%--data-id="btn-gdqc"><span>官方模式</span></a>--%>
            </div>
            <div class="content-block cl-8 cl-990">
                <div class="cl-1300">
                    <div class="cl-1301">
                        <div class="cl-1350">
                            <div class="content-block">
                                <c:choose>
                                    <c:when test="${playGroupId == 1}">
                                        <c:import url="rule/cqssc.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 2}">
                                        <c:import url="rule/tjssc.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 3}">
                                        <c:import url="rule/xjssc.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 4}">
                                        <c:import url="rule/pl3.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 5}">
                                        <c:import url="rule/fc3d.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 6}">
                                        <c:import url="rule/lhc.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 7}">
                                        <c:import url="rule/bj28.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 8}">
                                        <c:import url="rule/bjkl8.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 9}">
                                        <c:import url="rule/bjpk10.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 10}">
                                        <c:import url="rule/cqxync.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 11}">
                                        <c:import url="rule/gd10.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 12}">
                                        <c:import url="rule/ssq.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 13}">
                                        <c:import url="rule/sfssc.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 14}">
                                        <c:import url="rule/xyft.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 15}">
                                        <c:import url="rule/ffssc.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 16}">
                                        <c:import url="rule/efssc.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 17}">
                                        <c:import url="rule/wfssc.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 18}">
                                        <c:import url="rule/jsk3.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 19}">
                                        <c:import url="rule/hbk3.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 20}">
                                        <c:import url="rule/ahk3.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 21}">
                                        <c:import url="rule/jlk3.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 22}">
                                        <c:import url="rule/sflhc.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 23}">
                                        <c:import url="rule/jspk10.jsp"/>
                                    </c:when>
                                    <c:when test="${playGroupId == 24}">
                                        <c:import url="rule/gd11x5.jsp"/>
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../kjjl/common/template.jsp"/>
<script>
    var playGroupId = ${playGroupId};
</script>
<script>
    $(function () {
        autoGetServerTime();
    });

    function tishi() {
        Tools.toast('此彩种无该模式');
    }

    function autoGetServerTime() {
        ajaxRequest({
            url: "<%=basePath%>member/ajaxGetServerTime.json",
            success: function (json) {
                if (json.result != 1) {
                    return;
                }
                var sxarr;
                var str = parseInt(json.serverTime);
                var now = new Date(str);
                var year = now.getFullYear();
                var ss = year - 2008;//设定2008为初始年份
                var ssc = ss % 12;
                var ssyear = new Array("鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪");
                var sx = ssyear[ssc];
                var resultstr = strsx(sx);
                $(".sxpaixu").html(resultstr);
                $(".sxn").html(sx);
            }
        });
    }

    function strsx(sx) {
        var sxarr = '';
        var n, m = 0;
        var ssyear = new Array("鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪");
        if (sx == '鸡') {
            n = 9;
        } else if (sx == '狗') {
            n = 10;
        } else if (sx == '猪') {
            n = 11;
        } else if (sx == '鼠') {
            n = 0;
        } else if (sx == '牛') {
            n = 1;
        } else if (sx == '虎') {
            n = 2;
        } else if (sx == '兔') {
            n = 3;
        } else if (sx == '龙') {
            n = 4;
        } else if (sx == '蛇') {
            n = 5;
        } else if (sx == '马') {
            n = 6;
        } else if (sx == '羊') {
            n = 7;
        } else if (sx == '猴') {
            n = 8;
        }
        for (var i = 0; i < 12; i++) {
            (i + n) >= 12 ? m = (i + n - 12) : m = (i + n);
            if (i == 0) {
                sxarr += ssyear[m] + '&nbsp;01 , 13 , 25 , 37 , 49<br/>';
            } else if (i == 1) {
                sxarr += ssyear[m] + '&nbsp;12 , 24 , 36 , 48<br/>';
            } else if (i == 2) {
                sxarr += ssyear[m] + '&nbsp;11 , 23 , 35 , 47<br/>';
            } else if (i == 3) {
                sxarr += ssyear[m] + '&nbsp;10 , 22 , 34 , 46<br/>';
            } else if (i == 4) {
                sxarr += ssyear[m] + '&nbsp;09 , 21 , 33 , 45<br/>';
            } else if (i == 5) {
                sxarr += ssyear[m] + '&nbsp;08 , 20 , 32 , 44<br/>';
            } else if (i == 6) {
                sxarr += ssyear[m] + '&nbsp;07 , 19 , 31 , 43<br/>';
            } else if (i == 7) {
                sxarr += ssyear[m] + '&nbsp;06 , 18 , 30 , 42<br/>';
            } else if (i == 8) {
                sxarr += ssyear[m] + '&nbsp;05 , 17 , 29 , 41<br/>';
            } else if (i == 9) {
                sxarr += ssyear[m] + '&nbsp;04 , 16 , 28 , 40<br/>';
            } else if (i == 10) {
                sxarr += ssyear[m] + '&nbsp;03 , 15 , 27 , 39<br/>';
            } else if (i == 11) {
                sxarr += ssyear[m] + '&nbsp;02 , 14 , 26 , 38<br/>';
            }
        }
        return sxarr;
    }
</script>
<c:import url="../../common/bodyEnd.jsp"/>