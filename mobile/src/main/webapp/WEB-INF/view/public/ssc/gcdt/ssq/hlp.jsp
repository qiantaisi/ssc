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
            <td data-name="1">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">1</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            <td data-name="2">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">2</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            <td data-name="3">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">3</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">4</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            <td data-name="5">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">5</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            <td data-name="6">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">6</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
        </tr>
        <tr>
            <td data-name="7">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">7</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            <td data-name="8">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">8</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            <td data-name="9">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">9</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
        </tr>
        <tr>
            <td data-name="10">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">10</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            <td data-name="11">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">11</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            <td data-name="12">
                <span class="ball-4 ball-orange"><font class="ball-4 ball-orange">12</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
        </tr>
        <table>
            <tbody>
            <td data-name="13">
                <span class="txt_1"><font class="ball-4 ball-orange">13</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            <td data-name="14">
                <span class="txt_1"><font class="ball-4 ball-orange">14</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            </tbody>
        </table>
        <table>
            <tbody>
            <td data-name="15">
                <span class="txt_1"><font class="ball-4 ball-orange">15</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            <td data-name="16">
                <span class="txt_1"><font class="ball-4 ball-orange">16</font></span>
                <span class="pl" data-plid="14989"></span>
            </td>
            </tbody>
        </table>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 12;
    var playId = 1039;
    var playGroupName = '红球';

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