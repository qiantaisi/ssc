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
            <c:param name="type" value="4" />
        </c:import>
        <h2>
            <div class="eveb_search eveb_search_h2">
                <input type="hidden" name="pageIndex"/>
                会员账号：
                <input type="text" class="suminp" name="account">
                类型
                <select name="type" id="type">
                    <option value="">所有</option>
                    <option value="9">彩金/入款优惠</option>
                    <option value="3">充值/用户入款</option>
                    <option value="2">提现/用户出款</option>
                    <option value="11">投注/投注扣款</option>
                    <option value="12">派奖/投注派奖</option>
                    <option value="13">撤单/投注撤单</option>
                    <option value="14">手动扣款</option>
                    <option value="15">手动存款</option>
                    <option value="16">提现/用户出款（拒绝）</option>
                    <option value="17">彩票返水</option>
                    <option value="18">彩票返点</option>
                    <option value="19">代理佣金</option>
                </select>
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
                <th>所属</th>
                <th>变动金额</th>
                <th>余额</th>
                <th>时间</th>
                <th>类型</th>
                <th>备注</th>
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
            url: "<%=basePath%>agent/ajaxGetLiushui.json",
            data: {
                pageIndex: $("input[name='pageIndex']").val(),
                startTime: $("input[name='starttime']").val(),
                endTime: $("input[name='endtime']").val(),
                pageSize: "6",
                type: $("select[name='type']").val(),
                account: $("input[name='account']").val()
            },
            beforeSend: function () {
                $("#dataTable tbody").html('<tr><td colspan="8" styl="text-align:center;"><img src="${resPath}img/base_loading.gif"/></td></tr>');
                $(".eveb_page").html('');
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }
                if (json.agentTdlsList.length == 0) {
                    $("#dataTable tbody").html('<tr><td colspan="8" styl="text-align:center;">暂无数据</td></tr>');
                    return;
                }
                $("input[name='pageIndex']").val(json.pageNum);

                // 数据
                var str = ''
                $.each(json.agentTdlsList, function (index, value) {
                    var currentPageNum = (json.pageNum - 1) * json.pageSize + 1;
                    str += '<tr>';
                    str += '<td>' + (index + currentPageNum) + '</td>';
                    str += '<td>' + value.account + '</td>';
                    str += '<td>${userSession.account}</td>';
                    str += '<td><font color="' + (value.money > 0 ? 'green' : 'red') + '">' + value.money + '</font></td>';
                    str += '<td>' + value.leftCoin + '</td>';
                    str += '<td>' + Tools.formatDate(value.createTime) + '</td>';
                    str += '<td>';
                    if (value.coinOperType == 9) {
                        str += "彩金/入款优惠";
                    } else if (value.coinOperType == 3) {
                        str += "充值/用户入款";
                    } else if (value.coinOperType == 2) {
                        str += "提现/用户出款";
                    } else if (value.coinOperType == 11) {
                        str += "投注/投注扣款";
                    } else if (value.coinOperType == 12) {
                        str += "派奖/投注派奖";
                    } else if (value.coinOperType == 13) {
                        str += "撤单/投注撤单";
                    } else if (value.coinOperType == 14) {
                        str += "手动扣款";
                    } else if (value.coinOperType == 15) {
                        str += "手动存款";
                    } else if (value.coinOperType == 16) {
                        str += "提现/用户出款（拒绝）";
                    } else if (value.coinOperType == 17) {
                        str += "彩票返水";
                    } else if (value.coinOperType == 18) {
                        str += "彩票返点";
                    } else if (value.coinOperType == 19) {
                        str += "代理佣金";
                    }
                    str += '</td>';
                    str += '<td>' + Tools.null2Str(value.remarks) + '</td>';
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