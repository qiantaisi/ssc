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

<div class="cl-603">
    第六名
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第六名-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="10057"></span>
            </td>
            <td data-name="第六名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="10058"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="10059"></span>
            </td>
            <td data-name="第六名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="10060"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="10061"></span>
            </td>
            <td data-name="第六名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="10062"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="10063"></span>
            </td>
            <td data-name="第六名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="10064"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="10065"></span>
            </td>
            <td data-name="第六名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="10066"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第六名-龙虎大小单双
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第六名-大">
                <span>大</span>
                <span class="pl" data-plid="10138"></span>
            </td>
            <td data-name="第六名-小">
                <span>小</span>
                <span class="pl" data-plid="10139"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-单">
                <span>单</span>
                <span class="pl" data-plid="10140"></span>
            </td>
            <td data-name="第六名-双">
                <span>双</span>
                <span class="pl" data-plid="10141"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 14;
    var playId = 321;
    var playGroupName = '三、四、五、六名';

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