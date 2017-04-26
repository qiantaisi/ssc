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
    万位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万位-大">
                <span>大</span>
                <span class="pl" data-plid="10554"></span>
            </td>
            <td data-name="万位-小">
                <span>小</span>
                <span class="pl" data-plid="10553"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-单">
                <span>单</span>
                <span class="pl" data-plid="10552"></span>
            </td>
            <td data-name="万位-双">
                <span>双</span>
                <span class="pl" data-plid="10551"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-质">
                <span>质</span>
                <span class="pl" data-plid="10550"></span>
            </td>
            <td data-name="万位-合">
                <span>合</span>
                <span class="pl" data-plid="10549"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    千位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="千位-大">
                <span>大</span>
                <span class="pl" data-plid="10548"></span>
            </td>
            <td data-name="千位-小">
                <span>小</span>
                <span class="pl" data-plid="10547"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-单">
                <span>单</span>
                <span class="pl" data-plid="10546"></span>
            </td>
            <td data-name="千位-双">
                <span>双</span>
                <span class="pl" data-plid="10545"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-质">
                <span>质</span>
                <span class="pl" data-plid="10544"></span>
            </td>
            <td data-name="千位-合">
                <span>合</span>
                <span class="pl" data-plid="10543"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    百位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="百位-大">
                <span>大</span>
                <span class="pl" data-plid="10542"></span>
            </td>
            <td data-name="百位-小">
                <span>小</span>
                <span class="pl" data-plid="10541"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-单">
                <span>单</span>
                <span class="pl" data-plid="10540"></span>
            </td>
            <td data-name="百位-双">
                <span>双</span>
                <span class="pl" data-plid="10539"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-质">
                <span>质</span>
                <span class="pl" data-plid="10538"></span>
            </td>
            <td data-name="百位-合">
                <span>合</span>
                <span class="pl" data-plid="10537"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    十位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="十位-大">
                <span>大</span>
                <span class="pl" data-plid="10536"></span>
            </td>
            <td data-name="十位-小">
                <span>小</span>
                <span class="pl" data-plid="10535"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-单">
                <span>单</span>
                <span class="pl" data-plid="10534"></span>
            </td>
            <td data-name="十位-双">
                <span>双</span>
                <span class="pl" data-plid="10533"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-质">
                <span>质</span>
                <span class="pl" data-plid="10532"></span>
            </td>
            <td data-name="十位-合">
                <span>合</span>
                <span class="pl" data-plid="10531"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    个位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="个位-大">
                <span>大</span>
                <span class="pl" data-plid="10530"></span>
            </td>
            <td data-name="个位-小">
                <span>小</span>
                <span class="pl" data-plid="10529"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-单">
                <span>单</span>
                <span class="pl" data-plid="10528"></span>
            </td>
            <td data-name="个位-双">
                <span>双</span>
                <span class="pl" data-plid="10527"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-质">
                <span>质</span>
                <span class="pl" data-plid="10526"></span>
            </td>
            <td data-name="个位-合">
                <span>合</span>
                <span class="pl" data-plid="10525"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    总和、龙虎和
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="总和、龙虎和-总大">
                <span>总大</span>
                <span class="pl" data-plid="10524"></span>
            </td>
            <td data-name="总和、龙虎和-总小">
                <span>总小</span>
                <span class="pl" data-plid="10523"></span>
            </td>
        </tr>
        <tr>
            <td data-name="总和、龙虎和-总单">
                <span>总单</span>
                <span class="pl" data-plid="10522"></span>
            </td>
            <td data-name="总和、龙虎和-总双">
                <span>总双</span>
                <span class="pl" data-plid="10521"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table class="table-no-top">
        <tbody>
        <tr>
            <td data-name="总和、龙虎和-龙">
                <span>龙</span>
                <span class="pl" data-plid="10520"></span>
            </td>
            <td data-name="总和、龙虎和-虎">
                <span>虎</span>
                <span class="pl" data-plid="10519"></span>
            </td>
            <td data-name="总和、龙虎和-和">
                <span>和</span>
                <span class="pl" data-plid="10518"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 13;
    var playId = 332;
    var playGroupName = '双面';

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