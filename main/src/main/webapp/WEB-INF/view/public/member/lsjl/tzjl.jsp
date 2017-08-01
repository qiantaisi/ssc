<%@ page import="org.apache.commons.lang3.time.DateFormatUtils" %>
<%@ page import="java.util.Date" %>
<%@ page import="org.apache.commons.lang3.time.DateUtils" %>
<%@ page import="project38.api.common.utils.JSONUtils" %>
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
        <c:import url="common/nav.jsp" />
        <h2>
            <div class="eveb_search eveb_search_h2">
                <input type="hidden" name="pageIndex" value="1"/>
                彩种：
                <select name="playGroupId" id="playGroupId">
                    <option value="">所有</option>
                </select>
                玩法：
                <select name="playId" id="playId">
                </select>
                状态：
                <select name="status" id="status">
                    <option value="">所有</option>
                    <option value="0">未结算</option>
                    <option value="1">已结算</option>
                </select>
                　起止时间：
                <input name="starttime" id="starttime"
                       value="<%=DateFormatUtils.format(DateUtils.addDays(new Date(), 0), "yyyy-MM-dd 00:00")%>"
                       type="text" size="11" class="suminp"
                       onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})"> -
                <input name="endtime"
                       id="endtime" type="text"
                       size="11"
                       value="<%=DateFormatUtils.format(DateUtils.addDays(new Date(), 1), "yyyy-MM-dd 00:00")%>"
                       class="suminp"
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
                <th>注单号</th>
                <th>时间</th>
                <th>彩种</th>
                <th>玩法</th>
                <th>赔率</th>
                <th>期号</th>
                <th>投注内容</th>
                <th>注数</th>
                <th>投注金额</th>
                <th>中奖金额</th>
                <th>盈亏</th>
                <th>状态</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        <div class="eveb_amount fl">当前小计<span id="pageMoney">0</span>元，总计<span id="totalMoney">0</span>元，当前盈亏<span id="pageWinOrLoseMoney">0</span>元，总盈亏<span id="totalWinOrLoseMoney">0</span>元</div>
        <div class="eveb_page fr">
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<script>
    var sscPlayGroupList = [];
    var selectOptionData = <%=JSONUtils.toJSONStr(request.getAttribute("sscplaylist"))%>;

    function getPlayGroupName(playGroupId) {
        for (var i = 0; i < selectOptionData.sscPlayGroupList.length; ++i) {
            if (playGroupId == selectOptionData.sscPlayGroupList[i].id) {
                return selectOptionData.sscPlayGroupList[i].name;
            }
        }
        return '';
    }

    function getPlayName(playId) {
        for (var i = 0; i < selectOptionData.sscPlayList.length; ++i) {
            if (playId == selectOptionData.sscPlayList[i].id) {
                return selectOptionData.sscPlayList[i].name;
            }
        }
        return '';
    }

    $(function () {
        $.each(selectOptionData.sscPlayGroupList, function (index, value) {
            sscPlayGroupList[value.id] = {
                id: value.id,
                name: value.name,
                sscPlayList: []
            };
        });

        $.each(selectOptionData.sscPlayList, function (index, value) {
            sscPlayGroupList[value.playGroupId].sscPlayList.push({
                id: value.id,
                name: value.name
            });
        });

        var str = '<option value="">所有</option>';
        $.each(sscPlayGroupList, function (index, value) {
            if (typeof value != 'undefined') {
                str += '<option value="' + value.id + '">' + value.name + '</option>';
            }
        });
        $("#playGroupId").html(str);
        $("#playId").html('<option value="">所有</option>');

        //选中下拉框时触发事件
        $("#playGroupId").change(function () {
            var value = $(this).val();
            if (value == '') {
                $("#playId").html('<option value="">所有</option>');
                return;
            }

            var str = '<option value="">所有</option>';
            $.each(sscPlayGroupList[value].sscPlayList, function (index, value) {
                str += '<option value="' + value.id + '">' + value.name + '</option>';
            });
            $("#playId").html(str);
        });
//        generateLabel($("#status").val());
        getTzjlData();
    });

    function goPage(pageIndex) {
        $("input[name='pageIndex']").val(pageIndex);
        getTzjlData();
    }
    function shaixuan() {
        $("input[name='pageIndex']").val(1);
        getTzjlData();
    }
    function getCaizhong() {

    }
    function generateLabel(sgpid) {
        if (sgpid != '') {
            $.post("<%=basePath%>member/getSscPlayGroup.json", {}, function (json) {
                var optionStr = '<option value="">所有</option>';
                $.each(json.sscPlayList, function (index, value) {
                    if (value.playGroupId == sgpid) {
                        optionStr += '<option value="' + index + '">' + value.name + '</option>';
                    }
                });
                $("#selectStr").html(optionStr);
            }, "json");
        } else {
            $("#selectStr").html('<option value="">所有</option>');
        }
    }


    function getTzjlData() {
        ajaxRequest({
            url: "<%=basePath%>member/ajaxGetTzjl.json",
            data: {
                pageIndex: $("input[name='pageIndex']").val(),
                startTime: $("input[name='starttime']").val(),
                endTime: $("input[name='endtime']").val(),
                pageSize: "6",
                playGroupId: $("select[name='playGroupId']").val(),
                playId: $("select[name='playId']").val(),
                status: $("select[name='status']").val()
            },
            beforeSend: function () {
                $("#dataTable tbody").html('<tr><td colspan="13" styl="text-align:center;"><img src="${resPath}img/base_loading.gif"/></td></tr>');
                $("#pageMoney").html(0);
                $("#totalMoney").html(0);
                $("#pageWinOrLoseMoney").html(0);
                $("#totalWinOrLoseMoney").html(0);

                $(".eveb_page").html('');
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }

                if (json.sscBetsList.length == 0) {
                    $("#dataTable tbody").html('<tr><td colspan="13" styl="text-align:center;">暂无数据</td></tr>');
                    return;
                }

                $("input[name='pageIndex']").val(json.pageNum);

                // 数据
                var str = '';
                $.each(json.sscBetsList, function (index, value) {
                    var currentPageNum = (json.pageNum - 1) * json.pageSize;
                    str += '<tr>';
                    str += '<td>' + (index + currentPageNum + 1) + '</td>';
                    str += '<td>' + value.orderNumber + '</td>';
                    str += '<td>' + Tools.formatDate(value.createTime) + '</td>';
                    str += '<td>' + getPlayGroupName(value.playGroupId) + '</td>';
                    str += '<td>' + getPlayName(value.playId) + '</td>';
                    str += '<td>' + value.playPl + '</td>';
                    str += '<td>' + value.number + '</td>';
                    str += '<td class="content-tzjl">' + value.content + '</td>';
                    str += '<td>' + value.zhushu + '</td>';
                    str += '<td>' + value.totalMoney + '</td>';
                    str += '<td>' + value.zjMoney + '</td>';
                    str += '<td>';
                    if (value.status == 1) {
                        var tmp = parseFloat(value.winOrLose);
                        if (tmp > 0) {
                            str += '<font style="color:green">+' + tmp + '</font>'
                        } else if (tmp < 0) {
                            str += '<font style="color:red">' + tmp + '</font>'
                        } else {
                            str += '<font>' + tmp + '</font>'
                        }
                    } else {
                        str += '0';
                    }
                    str += '</td>';
                    str += '<td>';
                    if (value.status == 0) {
                        str += '未结算';
                    } else if (value.status == 1) {
                        str += '已结算';
                    } else if (value.status == 2) {
                        str += '已撤单';
                    }
                    str += '</td>';
                    str += '</tr>';
                });
                $("#dataTable tbody").html(str);
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

                $("#pageMoney").html(json.pageMoney);
                $("#totalMoney").html(json.totalMoney);
                $("#pageWinOrLoseMoney").html(json.pageWinOrLoseMoney);
                $("#totalWinOrLoseMoney").html(json.totalWinOrLoseMoney);
            }

        });

    }
</script>