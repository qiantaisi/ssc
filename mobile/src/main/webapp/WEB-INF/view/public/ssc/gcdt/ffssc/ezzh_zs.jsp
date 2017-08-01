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
    中三二字组合@<font data-plid="10705" class="pl red"></font>
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
                <span data-group="num1" data-plid="10705"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span data-group="num1" data-plid="10705"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span data-group="num1" data-plid="10705"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span data-group="num1" data-plid="10705"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span data-group="num1" data-plid="10705"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span data-group="num1" data-plid="10705"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span data-group="num1" data-plid="10705"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span data-group="num1" data-plid="10705"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span data-group="num1" data-plid="10705"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span data-group="num1" data-plid="10705"></span>
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
                <span data-group="num2" data-plid="10705"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span data-group="num2" data-plid="10705"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span data-group="num2" data-plid="10705"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span data-group="num2" data-plid="10705"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span data-group="num2" data-plid="10705"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span data-group="num2" data-plid="10705"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span data-group="num2" data-plid="10705"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span data-group="num2" data-plid="10705"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span data-group="num2" data-plid="10705"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span data-group="num2" data-plid="10705"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<input type="hidden" data-plid="10705" id="pl" />
<script>

    var playGroupId = 15;
    var playId = 384;
    var playGroupName = '二字组合';

    function getZhudan(inputMoney, number) {
        var num1 = [], num2 = [];
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

        if (num1.length == 0 || num2.length == 0) {
            Tools.alert("请选择投注码");
            return;
        }

        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };
        
        $.each(num1, function(index, value) {
            $.each(num2, function(index2, value2) {
                betForm.sscBetList.push({
                    playGroupName: playGroupName,
                    playGroupId: playGroupId,
                    number: number,
                    playId: playId,
                    zhushu: 1,
                    perMoney: inputMoney,
                    content: "中三二字组合-" + value + "," + value2,
                    playPlId: $("#pl").data("plid"),
                    playPl: $("#pl").data("pl")
                });
                betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                betForm.totalZhushu = add(betForm.totalZhushu, 1);
            });
        });
        return betForm;
    }
    function getZhushu() {
        var num1 = [], num2 = [];
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

        if (num1.length == 0 || num2.length == 0) {
            return 0;
        }
        var zhushu = num1.length * num2.length;
        return zhushu;
    }
</script>