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

<div class="cl-603">
    十定位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="十定位-0">
                <span>0</span>
                <span class="pl" data-plid="7815"></span>
            </td>
            <td data-name="十定位-1">
                <span>1</span>
                <span class="pl" data-plid="7821"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十定位-2">
                <span>2</span>
                <span class="pl" data-plid="7827"></span>
            </td>
            <td data-name="十定位-3">
                <span>3</span>
                <span class="pl" data-plid="7833"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十定位-4">
                <span>4</span>
                <span class="pl" data-plid="7839"></span>
            </td>
            <td data-name="十定位-5">
                <span>5</span>
                <span class="pl" data-plid="7845"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十定位-6">
                <span>6</span>
                <span class="pl" data-plid="7851"></span>
            </td>
            <td data-name="十定位-7">
                <span>7</span>
                <span class="pl" data-plid="7857"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十定位-8">
                <span>8</span>
                <span class="pl" data-plid="7863"></span>
            </td>
            <td data-name="十定位-9">
                <span>9</span>
                <span class="pl" data-plid="7869"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    十定位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="十定位-大">
                <span>大</span>
                <span class="pl" data-plid="7875"></span>
            </td>
            <td data-name="十定位-小">
                <span>小</span>
                <span class="pl" data-plid="7881"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十定位-单">
                <span>单</span>
                <span class="pl" data-plid="7887"></span>
            </td>
            <td data-name="十定位-双">
                <span>双</span>
                <span class="pl" data-plid="7893"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十定位-质">
                <span>质</span>
                <span class="pl" data-plid="7899"></span>
            </td>
            <td data-name="十定位-合">
                <span>合</span>
                <span class="pl" data-plid="7905"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 4;
    var playId = 287;
    var playGroupName = '定位';

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