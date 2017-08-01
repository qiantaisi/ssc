<%@ page import="org.apache.commons.lang3.time.DateFormatUtils" %>
<%@ page import="java.util.Date" %>
<%@ page import="org.apache.commons.lang3.time.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="help_r_main">
    <div class="eveb_content">
        <c:import url="common/top.jsp" />
        <c:import url="common/nav.jsp">
            <c:param name="type" value="3" />
        </c:import>
        <h2>
            <div clproject38.apiass="eveb_search eveb_search_h2">
                时间：
                <input name="starttime" id="starttime" type="text" size="11" class="suminp"
                       onclick="laydate({istime: true, format: 'YYYY-MM-DD'})" value="<%=DateFormatUtils.format(project38.api.common.utils.DateUtils.getMonthStart(), "yyyy-MM-dd")%>"> -
                <input name="endtime" id="endtime" type="text" size="11" class="suminp"
                       onclick="laydate({istime: true, format: 'YYYY-MM-DD'})" value="<%=DateFormatUtils.format(project38.api.common.utils.DateUtils.getMonthEnd(), "yyyy-MM-dd")%>">
                <a href="javascript:void(0)" class="button_small button_1" onclick="shaixuan()">筛选</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchDayNoHM(1)">今日</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchDayNoHM(3)">3天</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchDayNoHM(7)">本周</a>
            </div>
        </h2>
        <table class="eveb_box eveb_table" id="dataTable">
            <thead>
            <tr>
                <th>旗下会员总数</th>
                <th>有效会员总数</th>
                <th>存款次数</th>
                <th>存款金额</th>
                <th>取款次数</th>
                <th>取款金额</th>
                <th>有效投注</th>
                <th>代理佣金</th>
                <th>返点比例（%）</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        <div class="eveb_page fr">
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<c:import url="common/commonJs.jsp" />
<script>
    $(function () {
        getData();
    });
    function goPage(pageIndex) {
        $("input[name='pageIndex']").val(pageIndex);
        getData();
    }
    function shaixuan() {
        $("input[name='pageIndex']").val(1);
        getData();
    }

    function getData() {
        ajaxRequest({
            url: "<%=basePath%>agent/ajaxGetAgentReport.json",
            data: {
                startTime: $("input[name='starttime']").val(),
                endTime: $("input[name='endtime']").val()
            },
            beforeSend: function () {
                $("#dataTable tbody").html('<tr><td colspan="8" styl="text-align:center;"><img src="${resPath}img/base_loading.gif"/></td></tr>');
                $(".eveb_page").html('');
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }

                // 数据
                var str = ''
                str += '<tr>';
                str += '<td>' + json.userCount + '</td>';
                str += '<td>' + json.effectiveUserCount + '</td>';
                str += '<td>' + json.depositCount + '</td>';
                str += '<td>' + json.depositMoney + '</td>';
                str += '<td>' + json.withdrawCount + '</td>';
                str += '<td>' + json.withdrawMoney + '</td>';
                str += '<td>' + json.effectiveMoney + '</td>';
                str += '<td>' + json.sscYjTotalMoney + '</td>';
                str += '<td>${userSession.fandian}</td>';
                str += '</tr>';
                $("#dataTable tbody").html(str);
            }
        });
    }
</script>
<c:import url="../common/bodyEnd.jsp"/>