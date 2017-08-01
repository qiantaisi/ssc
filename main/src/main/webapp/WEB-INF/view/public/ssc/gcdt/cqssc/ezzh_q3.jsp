<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('cqssc-ezzh_q3')" class="active">前三二字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('cqssc-ezzh_z3')">中三二字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('cqssc-ezzh_h3')">后三二字组合</a>
                </div>
            </div>
        </div>
        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="20">第一个投注码@<span data-plid="7472" class="pl red"></span></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><strong class="pl">0</strong></td>
                    <td><input type="checkbox" data-name="0" data-group="num1"></td>
                    <td><strong class="pl">1</strong></td>
                    <td><input type="checkbox" data-name="1" data-group="num1"></td>
                    <td><strong class="pl">2</strong></td>
                    <td><input type="checkbox" data-name="2" data-group="num1"></td>
                    <td><strong class="pl">3</strong></td>
                    <td><input type="checkbox" data-name="3" data-group="num1"></td>
                    <td><strong class="pl">4</strong></td>
                    <td><input type="checkbox" data-name="4" data-group="num1"></td>
                    <td><strong class="pl">5</strong></td>
                    <td><input type="checkbox" data-name="5" data-group="num1"></td>
                    <td><strong class="pl">6</strong></td>
                    <td><input type="checkbox" data-name="6" data-group="num1"></td>
                    <td><strong class="pl">7</strong></td>
                    <td><input type="checkbox" data-name="7" data-group="num1"></td>
                    <td><strong class="pl">8</strong></td>
                    <td><input type="checkbox" data-name="8" data-group="num1"></td>
                    <td><strong class="pl">9</strong></td>
                    <td><input type="checkbox" data-name="9" data-group="num1"></td>
                </tr>
                </tbody>
            </table>
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="20">第二个投注码@<span data-plid="7472" class="pl red"></span></th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong class="pl">0</strong></td>
                    <td><input type="checkbox" data-name="0" data-group="num2"></td>
                    <td><strong class="pl">1</strong></td>
                    <td><input type="checkbox" data-name="1" data-group="num2"></td>
                    <td><strong class="pl">2</strong></td>
                    <td><input type="checkbox" data-name="2" data-group="num2"></td>
                    <td><strong class="pl">3</strong></td>
                    <td><input type="checkbox" data-name="3" data-group="num2"></td>
                    <td><strong class="pl">4</strong></td>
                    <td><input type="checkbox" data-name="4" data-group="num2"></td>
                    <td><strong class="pl">5</strong></td>
                    <td><input type="checkbox" data-name="5" data-group="num2"></td>
                    <td><strong class="pl">6</strong></td>
                    <td><input type="checkbox" data-name="6" data-group="num2"></td>
                    <td><strong class="pl">7</strong></td>
                    <td><input type="checkbox" data-name="7" data-group="num2"></td>
                    <td><strong class="pl">8</strong></td>
                    <td><input type="checkbox" data-name="8" data-group="num2"></td>
                    <td><strong class="pl">9</strong></td>
                    <td><input type="checkbox" data-name="9" data-group="num2"></td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="20">
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
    <div class="fr main-right cl-10 re-cl-10"></div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>

<input type="hidden" data-plid="7472" id="pl">
<script>
    var playGroupId = 1;
    var playId = 222;
    var playGroupName = '二字组合';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        var num1 = [], num2 = [];
        $("[data-group='num1']").each(function () {
            if ($(this).is(":checked")) {
                num1.push($(this).data('name'));
            }
        });

        $("[data-group='num2']").each(function () {
            if ($(this).is(":checked")) {
                num2.push($(this).data('name'));
            }
        });

        var count = 0;
        count += num1.length > 0 ? 1 : 0;
        count += num2.length > 0 ? 1 : 0;
        if (count != 2) {
            Tools.error("请选择投注码");
            return;
        }

        var inputMoney = $("#inputMoney").val();
        if (typeof inputMoney == 'undefined' || !inputMoney) {
            Tools.toast("请输入正确的金额");
            return;
        }

        $.each(num1, function (index, value) {
            $.each(num2, function (index2, value2) {
                betForm.sscBetList.push({
                    playGroupName: playGroupName,
                    playGroupId: playGroupId,
                    number: $("#number").data("number"),
                    playId: playId,
                    zhushu: 1,
                    perMoney: inputMoney,
                    content: '前三二字组合-' + value + ',' + value2,
                    playPlId: $("#pl").data("plid"),
                    playPl: $("#pl").data("pl")
                });
                betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                betForm.totalZhushu = add(betForm.totalZhushu, 1);
            });
        });
        return betForm;
    }

    function checkZhudan() {
        return true;
    }
</script>