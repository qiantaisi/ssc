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
                <span class="txt_1"><font class="ball-4 ball-blue">1</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            <td data-name="2">
                <span class="txt_1"><font class="ball-4 ball-blue">2</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            <td data-name="3">
                <span class="txt_1"><font class="ball-4 ball-blue">3</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span class="txt_1"><font class="ball-4 ball-blue">4</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            <td data-name="5">
                <span class="txt_1"><font class="ball-4 ball-blue">5</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            <td data-name="6">
                <span class="txt_1"><font class="ball-4 ball-blue">6</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
        </tr>
        <tr>
            <td data-name="7">
                <span class="txt_1"><font class="ball-4 ball-blue">7</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            <td data-name="8">
                <span class="txt_1"><font class="ball-4 ball-blue">8</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            <td data-name="9">
                <span class="txt_1"><font class="ball-4 ball-blue">9</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
        </tr>
        <tr>
            <td data-name="10">
                <span class="txt_1"><font class="ball-4 ball-blue">10</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            <td data-name="11">
                <span class="txt_1"><font class="ball-4 ball-blue">11</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            <td data-name="12">
                <span class="txt_1"><font class="ball-4 ball-blue">12</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
        </tr>
        <table>
            <tbody>
            <td data-name="13">
                <span class="txt_1"><font class="ball-4 ball-blue">13</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            <td data-name="14">
                <span class="txt_1"><font class="ball-4 ball-blue">14</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            </tbody>
        </table>
        <table>
            <tbody>
            <td data-name="15">
                <span class="txt_1"><font class="ball-4 ball-blue">15</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            <td data-name="16">
                <span class="txt_1"><font class="ball-4 ball-blue">16</font></span>
                <span class="pl" data-plid="14859"></span>
            </td>
            </tbody>
        </table>
            <table>
                <tbody>
                <tr>
                    <td data-name="大">
                        <span class="txt_1"><font>大</font></span>
                        <span class="pl" data-plid="14860"></span>
                    </td>
                    <td data-name="小">
                        <span class="txt_1"><font>小</font></span>
                        <span class="pl" data-plid="14861"></span>
                    </td>
                </tr>
                </tbody>
            </table>

            <table>
                <tbody>
                <tr>
                    <td data-name="单">
                        <span class="txt_1"><font>单</font></span>
                        <span class="pl" data-plid="14862"></span>
                    </td>
                    <td data-name="双">
                        <span class="txt_1"><font>双</font></span>
                        <span class="pl" data-plid="14863"></span>
                    </td>
                </tr>
                </tbody>
            </table>
</div>

<script>
    var playGroupId = 12;
    var playId = 1036;
    var playGroupName = '篮球';

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