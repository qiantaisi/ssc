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
    和值<span class="pl red"></span>
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="3">
                <span style="float: left;padding-left: 80px">3</span>
                <span class="pl" data-plid="11745" style="float: left"></span>
            </td>
            <td data-name="4">
                <span style="float: left;padding-left: 80px">4</span>
                <span class="pl" data-plid="11744" style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="5">
                <span style="float: left;padding-left: 80px">5</span>
                <span class="pl" data-plid="11743" style="float: left"></span>
            </td>
            <td data-name="6">
                <span style="float: left;padding-left: 80px">6</span>
                <span class="pl" data-plid="11742" style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="7">
                <span style="float: left;padding-left: 80px">7</span>
                <span class="pl" data-plid="11741" style="float: left"></span>
            </td>
            <td data-name="8">
                <span style="float: left;padding-left: 80px">8</span>
                <span class="pl" data-plid="11740" style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="9">
                <span style="float: left;padding-left: 80px">9</span>
                <span class="pl" data-plid="11739" style="float: left"></span>
            </td>
            <td data-name="10">
                <span style="float: left;padding-left: 80px">10</span>
                <span class="pl" data-plid="11738" style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="11">
                <span style="float: left;padding-left: 80px">11</span>
                <span class="pl" data-plid="11737" style="float: left"></span>
            </td>
            <td data-name="12">
                <span style="float: left;padding-left: 80px">12</span>
                <span class="pl" data-plid="11736" style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="13">
                <span style="float: left;padding-left: 80px">13</span>
                <span class="pl" data-plid="11735" style="float: left"></span>
            </td>
            <td data-name="14">
                <span style="float: left;padding-left: 80px">14</span>
                <span class="pl" data-plid="11734" style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="15">
                <span style="float: left;padding-left: 80px">15</span>
                <span class="pl" data-plid="11733" style="float: left"></span>
            </td>
            <td data-name="16">
                <span style="float: left;padding-left: 80px">16</span>
                <span class="pl" data-plid="11732" style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="17">
                <span style="float: left;padding-left: 80px">17</span>
                <span class="pl" data-plid="11731" style="float: left"></span>
            </td>
            <td data-name="18">
                <span style="float: left;padding-left: 80px">18</span>
                <span class="pl" data-plid="11730" style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="大">
                <span style="float: left;padding-left: 80px">大</span>
                <span class="pl" data-plid="11729" style="float: left"></span>
            </td>
            <td data-name="小">
                <span style="float: left;padding-left: 80px">小</span>
                <span class="pl" data-plid="11728" style="float: left"></span>
            </td>
        </tr>
        <tr>
            <td data-name="单">
                <span style="float: left;padding-left: 80px">单</span>
                <span class="pl" data-plid="11727" style="float: left"></span>
            </td>
            <td data-name="双">
                <span style="float: left;padding-left: 80px">双</span>
                <span class="pl" data-plid="11726" style="float: left"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 19;
    var playId = 454;
    var playGroupName = '和值';

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
