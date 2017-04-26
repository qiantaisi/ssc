<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="game_tables regame_tables">
    <table width="100%" class="game_tab" id="bottom_zs_table_head" style="border-bottom: 1px solid #A69B91;">
        <tbody>
        <tr>
            <th class="game_result" data-position="0">第一球</th>
            <th class="game_result" data-position="1">第二球</th>
            <th class="game_result" data-position="2">第三球</th>
            <th class="game_result" data-position="3">第四球</th>
            <th class="game_result" data-position="4">第五球</th>
            <th class="game_result" data-position="zh">总和</th>
        </tr>
        </tbody>
    </table>
    <table width="100%" border="0">
        <tbody>
        <tr>
            <th class="game_result" data-type="dx" style="text-align: left; padding-left: 10px; color: gray;font-size: 14px;">近30期长龙走势</th>
        </tr>
        </tbody>
    </table>
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
    <div id="bottom_zs_table_content">
    </div>
</div>

<script>
    $(function () {
        $("#bottom_zs_table_head tbody tr th, #bottom_zs_table_select tbody tr th").click(function () {
            $(this).parent().find(".choose").removeClass("choose");
            $(this).addClass("choose");
//            changeTable();
        });

        refreshViewRight();
    });

    //    function changeTable() {
    //        var position = $("#bottom_zs_table_head tbody tr th.choose").data("position");
    //        var type = $("#bottom_zs_table_select tbody tr th.choose").data("type");
    //        $("#bottom_zs_table_content table").hide();
    //
    //        $('#bottom_zs_table_' + position + '_' + type).show();
    //    }

    function refreshViewRight() {
        ajaxRequest({
            url: "<%=basePath%>ssc/ajaxGetHistory.json",
            data: {
                pageIndex: 1,
                pageSize: 30,
                playGroupId: ${param.playGroupId}
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }
                var data = json.sscHistoryList;
                data.reverse();

                renderView(data);
//                changeTable();
            }
        });
    }


    function renderView(json) {
        var result = [];
        for (var i = 0; i < 6; ++i) {
            result[i] = {ds: [], dx: []};
        }
        var str = '';
        $("#bottom_zs_table_head tbody tr th").each(function () {
            var position = $(this).data("position");
            if (position != 'zh') {
                // 单双
                str += '<table style="width: 100%;color:#007ABE;background: #F9F7F4;height: 30px; font-size: 14px;"><tobody><th>'+ (position == 0 ? '第一球单双大小' : (position == 2 ? '第三球单双大小' : (position == 3 ? '第四球单双大小' : (position == 4 ? '第五球单双大小' : '第二球单双大小')))) +'<th></tobody></table>';
                str += '<table id="bottom_zs_table_' + position + '_ds" width="100%" border="0" class="resultLoad">';
                str += '<tbody>';

                for (var i = 0; i < json.length; ++i) {
                    var value = Tools.parseInt(json[i].openCode.split(",")[Tools.parseInt(position)]);

                    var name = value % 2 == 0 ? '<font style="color:#e70f0f;">双</font>' : '<font style="color:#58adff;">单</font>';
                    var x = 0, y = 0;

                    if (result[Tools.parseInt(position)].ds.length != 0) {
                        var preObj = result[Tools.parseInt(position)].ds[i - 1];
                        if (preObj.name == name) {
                            x = preObj.x;
                            y = preObj.y + 1;
                        } else {
                            x = preObj.x + 1;
                            y = 0;
                        }
                    }
                    result[Tools.parseInt(position)].ds.push({
                        name: name,
                        x: x,
                        y: y
                    });
                }

                var maxX = 30;
                var maxY = 0;
                $.each(result[Tools.parseInt(position)].ds, function (index, value) {
                    if (value.x > maxX) {
                        maxX = value.x;
                    }
                    if (value.y > maxY) {
                        maxY = value.y;
                    }
                });

                for (var i = 0; i < maxY + 1; ++i) {
                    str += '<tr class="resultLoad">';
                    for (var j = 0; j < 51 + 1; ++j) {
                        str += '<td>&nbsp;</td>';
                    }
                    str += '</tr>';
                }
                str += '</tbody>';
                str += '</table>';


                // 大小
                str += '<table id="bottom_zs_table_' + position + '_dx" width="100%" border="0" class="resultLoad">';
                str += '<tbody>';
                for (var i = 0; i < json.length; ++i) {
                    var value = json[i].openCode.split(",")[Tools.parseInt(position)];
                    var name = value >= 5 ? '<font style="color:#e70f0f;">大</font>' : '<font style="color:#58adff;">小</font>';
                    var x = 0, y = 0;

                    if (result[Tools.parseInt(position)].dx.length != 0) {
                        var preObj = result[Tools.parseInt(position)].dx[i - 1];
                        if (preObj.name == name) {
                            x = preObj.x;
                            y = preObj.y + 1;
                        } else {
                            x = preObj.x + 1;
                            y = 0;
                        }
                    }
                    result[Tools.parseInt(position)].dx.push({
                        name: name,
                        x: x,
                        y: y
                    });
                }

                var maxX = 30;
                var maxY = 0;
                $.each(result[Tools.parseInt(position)].dx, function (index, value) {
                    if (value.x > maxX) {
                        maxX = value.x;
                    }
                    if (value.y > maxY) {
                        maxY = value.y;
                    }
                });

                for (var i = 0; i < maxY + 1; ++i) {
                    str += '<tr class="resultLoad">';
                    for (var j = 0; j < 51 + 1; ++j) {
                        str += '<td>&nbsp;</td>';
                    }
                    str += '</tr>';
                }
                str += '</tbody>';
                str += '</table>';
            } else {
                // 单双
                str += '<table style="width: 100%;color:#84200D;background: #F9F7F4;height: 30px; font-size: 15px;"><tobody><th>总和单双大小<th></tobody></table>';
                str += '<table id="bottom_zs_table_' + position + '_ds" width="100%" border="0" class="resultLoad">';
                str += '<tbody>';
                for (var i = 0; i < json.length; ++i) {
                    var value = 0;
                    for (var j = 0, tmpArr = json[i].openCode.split(","); j < tmpArr.length; ++j) {
                        value += Tools.parseInt(tmpArr[j]);
                    }

                    var name = value % 2 == 0 ? '<font style="color:#e70f0f;">双</font>' : '<font style="color:#58adff;">单</font>';
                    var x = 0, y = 0;

                    if (result[5].ds.length != 0) {
                        var preObj = result[5].ds[i - 1];
                        if (preObj.name == name) {
                            x = preObj.x;
                            y = preObj.y + 1;
                        } else {
                            x = preObj.x + 1;
                            y = 0;
                        }
                    }
                    result[5].ds.push({
                        name: name,
                        x: x,
                        y: y
                    });
                }

                var maxX = 30;
                var maxY = 0;
                $.each(result[5].ds, function (index, value) {
                    if (value.x > maxX) {
                        maxX = value.x;
                    }
                    if (value.y > maxY) {
                        maxY = value.y;
                    }
                });

                for (var i = 0; i < maxY + 1; ++i) {
                    str += '<tr class="resultLoad">';
                    for (var j = 0; j < 51 + 1; ++j) {
                        str += '<td>&nbsp;</td>';
                    }
                    str += '</tr>';
                }
                str += '</tbody>';
                str += '</table>';


                // 大小
                str += '<table id="bottom_zs_table_' + position + '_dx" width="100%" border="0" class="resultLoad">';
                str += '<tbody>';
                for (var i = 0; i < json.length; ++i) {
                    var value = 0;
                    for (var j = 0, tmpArr = json[i].openCode.split(","); j < tmpArr.length; ++j) {
                        value += Tools.parseInt(tmpArr[j]);
                    }
                    var name = value >= 23 ? '<font style="color:#e70f0f;">大</font>' : '<font style="color:#58adff;">小</font>';
                    var x = 0, y = 0;

                    if (result[5].dx.length != 0) {
                        var preObj = result[5].dx[i - 1];
                        if (preObj.name == name) {
                            x = preObj.x;
                            y = preObj.y + 1;
                        } else {
                            x = preObj.x + 1;
                            y = 0;
                        }
                    }
                    result[5].dx.push({
                        name: name,
                        x: x,
                        y: y
                    });
                }

                var maxX = 30;
                var maxY = 0;
                $.each(result[5].dx, function (index, value) {
                    if (value.x > maxX) {
                        maxX = value.x;
                    }
                    if (value.y > maxY) {
                        maxY = value.y;
                    }
                });

                for (var i = 0; i < maxY + 1; ++i) {
                    str += '<tr class="resultLoad">';
                    for (var j = 0; j < 51; ++j) {
                        str += '<td>&nbsp;</td>';
                    }
                    str += '</tr>';
                }
                str += '</tbody>';
                str += '</table>';
            }
        });

        $("#bottom_zs_table_content").html(str);
        for (var i = 0; i < 6; ++i) {
            var value = result[i];

            var pre = i == 5 ? 'zh' : i;
            $.each(value.ds, function (index, value) {
                $('#bottom_zs_table_' + pre + '_ds').find("tr").eq(value.y).find("td").eq(value.x).html(value.name);
            });
            $.each(value.dx, function (index, value) {
                $('#bottom_zs_table_' + pre + '_dx').find("tr").eq(value.y).find("td").eq(value.x).html(value.name);
            });
        }
    }
    ;
</script>
