<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<div class="cl-603">
    季军
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="季军-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="8465"></span>
            </td>
            <td data-name="季军-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="8475"></span>
            </td>
        </tr>
        <tr>
            <td data-name="季军-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="8485"></span>
            </td>
            <td data-name="季军-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="8495"></span>
            </td>
        </tr>
        <tr>
            <td data-name="季军-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="8505"></span>
            </td>
            <td data-name="季军-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="8515"></span>
            </td>
        </tr>
        <tr>
            <td data-name="季军-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="8525"></span>
            </td>
            <td data-name="季军-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="8535"></span>
            </td>
        </tr>
        <tr>
            <td data-name="季军-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="8545"></span>
            </td>
            <td data-name="季军-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="8555"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 9;
    var playId = 262;
    var playGroupName = '季军';

    function getZhudan(inputMoney, number) {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        
        $(".cl-604 table tbody tr td.active").each(function() {
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: number,
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: $(this).data("name"),
                playPlId: $(this).find(".pl").data("plid"),
                playPl: $(this).find(".pl").data("pl")
            });
            betForm.totalMoney = add(betForm.totalMoney, inputMoney);
            betForm.totalZhushu = add(betForm.totalZhushu, 1);
        });
        return betForm;
    }

    function getZhushu() {
        return $(".cl-604 table tbody tr td.active").length;
    }
</script>