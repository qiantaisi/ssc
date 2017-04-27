<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project28.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="cl-960">
    前三组选六@<font id="pl" class="pl red"></font> (请选择4~8个号码)
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span>0</span>
            </td>
            <td data-name="1">
                <span>1</span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
            </td>
            <td data-name="3">
                <span>3</span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
            </td>
            <td data-name="5">
                <span>5</span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
            </td>
            <td data-name="7">
                <span>7</span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
            </td>
            <td data-name="9">
                <span>9</span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<input type="hidden" data-plid="10826" id="pl4">
<input type="hidden" data-plid="10825" id="pl5">
<input type="hidden" data-plid="10824" id="pl6">
<input type="hidden" data-plid="10823" id="pl7">
<input type="hidden" data-plid="10822" id="pl8">
<script>
    var playGroupId = 15;
    var playId = 379;
    var playGroupName = '组选六';

    function getZhudan(inputMoney, number) {
        var tmp = [];
        $(".cl-604 table tbody tr td.active").each(function () {
            tmp.push($(this).data("name"));
        });
        if (tmp.length < 4 || tmp.length > 8) {
            Tools.alert("请选择4~8个号码");
            return 0;
        }

        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        
        betForm.sscBetList.push({
            playGroupName: playGroupName,
            playGroupId: playGroupId,
            number: number,
            playId: playId,
            zhushu: 1,
            perMoney: inputMoney,
            content: "前三组选六-" + tmp.join(","),
            playPlId: $("#pl"+tmp.length).data("plid"),
            playPl: $("#pl"+tmp.length).data("pl")
        });
        betForm.totalMoney = add(betForm.totalMoney, inputMoney);
        betForm.totalZhushu = add(betForm.totalZhushu, 1);
        return betForm;
    }
    function getZhushu() {
        var tmp = [];
        $(".cl-604 table tbody tr td.active").each(function () {
            tmp.push($(this).data("name"));
        });
        $("#pl").html("");
        if (tmp.length < 4 || tmp.length > 8) {
            return 0;
        }
        $("#pl").html($("#pl"+tmp.length).data("pl"));
        return 1;
    }
</script>