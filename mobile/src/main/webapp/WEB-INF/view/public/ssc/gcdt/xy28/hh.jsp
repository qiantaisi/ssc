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
    混合
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="大">
                <span>大</span>
                <span class="pl" data-plid="14393"></span>
            </td>
            <td data-name="小">
                <span>小</span>
                <span class="pl" data-plid="14394"></span>
            </td>
        </tr>
        <tr>
            <td data-name="单">
                <span>单</span>
                <span class="pl" data-plid="14395"></span>
            </td>
            <td data-name="双">
                <span>双</span>
                <span class="pl" data-plid="14396"></span>
            </td>
        </tr>
        <tr>
            <td data-name="大单">
                <span>大单</span>
                <span class="pl" data-plid="14397"></span>
            </td>
            <td data-name="小单">
                <span>小单</span>
                <span class="pl" data-plid="14398"></span>
            </td>
        </tr>
        <tr>
            <td data-name="大双">
                <span>大双</span>
                <span class="pl" data-plid="14399"></span>
            </td>
            <td data-name="小双">
                <span>小双</span>
                <span class="pl" data-plid="14400"></span>
            </td>
        </tr>
        <tr>
            <td data-name="极大">
                <span>极大</span>
                <span class="pl" data-plid="14401"></span>
            </td>
            <td data-name="极小">
                <span>极小</span>
                <span class="pl" data-plid="14402"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    色波
</div>
<div class="cl-604">
    <table class="sebo-select">
        <tbody>
        <tr>
            <td data-name="红波">
                <span>红</span>
                <span class="pl" data-plid="14403"></span>
            </td>
            <td data-name="蓝波">
                <span>蓝</span>
                <span class="pl" data-plid="14405"></span>
            </td>
            <td data-name="绿波">
                <span>绿</span>
                <span class="pl" data-plid="14404"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    豹子
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="豹子">
                <span>豹子</span>
                <span class="pl" data-plid="14406"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 7;
    var playId = 657;
    var playGroupName = '混合';

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