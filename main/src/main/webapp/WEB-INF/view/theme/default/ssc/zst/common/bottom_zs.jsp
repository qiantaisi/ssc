<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="game_tables regame_tables">
    <table hidden="hidden" width="100%" class="game_tab" id="bottom_zs_table_head"
           style="border-bottom: 1px solid #A69B91;">
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
            <th class="game_result" data-type="dx"
                style="text-align: left; padding-left: 10px; color: gray;font-size: 14px;">近80期长龙走势
            </th>
        </tr>
        </tbody>
    </table>
    <div id="bottom_zs_table_content">
    </div>
</div>

<script>
    $(function () {
        refreshViewRight();
    });

    function refreshViewRight() {
        ajaxRequest({
            url: "<%=basePath%>ssc/ajaxGetHistory.json",
            data: {
                pageIndex: 1,
                pageSize: 80,
                playGroupId: ${param.playGroupId}
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }
                var data = json.sscHistoryList;
                data.reverse();
                renderView(data);
            }
        });
    }


    function renderView(json) {
        var result = [];
        var maxdsY = [], maxzhdsY = [];
        var maxdxY = [], maxzhdxY = [];
        for (var i = 0; i < 6; ++i) {
            result[i] = {ds: [], dx: []};
            maxdsY[i] = 0;
            maxdxY[i] = 0;
            maxzhdsY[i] = 0;
            maxzhdxY[i] = 0;
        }
        var str = '';


        $("#bottom_zs_table_head tbody tr th").each(function () {
            var position = $(this).data("position");
            if (position != 'zh') {
                for (var i = 0; i < json.length; ++i) {
                    var value = Tools.parseInt(json[i].openCode.split(",")[Tools.parseInt(position)]);
                    var name = value % 2 == 0 ? '<font style="color:#e70f0f;border: 1px solid;margin-left: -9.5%;padding:0 2px;">双</font>' : '<font style="color:#58adff;border: 1px solid;margin-left: -9.5%;padding:0 2px;">单</font>';
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


                    var value = json[i].openCode.split(",")[Tools.parseInt(position)];
                    var name = value >= 5 ? '<font style="color:#e70f0f;border: 1px solid;margin-left: -9.5%;padding:0 2px;">大</font>' : '<font style="color:#58adff;border: 1px solid;margin-left: -9.5%;padding:0 2px;">小</font>';
                    var xdx = 0, ydx = 0;

                    if (result[Tools.parseInt(position)].dx.length != 0) {
                        var preObj = result[Tools.parseInt(position)].dx[i - 1];
                        if (preObj.name == name) {
                            xdx = preObj.x;
                            ydx = preObj.y + 1;
                        } else {
                            xdx = preObj.x + 1;
                            ydx = 0;
                        }
                    }
                    result[Tools.parseInt(position)].dx.push({
                        name: name,
                        x: xdx,
                        y: ydx
                    });
                }




                // 单双
                str += '<table style="width: 100%;color:#007ABE;background: #F9F7F4;height: 30px; font-size: 14px;"><tobody><th>' + (position == 0 ? '第一球单双大小' : (position == 2 ? '第三球单双大小' : (position == 3 ? '第四球单双大小' : (position == 4 ? '第五球单双大小' : '第二球单双大小')))) + '<th></tobody></table>';
                str += '<table id="bottom_zs_table_' + position + '_ds" width="100%" border="0" class="resultLoad">';
                str += '<tbody>';


                var maxX = 30;
                var maxY = 5;

                $.each(result[Tools.parseInt(position)].ds, function (index, value) {
                    if (value.x > maxX) {
                        maxX = value.x;
                    }
                });


                for (var i = 0; i < maxY + 1; ++i) {
                    str += '<tr class="resultLoad">';
                    for (var j = 0; j < 52; ++j) {
                        str += '<td style="width: 15px;">&nbsp;</td>';
                    }
                    str += '</tr>';
                }
                str += '</tbody>';
                str += '</table>';


                // 大小
                str += '<table id="bottom_zs_table_' + position + '_dx" width="100%" border="0" class="resultLoad">';
                str += '<tbody>';

                var maxX = 25;
                var maxY = 5;
                $.each(result[Tools.parseInt(position)].dx, function (index, value) {
                    if (value.x > maxX) {
                        maxX = value.x;
                    }
                });

                for (var i = 0; i < maxY + 1; ++i) {
                    str += '<tr class="resultLoad">';
                    for (var j = 0; j < 52; ++j) {
                        str += '<td style="width:15px;">&nbsp;</td>';
                    }
                    str += '</tr>';
                }
                str += '</tbody>';
                str += '</table>';
            } else {
                for (var i = 0; i < json.length; ++i) {
                    var value = 0;
                    for (var j = 0, tmpArr = json[i].openCode.split(","); j < tmpArr.length; ++j) {
                        value += Tools.parseInt(tmpArr[j]);
                    }

                    var name = value % 2 == 0 ? '<font style="color:#e70f0f;border: 1px solid;margin-left: -9.5%;padding:0 2px;">双</font>' : '<font style="color:#58adff;border: 1px solid;margin-left: -9.5%;padding:0 2px;">单</font>';
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

                for (var i = 0; i < json.length; ++i) {
                    var value = 0;
                    for (var j = 0, tmpArr = json[i].openCode.split(","); j < tmpArr.length; ++j) {
                        value += Tools.parseInt(tmpArr[j]);
                    }
                    var name = value >= 23 ? '<font style="color:#e70f0f;border: 1px solid;margin-left: -9.5%;padding:0 2px;">大</font>' : '<font style="color:#58adff;border: 1px solid;margin-left: -9.5%;padding:0 2px;">小</font>';
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

                // 单双
                str += '<table style="width: 100%; color:#84200D;background: #F9F7F4;height: 30px; font-size: 15px;"><tobody><th>总和单双大小<th></tobody></table>';
                str += '<table style="width: 100%" id="bottom_zs_table_' + position + '_ds" border="0" class="resultLoad">';
                str += '<tbody>';


                var maxY = 5;
                var maxX = 30;
                $.each(result[5].ds, function (index, value) {
                    if (value.x > maxX) {
                        maxX = value.x;
                    }
                });

                for (var i = 0; i < maxY + 1; ++i) {
                    str += '<tr class="resultLoad">';
                    for (var j = 0; j < 52; ++j) {
                        str += '<td style="width:15px;">&nbsp;</td>';
                    }
                    str += '</tr>';
                }
                str += '</tbody>';
                str += '</table>';


                // 大小
                str += '<table id="bottom_zs_table_' + position + '_dx" width="100%" border="0" class="resultLoad">';
                str += '<tbody>';


                var maxX = 30;
                var maxY = 5;
                $.each(result[5].dx, function (index, value) {
                    if (value.x > maxX) {
                        maxX = value.x;
                    }
                });

                for (var i = 0; i < maxY + 1; ++i) {
                    str += '<tr class="resultLoad">';
                    for (var j = 0; j < 52; ++j) {
                        str += '<td style="width:15px;">&nbsp;</td>';
                    }
                    str += '</tr>';
                }
                str += '</tbody>';
                str += '</table>';
            }
        });

        $("#bottom_zs_table_content").html(str);

        var flagdx = new Array();
        var flagdx_1 = new Array();
        var flagdx_2 = new Array();
        var flagdx_3 = new Array();
        var flagdx_4 = new Array();
        var flagdx_5 = new Array();

        var flagds = new Array();
        var flagds_1 = new Array();
        var flagds_2 = new Array();
        var flagds_3 = new Array();
        var flagds_4 = new Array();
        var flagds_5 = new Array();
        for (var ydx = 0; ydx < 6; ydx++) {
            flagdx[ydx] = new Array();
            flagdx_1[ydx] = new Array();
            flagdx_2[ydx] = new Array();
            flagdx_3[ydx] = new Array();
            flagdx_4[ydx] = new Array();
            flagdx_5[ydx] = new Array();

            flagds[ydx] = new Array();
            flagds_1[ydx] = new Array();
            flagds_2[ydx] = new Array();
            flagds_3[ydx] = new Array();
            flagds_4[ydx] = new Array();
            flagds_5[ydx] = new Array();
            for (var xdx = 0; xdx < 53; xdx++) {
                flagdx[ydx][xdx] = 0;
                flagdx_1[ydx][xdx] = 0;
                flagdx_2[ydx][xdx] = 0;
                flagdx_3[ydx][xdx] = 0;
                flagdx_4[ydx][xdx] = 0;
                flagdx_5[ydx][xdx] = 0;

                flagds[ydx][xdx] = 0;
                flagds_1[ydx][xdx] = 0;
                flagds_2[ydx][xdx] = 0;
                flagds_3[ydx][xdx] = 0;
                flagds_4[ydx][xdx] = 0;
                flagds_5[ydx][xdx] = 0;
            }
        }

        for (var i = 0; i < 6; ++i) {
            var value = result[i];
            var col_y_flag_dx = 5, col_y_flag_ds = 5; //最初为5 ，为底层标记
            var dx_col_max_right_x = 0, ds_col_max_right_x = 0; //当前超过六行时，往右移动最大数标记
            var col_x_dx = 1, col_x_ds = 1;
            var pre = i == 5 ? 'zh' : i;
            $.each(value.ds, function (index, value) {
                if (value.y > col_y_flag_ds) {
                    $('#bottom_zs_table_' + pre + '_dx').find("tr").eq(col_y_flag_ds).find("td").eq((parseInt(value.x) + col_x_ds)).html(value.name);
                    //分别设置每位遍历写入表格时，超过六行的标记（记录x轴的延伸情况）
                    if(pre == 0){
                        flagds[col_y_flag_ds][value.x + col_x_ds] = 1;
                    }else if(pre == 1){
                        flagds_1[col_y_flag_ds][value.x + col_x_ds] = 1;
                    }else if(pre == 2){
                        flagds_2[col_y_flag_ds][value.x + col_x_ds] = 1;
                    }else if(pre == 3){
                        flagds_3[col_y_flag_ds][value.x + col_x_ds] = 1;
                    }else if(pre == 4){
                        flagds_4[col_y_flag_ds][value.x + col_x_ds] = 1;
                    }else if(pre == 5){
                        flagds_5[col_y_flag_ds][value.x + col_x_ds] = 1;
                    }

                    ds_col_max_right_x = ds_col_max_right_x > (value.x + col_x_ds) ? ds_col_max_right_x : (value.x + col_x_ds);
                    col_x_ds++;
                } else {
                    //判断每位每组数据在碰到做标记的数据时，向右移动且对当前行数减掉一行，并且记录当前最大x轴延伸的位置
                    if ((pre == 5 && flagds_5[value.y][value.x] == 1) ||(pre == 4 && flagds_4[value.y][value.x] == 1) ||(pre == 3 && flagds_3[value.y][value.x] == 1) ||(pre == 2 && flagds_2[value.y][value.x] == 1) || (pre == 1 && flagds_1[value.y][value.x] == 1) || (pre == 0 && flagds[value.y][value.x] == 1)) {
                        if (col_y_flag_ds != 0) {
                            col_y_flag_ds--;
                        }
                        $('#bottom_zs_table_' + pre + '_ds').find("tr").eq(col_y_flag_ds).find("td").eq(value.x + col_x_ds).html(value.name);
                        ds_col_max_right_x = ds_col_max_right_x > (value.x + col_x_ds) ? ds_col_max_right_x : (value.x + col_x_ds);
                        col_x_ds++;
                    } else {
                        //正常填入大小标记时，初始化x轴累加号 col_x_ds ，待下个往右移动数据时使用
                        col_x_ds = 1;
                        //当不在做记号数据坐标的范围时，初始化最大行号为5
                        if (value.x > ds_col_max_right_x) {
                            col_y_flag_ds = 5;
                        }
                        $('#bottom_zs_table_' + pre + '_ds').find("tr").eq(value.y).find("td").eq(value.x).html(value.name);
                    }

                }
            });
            $.each(value.dx, function (index, value) {

                if (value.y > col_y_flag_dx) {
                    $('#bottom_zs_table_' + pre + '_dx').find("tr").eq(col_y_flag_dx).find("td").eq((parseInt(value.x) + col_x_dx)).html(value.name);
                    //分别设置每位遍历写入表格时，超过六行的标记（记录x轴的延伸情况）
                    if(pre == 0){
                        flagdx[col_y_flag_dx][value.x + col_x_dx] = 1;
                    }else if(pre == 1){
                        flagdx_1[col_y_flag_dx][value.x + col_x_dx] = 1;
                    }else if(pre == 2){
                        flagdx_2[col_y_flag_dx][value.x + col_x_dx] = 1;
                    }else if(pre == 3){
                        flagdx_3[col_y_flag_dx][value.x + col_x_dx] = 1;
                    }else if(pre == 4){
                        flagdx_4[col_y_flag_dx][value.x + col_x_dx] = 1;
                    }else if(pre == 5){
                        flagdx_5[col_y_flag_dx][value.x + col_x_dx] = 1;
                    }

                    dx_col_max_right_x = dx_col_max_right_x > (value.x + col_x_dx) ? dx_col_max_right_x : (value.x + col_x_dx);
                    col_x_dx++;
                } else {
                    //判断每位每组数据在碰到做标记的数据时，向右移动且对当前行数减掉一行，并且记录当前最大x轴延伸的位置
                    if ((pre == 5 && flagdx_5[value.y][value.x] == 1) ||(pre == 4 && flagdx_4[value.y][value.x] == 1) ||(pre == 3 && flagdx_3[value.y][value.x] == 1) ||(pre == 2 && flagdx_2[value.y][value.x] == 1) || (pre == 1 && flagdx_1[value.y][value.x] == 1) || (pre == 0 && flagdx[value.y][value.x] == 1)) {
                        if (col_y_flag_dx != 0) {
                            col_y_flag_dx--;
                        }
                        $('#bottom_zs_table_' + pre + '_dx').find("tr").eq(col_y_flag_dx).find("td").eq(value.x + col_x_dx).html(value.name);
                        dx_col_max_right_x = dx_col_max_right_x > (value.x + col_x_dx) ? dx_col_max_right_x : (value.x + col_x_dx);
                        col_x_dx++;
                    } else {
                        //正常填入大小标记时，初始化x轴累加号 col_x_dx ，待下个往右移动数据时使用
                        col_x_dx = 1;
                        //当不在做记号数据坐标的范围时，初始化最大行号为5
                        if (value.x > dx_col_max_right_x) {
                            col_y_flag_dx = 5;
                        }
                        $('#bottom_zs_table_' + pre + '_dx').find("tr").eq(value.y).find("td").eq(value.x).html(value.name);
                    }

                }
            });
        }
    }
</script>






