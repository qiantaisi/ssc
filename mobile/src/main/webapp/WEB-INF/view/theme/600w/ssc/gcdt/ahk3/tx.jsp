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
    <th colspan="10"><strong>通选<span class="pl red"></span></strong></th>
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="豹子">
                <span class="k3_center">豹子</span>
                <span class="pl k3_center_pl" data-plid="11776"  ></span>
            </td>
        </tr>
        <tr>
            <td data-name="顺子">
                <span class="k3_center">顺子</span>
                <span class="pl k3_center_pl" data-plid="11775"  ></span>
            </td>
        </tr>
        <tr>
            <td data-name="对子">
                <span class="k3_center">对子</span>
                <span class="pl k3_center_pl" data-plid="11774"  ></span>
            </td>
        </tr>
        <tr>
            <td data-name="三不同">
                <span class="k3_center">三不同</span>
                <span class="pl k3_center_pl" data-plid="11773"  ></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 20;
    var playId = 459;
    var playGroupName = '通选';

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