<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<%--<div class="game_tables">--%>
    <%--<table width="100%" border="0" class="game_tab" id="bottom_zs_table_head">--%>
        <%--<tbody>--%>
        <%--<tr>--%>
            <%--<th class="game_result choose" data-position="0">第一球</th>--%>
            <%--<th class="game_result" data-position="1">第二球</th>--%>
            <%--<th class="game_result" data-position="2">第三球</th>--%>
            <%--<th class="game_result" data-position="zh">和值</th>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
    <%--</table>--%>
    <%--<table width="100%" border="0" class="game_tab" id="bottom_zs_table_select">--%>
        <%--<tbody>--%>
        <%--<tr>--%>
            <%--<th class="game_result choose" data-type="dx">大小</th>--%>
            <%--<th class="game_result" data-type="ds">单双</th>--%>
            <%--<th></th>--%>
            <%--<th></th>--%>
            <%--<th></th>--%>
            <%--<th></th>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
    <%--</table>--%>
    <%--<div id="bottom_zs_table_content">--%>
    <%--</div>--%>
<%--</div>--%>
<script>
    $(function () {
        $("#bottom_zs_table_head tbody tr th, #bottom_zs_table_select tbody tr th").click(function () {
            $(this).parent().find(".choose").removeClass("choose");
            $(this).addClass("choose");
            changeTable();
        });

        refreshViewRight();
    });

    function changeTable() {
        var position = $("#bottom_zs_table_head tbody tr th.choose").data("position");
        var type = $("#bottom_zs_table_select tbody tr th.choose").data("type");
        $("#bottom_zs_table_content table").hide();

//        $('#bottom_zs_table_' + position + '_' + type).show();
    }

    function refreshViewRight() {
        ajaxRequest({
            url: "<%=basePath%>ssc/ajaxGetHistory.json",
            data: {
                pageIndex: 1,
                pageSize: 30,
                playGroupId: playGroupId
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }
                var data = json.sscHistoryList;
                data.reverse();

//                renderView(data);
                changeTable();
                renderViewRight(data);
            }
        });
    }

    function renderViewRight(json) {
        var result = {
            da: {name: '和值-大', num: 0},
            xiao: {name: '和值-小', num: 0},
            dan: {name: '和值-单', num: 0},
            shuang: {name: '和值-双', num: 0},
            dadan: {name: '和值-大单', num: 0},
            xiaodan: {name: '和值-小单', num: 0},
            dashuang: {name: '和值-大双', num: 0},
            xiaoshuang: {name: '和值-小双', num: 0},
            jida: {name: '和值-极大', num: 0},
            jixiao: {name: '和值-极小', num: 0},
            hongbo: {name: '和值-红波', num: 0},
            lvbo: {name: '和值-绿波', num: 0},
            lanbo: {name: '和值-蓝波', num: 0},
            baozi: {name: '和值-豹子', num: 0}
        };

        for (var i = 0; i < json.length; ++i) {
            var value = json[i];
            var openCode = value.openCode.split(",");
            var num1 = Tools.parseInt(openCode[0]);
            var num2 = Tools.parseInt(openCode[1]);
            var num3 = Tools.parseInt(openCode[2]);

            var totalnum = num1 + num2 + num3;

            if(totalnum >= 24 || totalnum <= 27){
                result.da.num++;
            } else{
                result.xiao.num++;
            }

            if(totalnum % 2 == 0){
                result.shuang.num++;
            } else{
                result.dan.num++;
            }

            if ($.inArray(totalnum, [1, 3, 5, 7, 9, 11, 13]) >= 0) {
                result.xiaodan.num++;
            } else if ($.inArray(totalnum, [15, 17, 19, 21, 23, 25, 27]) >= 0) {
                result.dadan.num++;
            } else if ($.inArray(totalnum, [0, 2, 4, 6, 8, 10, 12]) >= 0) {
                result.xiaoshuang.num++;
            } else if ($.inArray(totalnum, [14, 16, 18, 20, 22, 24, 26]) >= 0) {
                result.dashuang.num++;
            }

            if ($.inArray(totalnum, [22, 23, 24, 25, 26, 27]) >= 0) {
                result.jida.num++;
            } else if ($.inArray(totalnum, [0, 1, 2, 3, 4, 5]) >= 0) {
                result.jixiao.num++;
            }

            if ($.inArray(totalnum, [1, 4, 7, 10, 16, 19, 22, 25]) >= 0) {
                result.lvbo.num++;
            } else if ($.inArray(totalnum, [2, 5, 8, 11, 17, 20, 23, 26]) >= 0) {
                result.lanbo.num++;
            } else if ($.inArray(totalnum, [3, 6, 9, 12, 15, 18, 21, 24]) >= 0) {
                result.hongbo.num++;
            }

            if(num1 == num2 && num3 == num2 && num1 == num3){
                result.baozi.num++;
            }

        }

        var arr = [];
        arr.push(result.da);
        arr.push(result.xiao);
        arr.push(result.dan);
        arr.push(result.shuang);
        arr.push(result.dadan);
        arr.push(result.xiaodan);
        arr.push(result.dashuang);
        arr.push(result.xiaoshuang);
        arr.push(result.jida);
        arr.push(result.jixiao);
        arr.push(result.lvbo);
        arr.push(result.hongbo);
        arr.push(result.lanbo);

        arr.sort(function (a, b) {
            var val1 = a.num;
            var val2 = b.num;
            if (val1 < val2) {
                return -1;
            } else if (val1 > val2) {
                return 1;
            } else {
                return 0;
            }
        });
        arr = arr.reverse();

        var str = '';
        str += '<div class="table-common table-border-color">';
        str += '<table width="100%" border="1">';
        str += '<tbody>';
        str += '<tr>';
        str += '<td colspan="2">长龙排行</td>';
        str += '</tr>';
        str += '<tr>';
        str += '<td colspan="2">统计至第' + json[json.length - 1].number + '期</td>';
        str += '</tr>';
        for (var i = 0; i < 10 && i < arr.length; ++i) {
            str += '<tr>';
            str += '<td width="142">' + arr[i].name + '</td>';
            str += '<td>' + arr[i].num + '</td>';
            str += '</tr>';
        }
        str += '</tbody>';
        str += '</table>';
        str += '</div>';
        $(".main-right").html(str);
    }

