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
            <c:param name="type" value="7" />
        </c:import>
        <h2>
            <div class="eveb_search eveb_search_h2">
                <input type="hidden" name="pageIndex"/>
                <%--类型：--%>
                <%--<select name="type" id="type">--%>
                    <%--<option value="">所有</option>--%>
                    <%--<option value="1">彩票</option>--%>
                <%--</select>--%>
                时间：
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
                <th>用户账号</th>
                <%--<th>类型</th>--%>
                <th>注单号</th>
                <th>下注金额</th>
                <th>返点比例（%）</th>
                <th>佣金</th>
                <th>时间</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        <div class="eveb_amount fl">当前小计：下注<span id="pageEffectiveBetMoney">0</span>元，佣金<span id="pageYjMoney">0</span>，总计：下注<span id="totalEffectiveBetMoney">0</span>元，佣金<span id="totalYjMoney">0</span>元</div>
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
            url: "<%=basePath%>agent/ajaxGetUserYjList.json",
            data: {
                pageIndex: $("input[name='pageIndex']").val(),
                startTime: $("input[name='starttime']").val(),
                endTime: $("input[name='endtime']").val(),
                pageSize: "6",
                account: $("input[name='account']").val()
            },
            beforeSend: function () {
                $("#dataTable tbody").html('<tr><td colspan="7" styl="text-align:center;"><img src="${resPath}img/base_loading.gif"/></td></tr>');
                $(".eveb_page").html('');
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }
                if (json.agentUserYjList.length == 0) {
                    $("#dataTable tbody").html('<tr><td colspan="7" styl="text-align:center;">暂无数据</td></tr>');
                    return;
                }
                $("input[name='pageIndex']").val(json.pageNum);

                // 数据
                var str = ''
                $.each(json.agentUserYjList, function (index, value) {
                    var currentPageNum = (json.pageNum - 1) * json.pageSize + 1;
                    str += '<tr>';
                    str += '<td>' + (currentPageNum + index) + '</td>';
                    str += '<td>' + value.userAccount + '</td>';
//                    str += '<td>';
//                    if (value.type == 1) {
//                        str += '彩票'
//                    }
//                    str += '</td>';
                    str += '<td>' + value.orderNo + '</td>';
                    str += '<td>' + value.betMoney + '</td>';
                    str += '<td>' + value.fandian + '</td>';
                    str += '<td>' + value.yjMoney + '</td>';
                    str += '<td>' + Tools.formatDate(value.createTime) + '</td>';
                    str += '</tr>';
                });
                $("#dataTable tbody").html(str);

                $("#pageEffectiveBetMoney").html(json.pageEffectiveBetMoney);
                $("#totalEffectiveBetMoney").html(json.totalEffectiveBetMoney);
                $("#pageYjMoney").html(json.pageYjMoney);
                $("#totalYjMoney").html(json.totalYjMoney);

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

    function enableUser(userId) {
        enableOrDisable(userId, true);
    }

    function disableUser(userId) {
        enableOrDisable(userId, false);
    }
    function enableOrDisable(userId, isEnable) {
        var info = isEnable ? '确认启用该会员吗？' : '确认禁用该会员吗？';
        if (!confirm(info)) {
            return;
        }

        ajaxRequest({
            url: "<%=basePath%>agent/agentEnableUser.json",
            data: {
                userId: userId,
                isEnable: isEnable
            },
            beforeSend: function() {
                parent.showLoading();
            },
            success: function(json) {
                if (json.result == 1) {
                    Tools.toast("操作成功");
                    getData();
                } else {
                    Tools.toast("操作失败：" + json.description);
                }
                parent.hideLoading();
            }
        });
    }
</script>
<c:import url="../common/bodyEnd.jsp"/>