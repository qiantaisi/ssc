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
    通选<span class="pl red"></span>
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="豹子">
                <span class="k3_center">豹子</span>
                <span class="pl k3_center_pl" data-plid="11664"></span>
            </td>
        </tr>
        <tr>
            <td data-name="顺子">
                <span class="k3_center">顺子</span>
                <span class="pl k3_center_pl" data-plid="11665"></span>
            </td>
        </tr>
        <tr>
            <td data-name="对子">
                <span class="k3_center">对子</span>
                <span class="pl k3_center_pl" data-plid="11666"></span>
            </td>
        </tr>
        <tr>
            <td data-name="三不同">
                <span class="k3_center">三不同</span>
                <span class="pl k3_center_pl" data-plid="11667"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 18;
    var playId = 438;
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
                playPl: $(this).find(".pl").data("pl")     //向被选元素附加数据，或者从被选元素获取数据
            });
            betForm.totalMoney = add(betForm.totalMoney, inputMoney);  //把元素添加到已存在的元素组合中
            betForm.totalZhushu = add(betForm.totalZhushu, 1);
        });
        return betForm;
    }

    function getZhushu() {
        return $(".cl-604 table tbody tr td.active").length;
    }
</script>