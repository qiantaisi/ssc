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
<div class="cl-960">
    三同号单选@<span class="pl red" data-plid="11823"></span>
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="111">
                <span>111</span>
                <span class="pl" data-plid="11823"></span>
            </td>
            <td data-name="222">
                <span>222</span>
                <span class="pl" data-plid="11822"></span>
            </td>
        </tr>
        <tr>
            <td data-name="333">
                <span>333</span>
                <span class="pl" data-plid="11821"></span>
            </td>
            <td data-name="444">
                <span>444</span>
                <span class="pl" data-plid="11820"></span>
            </td>
        </tr>
        <tr>
            <td data-name="555">
                <span>555</span>
                <span class="pl" data-plid="11819"></span>
            </td>
            <td data-name="666">
                <span>666</span>
                <span class="pl" data-plid="11818"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 21;
    var playId = 464;
    var playGroupName = '三同号单选';

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