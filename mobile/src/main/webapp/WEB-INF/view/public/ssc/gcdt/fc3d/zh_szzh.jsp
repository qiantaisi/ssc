<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="cl-960">
    三字组合（三字@<font class="pl red" data-plid="7939"></font> 组三@<font class="pl red" data-plid="7940"></font> 组六@<font class="pl red" data-plid="7941"></font>）
</div>
<div class="cl-603">
    第一个投注码
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span>0</span>
                <span data-group="num1"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span data-group="num1"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span data-group="num1"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span data-group="num1"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span data-group="num1"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span data-group="num1"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span data-group="num1"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span data-group="num1"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span data-group="num1"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span data-group="num1"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第二个投注码
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span>0</span>
                <span data-group="num2"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span data-group="num2"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span data-group="num2"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span data-group="num2"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span data-group="num2"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span data-group="num2"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span data-group="num2"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span data-group="num2"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span data-group="num2"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span data-group="num2"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第三个投注码
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span>0</span>
                <span data-group="num3"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span data-group="num3"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span data-group="num3"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span data-group="num3"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span data-group="num3"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span data-group="num3"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span data-group="num3"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span data-group="num3"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span data-group="num3"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span data-group="num3"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<input type="hidden" data-plid="7939" id="sz"/>
<input type="hidden" data-plid="7940" id="zs"/>
<input type="hidden" data-plid="7941" id="zl"/>
<script>

    var playGroupId = 5;
    var playId = 253;
    var playGroupName = '三字组合';

    function getZhudan(inputMoney, number) {
        var num1 = [], num2 = [], num3 = [];
        $("[data-group='num1']").each(function() {
            if ($(this).parent().hasClass("active")) {
                num1.push($(this).parent().data('name'));
            }
        });

        $("[data-group='num2']").each(function() {
            if ($(this).parent().hasClass("active")) {
                num2.push($(this).parent().data('name'));
            }
        });

        $("[data-group='num3']").each(function() {
            if ($(this).parent().hasClass("active")) {
                num3.push($(this).parent().data('name'));
            }
        });

        if (num1.length != 1 || num2.length != 1 || num3.length != 1) {
            Tools.alert("有且只有各选1个投注码");
            return;
        }

        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };
        if (num1[0] == num2[0] && num1[0] == num3[0]) {
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: number,
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: "三字组合之三字-" + num1[0] + "," + num2[0] + "," + num3[0],
                playPlId: $("#sz").data('plid'),
                playPl: $("#sz").data('pl')
            });
            betForm.totalMoney = add(betForm.totalMoney, inputMoney);
            betForm.totalZhushu = add(betForm.totalZhushu, 1);
        } else if (num1[0] == num2[0] || num1[0] == num3[0] || num2[0] == num3[0]) {
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: number,
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: "三字组合之组三-" + num1[0] + "," + num2[0] + "," + num3[0],
                playPlId: $("#zs").data('plid'),
                playPl: $("#zs").data('pl')
            });
            betForm.totalMoney = add(betForm.totalMoney, inputMoney);
            betForm.totalZhushu = add(betForm.totalZhushu, 1);
        } else {
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: number,
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: "三字组合之组六-" + num1[0] + "," + num2[0] + "," + num3[0],
                playPlId: $("#zl").data('plid'),
                playPl: $("#zl").data('pl')
            });
            betForm.totalMoney = add(betForm.totalMoney, inputMoney);
            betForm.totalZhushu = add(betForm.totalZhushu, 1);
        }
        return betForm;

    }
    function getZhushu() {
        var num1 = [], num2 = [], num3 = [];
        $("[data-group='num1']").each(function() {
            if ($(this).parent().hasClass("active")) {
                num1.push($(this).parent().data('name'));
            }
        });

        $("[data-group='num2']").each(function() {
            if ($(this).parent().hasClass("active")) {
                num2.push($(this).parent().data('name'));
            }
        });

        $("[data-group='num3']").each(function() {
            if ($(this).parent().hasClass("active")) {
                num3.push($(this).parent().data('name'));
            }
        });

        if (num1.length != 1 || num2.length != 1 || num3.length != 1) {
            return 0;
        }
        return 1;
    }
</script>