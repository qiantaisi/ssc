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
    豹子
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="豹子">
                <span>豹子</span>
                <span class="pl" data-plid="6812"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    混合
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="大">
                <span>大</span>
                <span class="pl" data-plid="6812"></span>
            </td>
            <td data-name="小">
                <span>小</span>
                <span class="pl" data-plid="6813"></span>
            </td>
        </tr>
        <tr>
            <td data-name="单">
                <span>单</span>
                <span class="pl" data-plid="6814"></span>
            </td>
            <td data-name="双">
                <span>双</span>
                <span class="pl" data-plid="6815"></span>
            </td>
        </tr>
        <tr>
            <td data-name="大单">
                <span>大单</span>
                <span class="pl" data-plid="6816"></span>
            </td>
            <td data-name="小单">
                <span>小单</span>
                <span class="pl" data-plid="6817"></span>
            </td>
        </tr>
        <tr>
            <td data-name="大双">
                <span>大双</span>
                <span class="pl" data-plid="6816"></span>
            </td>
            <td data-name="小双">
                <span>小双</span>
                <span class="pl" data-plid="6817"></span>
            </td>
        </tr>
        <tr>
            <td data-name="极大">
                <span>极大</span>
                <span class="pl" data-plid="6816"></span>
            </td>
            <td data-name="极小">
                <span>极小</span>
                <span class="pl" data-plid="6817"></span>
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
            <td data-name="红">
                <span>红</span>
                <span class="pl" data-plid="6812"></span>
            </td>
            <td data-name="蓝">
                <span>蓝</span>
                <span class="pl" data-plid="6813"></span>
            </td>
            <td data-name="绿">
                <span>绿</span>
                <span class="pl" data-plid="6813"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 7;
    var playId = 293;
    var playGroupName = '和值';

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