//    function renderView(json) {
//        var result = [];
//        for (var i = 0; i < 6; ++i) {
//            result[i] = {ds: [], dx: []};
//        }
//        var str = '';
//        $("#bottom_zs_table_head tbody tr th").each(function () {
//            var position = $(this).data("position");
//            if (position != 'zh') {
//                // 单双
//                str += '<table id="bottom_zs_table_' + position + '_ds" width="100%" border="0" class="resultLoad" style="display:none;">';
//                str += '<tbody>';
//                for (var i = 0; i < json.length; ++i) {
//                    var value = Tools.parseInt(json[i].openCode.split(",")[Tools.parseInt(position)]);
//
//                    var name = value % 2 == 0 ? '<font style="color:#e70f0f;">双</font>' : '<font style="color:#58adff;">单</font>';
//                    var x = 0, y = 0;
//
//                    if (result[Tools.parseInt(position)].ds.length != 0) {
//                        var preObj = result[Tools.parseInt(position)].ds[i - 1];
//                        if (preObj.name == name) {
//                            x = preObj.x;
//                            y = preObj.y + 1;
//                        } else {
//                            x = preObj.x + 1;
//                            y = 0;
//                        }
//                    }
//                    result[Tools.parseInt(position)].ds.push({
//                        name: name,
//                        x: x,
//                        y: y
//                    });
//                }
//
//                var maxX = 30;
//                var maxY = 0;
//                $.each(result[Tools.parseInt(position)].ds, function (index, value) {
//                    if (value.x > maxX) {
//                        maxX = value.x;
//                    }
//                    if (value.y > maxY) {
//                        maxY = value.y;
//                    }
//                });
//
//                for (var i = 0; i < maxY + 1; ++i) {
//                    str += '<tr class="resultLoad">';
//                    for (var j = 0; j < maxX + 1; ++j) {
//                        str += '<td>&nbsp;</td>';
//                    }
//                    str += '</tr>';
//                }
//                str += '</tbody>';
//                str += '</table>';
//
//
//                // 大小
//                str += '<table id="bottom_zs_table_' + position + '_dx" width="100%" border="0" class="resultLoad" style="display:none;">';
//                str += '<tbody>';
//                for (var i = 0; i < json.length; ++i) {
//                    var value = json[i].openCode.split(",")[Tools.parseInt(position)];
//                    var name = value >= 5 ? '<font style="color:#e70f0f;">大</font>' : '<font style="color:#58adff;">小</font>';
//                    var x = 0, y = 0;
//
//                    if (result[Tools.parseInt(position)].dx.length != 0) {
//                        var preObj = result[Tools.parseInt(position)].dx[i - 1];
//                        if (preObj.name == name) {
//                            x = preObj.x;
//                            y = preObj.y + 1;
//                        } else {
//                            x = preObj.x + 1;
//                            y = 0;
//                        }
//                    }
//                    result[Tools.parseInt(position)].dx.push({
//                        name: name,
//                        x: x,
//                        y: y
//                    });
//                }
//
//                var maxX = 30;
//                var maxY = 0;
//                $.each(result[Tools.parseInt(position)].dx, function (index, value) {
//                    if (value.x > maxX) {
//                        maxX = value.x;
//                    }
//                    if (value.y > maxY) {
//                        maxY = value.y;
//                    }
//                });
//
//                for (var i = 0; i < maxY + 1; ++i) {
//                    str += '<tr class="resultLoad">';
//                    for (var j = 0; j < maxX + 1; ++j) {
//                        str += '<td>&nbsp;</td>';
//                    }
//                    str += '</tr>';
//                }
//                str += '</tbody>';
//                str += '</table>';
//            } else {
//                // 单双
//                str += '<table id="bottom_zs_table_' + position + '_ds" width="100%" border="0" class="resultLoad" style="display:none;">';
//                str += '<tbody>';
//                for (var i = 0; i < json.length; ++i) {
//                    var value = 0;
//                    for (var j = 0, tmpArr = json[i].openCode.split(","); j < tmpArr.length; ++j) {
//                        value += Tools.parseInt(tmpArr[j]);
//                    }
//
//                    var name = value % 2 == 0 ? '<font style="color:#e70f0f;">双</font>' : '<font style="color:#58adff;">单</font>';
//                    var x = 0, y = 0;
//
//                    if (result[5].ds.length != 0) {
//                        var preObj = result[5].ds[i - 1];
//                        if (preObj.name == name) {
//                            x = preObj.x;
//                            y = preObj.y + 1;
//                        } else {
//                            x = preObj.x + 1;
//                            y = 0;
//                        }
//                    }
//                    result[5].ds.push({
//                        name: name,
//                        x: x,
//                        y: y
//                    });
//                }
//
//                var maxX = 30;
//                var maxY = 0;
//                $.each(result[5].ds, function (index, value) {
//                    if (value.x > maxX) {
//                        maxX = value.x;
//                    }
//                    if (value.y > maxY) {
//                        maxY = value.y;
//                    }
//                });
//
//                for (var i = 0; i < maxY + 1; ++i) {
//                    str += '<tr class="resultLoad">';
//                    for (var j = 0; j < maxX + 1; ++j) {
//                        str += '<td>&nbsp;</td>';
//                    }
//                    str += '</tr>';
//                }
//                str += '</tbody>';
//                str += '</table>';
//
//
//                // 大小
//                str += '<table id="bottom_zs_table_' + position + '_dx" width="100%" border="0" class="resultLoad" style="display:none;">';
//                str += '<tbody>';
//                for (var i = 0; i < json.length; ++i) {
//                    var value = 0;
//                    for (var j = 0, tmpArr = json[i].openCode.split(","); j < tmpArr.length; ++j) {
//                        value += Tools.parseInt(tmpArr[j]);
//                    }
//                    var name = value >= 14 ? '<font style="color:#e70f0f;">大</font>' : '<font style="color:#58adff;">小</font>';
//                    var x = 0, y = 0;
//
//                    if (result[5].dx.length != 0) {
//                        var preObj = result[5].dx[i - 1];
//                        if (preObj.name == name) {
//                            x = preObj.x;
//                            y = preObj.y + 1;
//                        } else {
//                            x = preObj.x + 1;
//                            y = 0;
//                        }
//                    }
//                    result[5].dx.push({
//                        name: name,
//                        x: x,
//                        y: y
//                    });
//                }
//
//                var maxX = 30;
//                var maxY = 0;
//                $.each(result[5].dx, function (index, value) {
//                    if (value.x > maxX) {
//                        maxX = value.x;
//                    }
//                    if (value.y > maxY) {
//                        maxY = value.y;
//                    }
//                });
//
//                for (var i = 0; i < maxY + 1; ++i) {
//                    str += '<tr class="resultLoad">';
//                    for (var j = 0; j < maxX + 1; ++j) {
//                        str += '<td>&nbsp;</td>';
//                    }
//                    str += '</tr>';
//                }
//                str += '</tbody>';
//                str += '</table>';
//            }
//        });
//
//        $("#bottom_zs_table_content").html(str);
//        for (var i = 0; i < 6; ++i) {
//            var value = result[i];
//
//            var pre = i == 5 ? 'zh' : i;
//            $.each(value.ds, function (index, value) {
//                $('#bottom_zs_table_' + pre + '_ds').find("tr").eq(value.y).find("td").eq(value.x).html(value.name);
//            });
//            $.each(value.dx, function (index, value) {
//                $('#bottom_zs_table_' + pre + '_dx').find("tr").eq(value.y).find("td").eq(value.x).html(value.name);
//            });
//        }
//    };
</script>
