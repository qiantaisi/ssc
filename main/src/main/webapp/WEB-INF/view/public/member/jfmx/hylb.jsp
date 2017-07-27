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
        <c:import url="common/top.jsp" />
        <c:import url="common/nav.jsp">
            <c:param name="type" value="1" />
        </c:import>
        <h2>
            <div class="eveb_search eveb_search_h2">
                <input type="hidden" name="pageIndex"/>
                会员账号：
                <input type="text" class="suminp" name="account">
                注册时间：
                <input name="starttime" id="starttime" type="text" size="11" class="suminp"
                       onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})"> -
                <input name="endtime" id="endtime" type="text" size="11" class="suminp"
                       onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})">
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
                <th>用户账号</th>
                <th>所属</th>
                <th>余额</th>
                <th>输赢</th>
                <th>注册日期</th>
                <th>有效投注</th>
                <th>佣金贡献（元）</th>
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
            url: "<%=basePath%>agent/ajaxGetUserList.json",
            data: {
                pageIndex: $("input[name='pageIndex']").val(),
                startTime: $("input[name='starttime']").val(),
                endTime: $("input[name='endtime']").val(),
                pageSize: "50",
                account: $("input[name='account']").val()
            },
            beforeSend: function () {
                $("#dataTable tbody").html('<tr><td colspan="9" styl="text-align:center;"><img src="${resPath}img/base_loading.gif"/></td></tr>');
                $(".eveb_page").html('');
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }
                if (json.agentUserList.length == 0) {
                    $("#dataTable tbody").html('<tr><td colspan="9" styl="text-align:center;">暂无数据</td></tr>');
                    return;
                }
                $("input[name='pageIndex']").val(json.pageNum);

                // 数据
                var str = ''
                $.each(json.agentUserList, function (index, value) {
                    var currentPageNum = (json.pageNum - 1) * json.pageSize + 1;
                    str += '<tr>';
                    str += '<td>' + (parseInt(index) + 1) + '</td>';
                    str += '<td>' + value.account + '</td>';
                    str += '<td>${userSession.account}</td>';
                    str += '<td>' + value.balance + '</td>';
                    str += '<td>' + value.winOrLose + '</td>';
                    str += '<td>' + Tools.formatDate(value.registerTime) + '</td>';
                    str += '<td>' + value.totalEffectiveBetMoney + '</td>';
                    str += '<td>' + value.totalFandianMoney + '</td>';
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
                str += '<button class="letterbtn-bg" onclick="goPage(document.getElementById(\'pageNum\').value)" type="text" style="margin:0 3px;float:left;border:1px solid #eee;width:30px;line-height:25px;height:25px;background:#fa6200;padding:0 5px;width:auto;color:#fff;font-size:14px;" value="0">确定</button>';
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