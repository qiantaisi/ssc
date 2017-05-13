<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-zh_yzzh')">一字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-zh_ezzh')" class="active">二字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-zh_szzh')">三字组合</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="20">二字组合（二字相同@<span class="pl red" data-plid="7937"></span>二字不同@<span class="pl red"
                                                                                                       data-plid="7938"></span>)
                    </th>
                </tr>
                <tr>
                    <th colspan="20">第一个投注码</th>
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
                    <th colspan="20">第二个投注码</th>
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

    <div class="fr main-right cl-10 re-cl-10">
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<input type="hidden" data-plid="7937" id="plxt"/>
<input type="hidden" data-plid="7938" id="plbt"/>

<script>
    var playGroupId = 4;
    var playId = 288;
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
                num1.push($(this).data("name"));
            }
        });
        $("[data-group='num2']").each(function () {
            if ($(this).is(":checked")) {
                num2.push($(this).data("name"));
            }
        });

        if (num1.length != 1 || num2.length != 1) {
            Tools.error("仅且只能选择一组号码");
            return;
        }

        var str = num1[0] == num2[0] ? "二字组合之二字相同" : "二字组合之二字不同";
        var plId = num1[0] == num2[0] ? $("#plxt").data("plid") : $("#plbt").data("plid");
        var pl = num1[0] == num2[0] ? $("#plxt").data("pl") : $("#plbt").data("pl");

        var inputMoney = $("#inputMoney").val();
        if (typeof inputMoney == 'undefined' || !inputMoney) {
            Tools.toast("请输入正确的金额");
            return;
        }
        betForm.sscBetList.push({
            playGroupName: playGroupName,
            playGroupId: playGroupId,
            number: $("#number").data("number"),
            playId: playId,
            zhushu: 1,
            perMoney: inputMoney,
            content: str + "-" + num1[0] + "," + num2[0],
            playPlId: plId,
            playPl: pl
        });
        betForm.totalMoney = add(betForm.totalMoney, inputMoney);
        betForm.totalZhushu = add(betForm.totalZhushu, 1);
        return betForm;
    }

    function checkZhudan() {
        var num1 = [], num2 = [];
        $("[data-group='num1']").each(function () {
            if ($(this).is(":checked")) {
                num1.push($(this).data("name"));
            }
        });
        $("[data-group='num2']").each(function () {
            if ($(this).is(":checked")) {
                num2.push($(this).data("name"));
            }
        });

        if (num1.length != 1 || num2.length != 1) {
            Tools.error("仅且只能选择一组号码");
            return false;
        }
        return true;
    }
</script>