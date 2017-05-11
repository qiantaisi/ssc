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
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第二球-1">
                <span class="txt_1"><font class="ball-4 ball-orange">1</font></span>
                <span class="pl" data-plid="9069"></span>
            </td>
            <td data-name="第二球-2">
                <span class="txt_1"><font class="ball-4 ball-orange">2</font></span>
                <span class="pl" data-plid="9070"></span>
            </td>
            <td data-name="第二球-3">
                <span class="txt_1"><font class="ball-4 ball-orange">3</font></span>
                <span class="pl" data-plid="9071"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第二球-4">
                <span class="txt_1"><font class="ball-4 ball-orange">4</font></span>
                <span class="pl" data-plid="9072"></span>
            </td>
            <td data-name="第二球-5">
                <span class="txt_1"><font class="ball-4 ball-orange">5</font></span>
                <span class="pl" data-plid="9073"></span>
            </td>
            <td data-name="第二球-6">
                <span class="txt_1"><font class="ball-4 ball-orange">6</font></span>
                <span class="pl" data-plid="9074"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第二球-7">
                <span class="txt_1"><font class="ball-4 ball-orange">7</font></span>
                <span class="pl" data-plid="9075"></span>
            </td>
            <td data-name="第二球-8">
                <span class="txt_1"><font class="ball-4 ball-orange">8</font></span>
                <span class="pl" data-plid="9076"></span>
            </td>
            <td data-name="第二球-9">
                <span class="txt_1"><font class="ball-4 ball-orange">9</font></span>
                <span class="pl" data-plid="9077"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第二球-10">
                <span class="txt_1"><font class="ball-4 ball-orange">10</font></span>
                <span class="pl" data-plid="9078"></span>
            </td>
            <td data-name="第二球-11">
                <span class="txt_1"><font class="ball-4 ball-orange">11</font></span>
                <span class="pl" data-plid="9079"></span>
            </td>
            <td data-name="第二球-12">
                <span class="txt_1"><font class="ball-4 ball-orange">12</font></span>
                <span class="pl" data-plid="9080"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第二球-13">
                <span class="txt_1"><font class="ball-4 ball-orange">13</font></span>
                <span class="pl" data-plid="9081"></span>
            </td>
            <td data-name="第二球-14">
                <span class="txt_1"><font class="ball-4 ball-orange">14</font></span>
                <span class="pl" data-plid="9082"></span>
            </td>
            <td data-name="第二球-15">
                <span class="txt_1"><font class="ball-4 ball-orange">15</font></span>
                <span class="pl" data-plid="9083"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第二球-16">
                <span class="txt_1"><font class="ball-4 ball-orange">16</font></span>
                <span class="pl" data-plid="9084"></span>
            </td>
            <td data-name="第二球-17">
                <span class="txt_1"><font class="ball-4 ball-orange">17</font></span>
                <span class="pl" data-plid="9085"></span>
            </td>
            <td data-name="第二球-18">
                <span class="txt_1"><font class="ball-4 ball-orange">18</font></span>
                <span class="pl" data-plid="9086"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
            <td data-name="第二球-19">
                <span class="txt_1"><font class="ball-4 ball-orange">19</font></span>
                <span class="pl" data-plid="9087"></span>
            </td>
            <td data-name="第二球-20">
                <span class="txt_1"><font class="ball-4 ball-orange">20</font></span>
                <span class="pl" data-plid="9088"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 10;
    var playId = 296;
    var playGroupName = '第二球';

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