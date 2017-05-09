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
    亚军
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="亚军-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="9992"></span>
            </td>
            <td data-name="亚军-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9993"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9994"></span>
            </td>
            <td data-name="亚军-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="9995"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9996"></span>
            </td>
            <td data-name="亚军-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9997"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9998"></span>
            </td>
            <td data-name="亚军-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9999"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="10000"></span>
            </td>
            <td data-name="亚军-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="10001"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    亚军-龙虎大小单双
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="亚军-龙">
                <span>龙</span>
                <span class="pl" data-plid="10118"></span>
            </td>
            <td data-name="亚军-虎">
                <span>虎</span>
                <span class="pl" data-plid="10119"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-大">
                <span>大</span>
                <span class="pl" data-plid="10114"></span>
            </td>
            <td data-name="亚军-小">
                <span>小</span>
                <span class="pl" data-plid="10115"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-单">
                <span>单</span>
                <span class="pl" data-plid="10116"></span>
            </td>
            <td data-name="亚军-双">
                <span>双</span>
                <span class="pl" data-plid="10117"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 14;
    var playId = 319;
    var playGroupName = '冠、亚军组合';

    function getZhudan(inputMoney, number) {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };


        $(".cl-604 table tbody tr td.active").each(function () {
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