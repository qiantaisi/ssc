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
<div class="cl-960">
   二同号复选@<span class="pl red" data-plid="11714"></span>
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="11*">
                <span>11*</span>
                <span class="pl" data-plid="11714"></span>
            </td>
            <td data-name="22*">
                <span>22*</span>
                <span class="pl" data-plid="11713"></span>
            </td>
        </tr>
        <tr>
            <td data-name="33*">
                <span>33*</span>
                <span class="pl" data-plid="11712"></span>
            </td>
            <td data-name="44*">
                <span>44*</span>
                <span class="pl" data-plid="11711"></span>
            </td>
        </tr>
        <tr>
            <td data-name="55*">
                <span>55*</span>
                <span class="pl" data-plid="11710"></span>
            </td>
            <td data-name="66*">
                <span>66*</span>
                <span class="pl" data-plid="11709"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 19;
    var playId = 447;
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