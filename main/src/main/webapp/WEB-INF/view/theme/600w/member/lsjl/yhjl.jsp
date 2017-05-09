<%@ page import="org.apache.commons.lang3.time.DateFormatUtils" %>
<%@ page import="java.util.Date" %>
<%@ page import="org.apache.commons.lang3.time.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="help_r_main">
    <div class="eveb_content">
        <div class="eveb_nav_sub">
            <ul class="clearfix">
                <li><a href="javascript:void(0)" onclick="parent.getPage('lsjl/ckjl')">充值记录</a></li>
                <li><a href="javascript:void(0)" onclick="parent.getPage('lsjl/tkjl')">提现记录</a></li>
                <li><a href="javascript:void(0)" onclick="parent.getPage('lsjl/zzjl')">转账记录</a></li>
                <li><a href="javascript:void(0)" onclick="parent.getPage('lsjl/tzjl')">投注记录</a></li>
                <li class="on"><a href="javascript:void(0)" onclick="parent.getPage('lsjl/yhjl')">优惠记录</a></li>
            </ul>
        </div>
        <h2>
            <div class="eveb_search eveb_search_h2">
                <input type="hidden" name="pageIndex"/>
                类型：
                <select name="status" id="status">
                    <option value="">所有</option>
                    <option value="0">未处理</option>
                    <option value="1">已通过</option>
                    <option value="2">已拒绝</option>
                </select>
                状态：
                <select name="type">
                    <option value="">所有</option>
                    <option value="1">银行转账</option>
                    <option value="2">支付宝转账</option>
                    <option value="3">微信转账</option>
                    <option value="4">财付通转账</option>
                    <option value="5">在线支付</option>
                </select>
                　起止时间：
                <input name="starttime" id="starttime" type="text" size="11" class="suminp"
                       onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})"
                       value="<%=DateFormatUtils.format(DateUtils.addDays(new Date(), 0), "yyyy-MM-dd 00:00")%>"> -
                <input name="endtime" id="endtime" type="text" size="11" class="suminp"
                       onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})"
                       value="<%=DateFormatUtils.format(DateUtils.addDays(new Date(), 1), "yyyy-MM-dd 00:00")%>">
                <a href="javascript:void(0)" class="button_small button_1" onclick="shaixuan()">筛选</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(1)">今日</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(3)">3天</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(7)">本周</a>
            </div>
        </h2>
        <table class="eveb_box eveb_table" id="dataTable">
            <thead>
            <tr>
                <th>编号</th>
                <th>存款编号</th>
                <th>申请时间</th>
                <th>存款方式</th>
                <th>存款金额</th>
                <th>备注</th>
                <th>状态</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        <div class="eveb_amount fl">当前小计<span id="pageMoney"> 0 </span>元，总计<span id="totalMoney"> 0 </span>元</div>
        <div class="eveb_page fr">
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<script>
    $(function () {
        getCkjlData();
    });
    function goPage(pageIndex) {
        $("input[name='pageIndex']").val(pageIndex);
        getCkjlData();
    }
    function shaixuan() {
        $("input[name='pageIndex']").val(1);
        getCkjlData();
    }

    function getCkjlData() {
        $("#dataTable tbody").html('<tr><td colspan="7" styl="text-align:center;">暂无数据</td></tr>');
        <%--ajaxRequest({--%>
            <%--url: "<%=basePath%>member/ajaxGetCkjl.json",--%>
            <%--data: {--%>
                <%--pageIndex: $("input[name='pageIndex']").val(),--%>
                <%--startTime: $("input[name='starttime']").val(),--%>
                <%--endTime: $("input[name='endtime']").val(),--%>
                <%--pageSize: "10",--%>
                <%--type: $("select[name='type']").val(),--%>
                <%--status: $("select[name='status']").val()--%>
            <%--},--%>
            <%--beforeSend: function () {--%>
                <%--$("#dataTable tbody").html('<tr><td colspan="7" styl="text-align:center;"><img src="${resPath}img/base_loading.gif"/></td></tr>');--%>
                <%--$("#pageMoney").html(0);--%>
                <%--$("#totalMoney").html(0);--%>
                <%--$(".eveb_page").html('');--%>
            <%--},--%>
            <%--success: function (json) {--%>
                <%--if (json.result != 1) {--%>
                    <%--return;--%>
                <%--}--%>
                <%--if (json.userDepositList.length == 0) {--%>
                    <%--$("#dataTable tbody").html('<tr><td colspan="7" styl="text-align:center;">暂无数据</td></tr>');--%>
                    <%--return;--%>
                <%--}--%>
                <%--$("input[name='pageIndex']").val(json.pageNum);--%>

                <%--// 数据--%>
                <%--var str = ''--%>
                <%--$.each(json.userDepositList, function (index, value) {--%>
                    <%--var currentPageNum = (json.pageNum) * json.pageSize;--%>
                    <%--str += '<tr>';--%>
                    <%--str += '<td>' + (index + currentPageNum) + '</td>';--%>
                    <%--str += '<td>' + value.orderNo + '</td>';--%>
                    <%--str += '<td>' + Tools.formatDate(value.createTime) + '</td>';--%>
                    <%--str += '<td>';--%>
                    <%--if (1 == value.type) {--%>
                        <%--str += '银行转账'--%>
                    <%--} else if (2 == value.type) {--%>
                        <%--str += '支付宝转账'--%>
                    <%--} else if (3 == value.type) {--%>
                        <%--str += '微信转账'--%>
                    <%--} else if (4 == value.type) {--%>
                        <%--str += '财付通转账'--%>
                    <%--} else if (5 == value.type) {--%>
                        <%--str += '在线支付'--%>
                    <%--}--%>
                    <%--str += '</td>';--%>
                    <%--str += '<td class="light">' + value.money + '</td>';--%>
                    <%--str += '<td>' + Tools.null2Str(value.remarks) + '</td>';--%>
                    <%--str += '<td>';--%>
                    <%--if (value.status == 0) {--%>
                        <%--str += '未处理';--%>
                    <%--} else if (value.status == 1) {--%>
                        <%--str += '已通过';--%>
                    <%--} else if (value.status == 2) {--%>
                        <%--str += '已拒绝';--%>
                    <%--}--%>
                    <%--str += '</td>';--%>
                    <%--str += '</tr>';--%>
                <%--});--%>
                <%--$("#dataTable tbody").html(str);--%>

                <%--$("#pageMoney").html(json.pageMoney);--%>
                <%--$("#totalMoney").html(json.totalMoney);--%>

                <%--// 分页--%>
                <%--str = '';--%>
                <%--if (json.hasPreviousPage) {--%>
                    <%--str += '<a href="javascript:void(0)" onclick="goPage(' + (json.prePage) + ')">&lt;</a>';--%>
                <%--}--%>
                <%--$.each(json.navigatepageNums, function (index, value) {--%>
                    <%--str += '<a href="javascript:void(0)" class="' + (value == json.pageNum ? 'on' : '') + '" onclick="goPage(' + (value) + ')">' + value + '</a>';--%>
                <%--});--%>
                <%--if (json.hasNextPage) {--%>
                    <%--str += '<a href="javascript:void(0)" onclick="goPage(' + (json.nextPage) + ')">&gt;</a>';--%>
                <%--}--%>
                <%--$(".eveb_page").html(str);--%>
            <%--}--%>
        <%--});--%>
    }
</script>