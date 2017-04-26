<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="com.petsathall.project.common.utils.DateUtils" %>
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
    冠军
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="冠军-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="8463"></span>
            </td>
            <td data-name="冠军-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="8473"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="8483"></span>
            </td>
            <td data-name="冠军-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="8493"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="8503"></span>
            </td>
            <td data-name="冠军-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="8513"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="8523"></span>
            </td>
            <td data-name="冠军-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="8533"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="8543"></span>
            </td>
            <td data-name="冠军-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="8553"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 9;
    var playId = 260;
    var playGroupName = '冠军';

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