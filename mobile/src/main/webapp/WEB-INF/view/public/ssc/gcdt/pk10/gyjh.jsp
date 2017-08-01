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

<div class="cl-603">
    冠亚军和
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="3,4,18,19">
                <span>3,4,18,19</span>
                <span class="pl" data-plid="8563"></span>
            </td>
            <td data-name="9,10,12,13">
                <span>9,10,12,13</span>
                <span class="pl" data-plid="8564"></span>
            </td>
        </tr>
        <tr>
            <td data-name="5,6,16,17">
                <span>5,6,16,17</span>
                <span class="pl" data-plid="8565"></span>
            </td>
            <td data-name="11">
                <span>11</span>
                <span class="pl" data-plid="8566"></span>
            </td>
        </tr>
        <tr>
            <td data-name="7,8,14,15">
                <span>7,8,14,15</span>
                <span class="pl" data-plid="8567"></span>
            </td>
            <td data-name="和大">
                <span>和大</span>
                <span class="pl" data-plid="8568"></span>
            </td>
        </tr>
        <tr>
            <td data-name="和小">
                <span>和小</span>
                <span class="pl" data-plid="8569"></span>
            </td>
            <td data-name="和单">
                <span>和单</span>
                <span class="pl" data-plid="8570"></span>
            </td>
        </tr>
        <tr>
            <td data-name="和双">
                <span>和双</span>
                <span class="pl" data-plid="8571"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 9;
    var playId = 270;
    var playGroupName = '冠亚军和';

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