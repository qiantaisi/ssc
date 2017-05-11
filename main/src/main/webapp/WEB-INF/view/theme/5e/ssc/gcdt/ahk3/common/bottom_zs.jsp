<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="game_tables">
    <table width="100%" border="0" class="game_tab" id="bottom_zs_table_head">
        <tbody>
        <tr>
            <th class="game_result choose" data-position="zh">总和</th>
        </tr>
        </tbody>
    </table>
    <table width="100%" border="0" class="game_tab" id="bottom_zs_table_select">
        <tbody>
        <tr>
            <th class="game_result" data-type="dx">大小</th>
            <th class="game_result choose" data-type="ds">单双</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        </tbody>
    </table>
    <div id="bottom_zs_table_content">
    </div>
</div>
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

        $('#bottom_zs_table_' + position + '_' + type).show();
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

                renderView(data);
                changeTable();
                renderViewRight(data);
            }
        });
    }

    function renderViewRight(json) {
        var result = {
            hezhi: {
                da: {name: '和值-大', num: 0},
                xiao: {name: '和值-小', num: 0},
                dan: {name: '和值-单', num: 0},
                shuang: {name: '和值-双', num: 0}
            },
            shunzi:{ name: '顺子',num: 0},
            duizi:{ name: '对子',num: 0},
            sanbutong:{ name: '三不同',num: 0},
            baozi:{ name: '豹子',num: 0}

        };

        for (var i = 0; i < json.length; ++i) {
            var value = json[i];
            var openCode = value.openCode.split(",");
            var num1 = Tools.parseInt(openCode[0]);
            var num2 = Tools.parseInt(openCode[1]);
            var num3 = Tools.parseInt(openCode[2]);

            var sum = num1 + num2 + num3;
            if(sum >= 11){
                result.hezhi.da.num++;
                result.hezhi.xiao.num = 0;
            }else{
                result.hezhi.xiao.num++;
                result.hezhi.da.num = 0;
            }

            if(sum % 2 == 0){
                result.hezhi.shuang.num++;
                result.hezhi.dan.num = 0;
            } else{
                result.hezhi.dan.num++;
                result.hezhi.shuang.num = 0;
            }

            if(num2 - num1 == 1 && num3 - num2 == 1){
                result.shunzi.num++;
                result.baozi.num = 0;
                result.duizi.num = 0;
                result.sanbutong.num = 0;
            } else if(num1 == num2 == num3){
                result.baozi.num++;
                result.shunzi.num = 0;
                result.duizi.num = 0;
                result.sanbutong.num = 0;
            } else if(num1 == num2 || num1 == num3 || num2 == num3){
                result.duizi.num++;
                result.shunzi.num = 0;
                result.baozi.num = 0;
                result.sanbutong.num = 0;
            }else if(num1 != num2 != num3){
                result.sanbutong.num++;
                result.shunzi.num = 0;
                result.baozi.num = 0;
                result.duizi.num = 0;
            }

        }

        var arr = [];
        arr.push(result.hezhi.da);
        arr.push(result.hezhi.xiao);
        arr.push(result.hezhi.dan);
        arr.push(result.hezhi.shuang);
        arr.push(result.shunzi);
        arr.push(result.duizi);
        arr.push(result.baozi);
        arr.push(result.sanbutong);

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
        for (var i = 0; i < 5 && i < arr.length; ++i) {
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

    function renderView(json) {
        var result = [];
        for (var i = 0; i < 4; ++i) {
            result[i] = {ds: [], dx: []};
        }
        var str = '';
        $("#bottom_zs_table_head tbody tr th").each(function () {
            var position = $(this).data("position");
            if (position == 'zh') {
                // 单双
                str += '<table id="bottom_zs_table_' + position + '_ds" width="100%" border="0" class="resultLoad" style="display:none;">';
                str += '<tbody>';
                for (var i = 0; i < json.length; ++i) {
                    var value = 0;
                    for (var j = 0, tmpArr = json[i].openCode.split(","); j < tmpArr.length; ++j) {
                        value += Tools.parseInt(tmpArr[j]);
                    }

                    var name = value % 2 == 0 ? '<font style="color:#e70f0f;">双</font>' : '<font style="color:#58adff;">单</font>';
                    var x = 0, y = 0;

                    if (result[3].ds.length != 0) {
                        var preObj = result[3].ds[i - 1];
                        if (preObj.name == name) {
                            x = preObj.x;
                            y = preObj.y + 1;
                        } else {
                            x = preObj.x + 1;
                            y = 0;
                        }
                    }
                    result[3].ds.push({
                        name: name,
                        x: x,
                        y: y
                    });
                }

                var maxX = 30;
                var maxY = 0;
                $.each(result[3].ds, function (index, value) {
                    if (value.x > maxX) {
                        maxX = value.x;
                    }
                    if (value.y > maxY) {
                        maxY = value.y;
                    }
                });

                for (var i = 0; i < maxY + 1; ++i) {
                    str += '<tr class="resultLoad">';
                    for (var j = 0; j < maxX + 1; ++j) {
                        str += '<td>&nbsp;</td>';
                    }
                    str += '</tr>';
                }
                str += '</tbody>';
                str += '</table>';


                // 大小
                str += '<table id="bottom_zs_table_' + position + '_dx" width="100%" border="0" class="resultLoad" style="display:none;">';
                str += '<tbody>';
                for (var i = 0; i < json.length; ++i) {
                    var value = 0;
                    for (var j = 0, tmpArr = json[i].openCode.split(","); j < tmpArr.length; ++j) {
                        value += Tools.parseInt(tmpArr[j]);
                    }
                    var name = value >= 11 ? '<font style="color:#e70f0f;">大</font>' : '<font style="color:#58adff;">小</font>';
                    var x = 0, y = 0;

                    if (result[3].dx.length != 0) {
                        var preObj = result[3].dx[i - 1];
                        if (preObj.name == name) {
                            x = preObj.x;
                            y = preObj.y + 1;
                        } else {
                            x = preObj.x + 1;
                            y = 0;
                        }
                    }
                    result[3].dx.push({
                        name: name,
                        x: x,
                        y: y
                    });
                }

                var maxX = 30;
                var maxY = 0;
                $.each(result[3].dx, function (index, value) {
                    if (value.x > maxX) {
                        maxX = value.x;
                    }
                    if (value.y > maxY) {
                        maxY = value.y;
                    }
                });

                for (var i = 0; i < maxY + 1; ++i) {
                    str += '<tr class="resultLoad">';
                    for (var j = 0; j < maxX + 1; ++j) {
                        str += '<td>&nbsp;</td>';
                    }
                    str += '</tr>';
                }
                str += '</tbody>';
                str += '</table>';
            }
        });

        $("#bottom_zs_table_content").html(str);
        for (var i = 0; i < 4; ++i) {
            var value = result[i];

            var pre = i == 3 ? 'zh' : i;
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
