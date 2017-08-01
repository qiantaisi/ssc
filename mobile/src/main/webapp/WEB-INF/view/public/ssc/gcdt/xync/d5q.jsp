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
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第五球-1">
                <span class="txt_1"><font class="ball-4 ball-orange">1</font></span>
                <span class="pl" data-plid="9129"></span>
            </td>
            <td data-name="第五球-2">
                <span class="txt_1"><font class="ball-4 ball-orange">2</font></span>
                <span class="pl" data-plid="9130"></span>
            </td>
            <td data-name="第五球-3">
                <span class="txt_1"><font class="ball-4 ball-orange">3</font></span>
                <span class="pl" data-plid="9131"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五球-4">
                <span class="txt_1"><font class="ball-4 ball-orange">4</font></span>
                <span class="pl" data-plid="9132"></span>
            </td>
            <td data-name="第五球-5">
                <span class="txt_1"><font class="ball-4 ball-orange">5</font></span>
                <span class="pl" data-plid="9133"></span>
            </td>
            <td data-name="第五球-6">
                <span class="txt_1"><font class="ball-4 ball-orange">6</font></span>
                <span class="pl" data-plid="9134"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五球-7">
                <span class="txt_1"><font class="ball-4 ball-orange">7</font></span>
                <span class="pl" data-plid="9135"></span>
            </td>
            <td data-name="第五球-8">
                <span class="txt_1"><font class="ball-4 ball-orange">8</font></span>
                <span class="pl" data-plid="9136"></span>
            </td>
            <td data-name="第五球-9">
                <span class="txt_1"><font class="ball-4 ball-orange">9</font></span>
                <span class="pl" data-plid="9137"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五球-10">
                <span class="txt_1"><font class="ball-4 ball-orange">10</font></span>
                <span class="pl" data-plid="9138"></span>
            </td>
            <td data-name="第五球-11">
                <span class="txt_1"><font class="ball-4 ball-orange">11</font></span>
                <span class="pl" data-plid="9139"></span>
            </td>
            <td data-name="第五球-12">
                <span class="txt_1"><font class="ball-4 ball-orange">12</font></span>
                <span class="pl" data-plid="9140"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五球-13">
                <span class="txt_1"><font class="ball-4 ball-orange">13</font></span>
                <span class="pl" data-plid="9141"></span>
            </td>
            <td data-name="第五球-14">
                <span class="txt_1"><font class="ball-4 ball-orange">14</font></span>
                <span class="pl" data-plid="9142"></span>
            </td>
            <td data-name="第五球-15">
                <span class="txt_1"><font class="ball-4 ball-orange">15</font></span>
                <span class="pl" data-plid="9143"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五球-16">
                <span class="txt_1"><font class="ball-4 ball-orange">16</font></span>
                <span class="pl" data-plid="9144"></span>
            </td>
            <td data-name="第五球-17">
                <span class="txt_1"><font class="ball-4 ball-orange">17</font></span>
                <span class="pl" data-plid="9145"></span>
            </td>
            <td data-name="第五球-18">
                <span class="txt_1"><font class="ball-4 ball-orange">18</font></font></span>
                <span class="pl" data-plid="9146"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
            <td data-name="第五球-19">
                <span class="txt_1"><font class="ball-4 ball-orange">19</font></span>
                <span class="pl" data-plid="9147"></span>
            </td>
            <td data-name="第五球-20">
                <span class="txt_1"><font class="ball-4 ball-orange">20</font></span>
                <span class="pl" data-plid="9148"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 10;
    var playId = 299;
    var playGroupName = '第五球';

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