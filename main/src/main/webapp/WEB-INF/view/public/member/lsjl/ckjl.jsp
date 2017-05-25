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
        <c:import url="common/nav.jsp" />
        <h2>
            <div class="eveb_search eveb_search_h2">
                <input type="hidden" name="pageIndex"/>
                类型：
                <select name="type">
                    <option value="">所有</option>
                    <option value="1">银行转账</option>
                    <option value="2">支付宝转账</option>
                    <option value="3">微信转账</option>
                    <option value="4">财付通转账</option>
                    <option value="5">在线支付</option>
                </select>
                状态：
                <select name="status" id="status">
                    <option value="">所有</option>
                    <option value="0">未处理</option>
                    <option value="1">已通过</option>
                    <option value="2">已拒绝</option>
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
                <th>序号</th>
                <th>单号</th>
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
        ajaxRequest({
            url: "<%=basePath%>member/ajaxGetCkjl.json",
            data: {
                pageIndex: $("input[name='pageIndex']").val(),
                startTime: $("input[name='starttime']").val(),
                endTime: $("input[name='endtime']").val(),
                pageSize: "10",
                type: $("select[name='type']").val(),
                status: $("select[name='status']").val()
            },
            beforeSend: function () {
                $("#dataTable tbody").html('<tr><td colspan="7" styl="text-align:center;"><img src="${resPath}img/base_loading.gif"/></td></tr>');
                $("#pageMoney").html(0);
                $("#totalMoney").html(0);
                $(".eveb_page").html('');
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }
                if (json.userDepositList.length == 0) {
                    $("#dataTable tbody").html('<tr><td colspan="7" styl="text-align:center;">暂无数据</td></tr>');
                    return;
                }
                $("input[name='pageIndex']").val(json.pageNum);

                // 数据
                var str = ''
                $.each(json.userDepositList, function (index, value) {
                    var currentPageNum = (json.pageNum - 1) * json.pageSize + 1;
                    str += '<tr>';
                    str += '<td>' + (index + currentPageNum) + '</td>';
                    str += '<td>' + value.orderNo + '</td>';
                    str += '<td>' + Tools.formatDate(value.time) + '</td>';
                    str += '<td>';
                    if (1 == value.type) {
                        str += '银行转账'
                    } else if (2 == value.type) {
                        str += '支付宝转账'
                    } else if (3 == value.type) {
                        str += '微信转账'
                    } else if (4 == value.type) {
                        str += '财付通转账'
                    } else if (5 == value.type) {
                        str += '在线支付'
                    }
                    str += '</td>';
                    str += '<td class="light">' + value.money + '</td>';
                    str += '<td>' + Tools.null2Str(value.remarks) + '</td>';
                    str += '<td>';
                    if (value.status == 0) {
                        str += '未处理';
                    } else if (value.status == 1) {
                        str += '已通过';
                    } else if (value.status == 2) {
                        str += '已拒绝';
                    }
                    str += '</td>';
                    str += '</tr>';
                });
                $("#dataTable tbody").html(str);

                $("#pageMoney").html(json.pageMoney);
                $("#totalMoney").html(json.totalMoney);

                // 分页
                str = '';
                str += '<span style="margin:0 3px;float:left;width:auto;padding:0 5px;height:25px;line-height:25px;">总共' + (Math.ceil(json.total / json.pageSize)) + '页，' + json.total + '条，当前第' + json.pageNum + '页</span>';
                if (json.hasPreviousPage) {
                    str += '<a href="javascript:void(0)" onclick="goPage(' + (json.prePage) + ')" style="margin:0 3px;float:left;width:auto;padding:0 5px;">上一页</a>';
                } else {
                    str += '<a href="javascript:void(0)" style="margin:0 3px;float:left;width:auto;padding:0 5px;">上一页</a>';
                }
                str += '<span style="margin:0 3px;float:left;width:auto;padding:0 5px;height:25px;line-height:25px;">跳转到</span>';
                str += '<input type="text" id="pageNum" style="margin:0 3px;float:left;border:1px solid #eee;width:30px;line-height:25px;height:25px;" value="' + json.pageNum + '" />';
                str += '<button onclick="goPage(document.getElementById(\'pageNum\').value)" type="text" style="margin:0 3px;float:left;border:1px solid #eee;width:30px;line-height:25px;height:25px;background:#fa6200;padding:0 5px;width:auto;color:#fff;font-size:14px;" value="0">确定</button>';
                if (json.hasNextPage) {
                    str += '<a href="javascript:void(0)" onclick="goPage(' + (json.nextPage) + ')" style="margin:0 3px;float:left;width:auto;padding:0 5px;">下一页</a>';
                } else {
                    str += '<a href="javascript:void(0)" style="margin:0 3px;float:left;width:auto;padding:0 5px;">下一页</a>';
                }
                $(".eveb_page").html(str);
            }
        });
    }
</script>
<c:import url="../common/bodyEnd.jsp"/>