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
    第九名
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第九名-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="10087"></span>
            </td>
            <td data-name="第九名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="10088"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="10089"></span>
            </td>
            <td data-name="第九名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="10090"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="10091"></span>
            </td>
            <td data-name="第九名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="10092"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="10093"></span>
            </td>
            <td data-name="第九名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="10094"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="10095"></span>
            </td>
            <td data-name="第九名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="10096"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第九名-大小单双
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第九名-大">
                <span>大</span>
                <span class="pl" data-plid="10152"></span>
            </td>
            <td data-name="第九名-小">
                <span>小</span>
                <span class="pl" data-plid="10153"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-单">
                <span>单</span>
                <span class="pl" data-plid="10154"></span>
            </td>
            <td data-name="第九名-双">
                <span>双</span>
                <span class="pl" data-plid="10155"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 14;
    var playId = 325;
    var playGroupName = '七、八、九、十名';

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