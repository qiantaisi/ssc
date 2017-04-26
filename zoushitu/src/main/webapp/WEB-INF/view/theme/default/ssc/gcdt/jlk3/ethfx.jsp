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
<div class="cl-960">
   二同号复选@<span class="pl red" data-plid="11816"></span>
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="11*">
                <span>11*</span>
                <span class="pl" data-plid="11816"></span>
            </td>
            <td data-name="22*">
                <span>22*</span>
                <span class="pl" data-plid="11815"></span>
            </td>
        </tr>
        <tr>
            <td data-name="33*">
                <span>33*</span>
                <span class="pl" data-plid="11814"></span>
            </td>
            <td data-name="44*">
                <span>44*</span>
                <span class="pl" data-plid="11813"></span>
            </td>
        </tr>
        <tr>
            <td data-name="55*">
                <span>55*</span>
                <span class="pl" data-plid="11812"></span>
            </td>
            <td data-name="66*">
                <span>66*</span>
                <span class="pl" data-plid="11811"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 21;
    var playId = 465;
    var playGroupName = '二同号复选';

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