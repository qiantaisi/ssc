<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="lot-content clearfix">
    <div class="fl main-left re-main-left">
        <div class="table-common">
            <table width="100%" border="1" class="kstable">
                <thead>
                <tr>
                    <th colspan="10"><strong>三不同@<span class="pl red" data-plid="11766"></span></strong>(请选择3~6个号码)</th>
                </tr>
                <tr>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                </tr>
                </thead>

                <tbody>

                <tr>
                    <td><strong class="pl">1</strong></td>
                    <td><input type="checkbox" data-name="1"></td>

                    <td><strong class="pl">2</strong></td>
                    <td><input type="checkbox" data-name="2"></td>

                    <td><strong class="pl">3</strong></td>
                    <td><input type="checkbox" data-name="3"></td>

                    <td><strong class="pl">4</strong></td>
                    <td><input type="checkbox" data-name="4"></td>

                    <td><strong class="pl">5</strong></td>
                    <td><input type="checkbox" data-name="5"></td>
                </tr>

                <tr>
                    <td><strong class="pl">6</strong></td>
                    <td><input type="checkbox" data-name="6"></td>


                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>


                </tbody>

                <tfoot>
                <tr>
                    <td colspan="10">
                        <c:import url="../common/toptouzhu.jsp">
                            <c:param name="flagGroup" value="11"/>
                            <c:param name="navGroup" value="2"/>
                        </c:import>
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>

        <c:import url="common/bottom_zs.jsp"/>
    </div>

    <div class="fr main-right cl-10 re-main-right"></div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>

<input type="hidden" data-plid="11766" id="pl_jsks"/>
<script>
    //同一组选项只能单项选择
    $(".table-common .kstable tbody tr td").find("input[type='checkbox']").click(function (e) {
        e.stopPropagation(); //阻止冒泡事件 （点击checkbox时 阻止td被点击）
        var obj = $(this);
        changeStatus(obj);
    });

    //单击单元格选中checkbox
    $(".table-common .kstable tbody tr td").click(function () {
        var emptyFlag = $(this).children().is(":empty");
        if(emptyFlag == false){
            return;
        }

        var flag = $(this).children()[0].hasAttribute('type');
        if(flag == false){
            return;
        }
        var checkFlag = $(this).children().is(":checked");

        if(checkFlag == false){
            $(this).children().prop("checked",true);
        }else if(checkFlag == true){
            $(this).children().attr("checked",false);
        }
    });


</script>
<script>
    var playGroupId = 20;
    var playId = 460;
    var playGroupName = '三不同';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        var wan = [], qian = [], bai = [], arr = [];

        $(".main-left .table-common input").each(function() {
            if ($(this).is(":checked")) {
                arr.push($(this).data('name'));
            }
        });

        if (arr.length < 3) {
            Tools.error('请选择3个及以上号码');
            return;
        }

        var dataArr = [];
        var tmp = [];
        $.each(arr, function(index, value) {
            tmp.push(value);
        });
        dataArr.push(tmp);

        var inputMoney = $("#inputMoney").val();
        if (typeof inputMoney == 'undefined' || !inputMoney) {
            Tools.toast("请输入正确的金额");
            return;
        }
        for (var i = 0; i < dataArr[0].length; i++) {
            for (var j = i + 1; j < dataArr[0].length; j++) {
                for (var k = j + 1; k < dataArr[0].length; k++) {
                    betForm.sscBetList.push({
                        playGroupName: playGroupName,
                        playGroupId: playGroupId,
                        number: $("#number").data("number"),
                        playId: playId,
                        zhushu: 1,
                        perMoney: inputMoney,
                        content: dataArr[0][i] + ',' + dataArr[0][j] + ',' + dataArr[0][k],
                        playPlId: $("#pl_jsks").data("plid"),
                        playPl: $("#pl_jsks").data("pl")
                    });
                    betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                    betForm.totalZhushu = add(betForm.totalZhushu, 1);
                }
            }
        }
        return betForm;
    }

    function checkZhudan() {
        var arr = [];
        $(".main-left .table-common input").each(function() {
            if ($(this).is(":checked")) {
                arr.push($(this).data('name'));
            }
        });

        if (arr.length < 3) {
            Tools.error('请选择3个及以上号码');
            return;
        }
        return true;
    }
</script>