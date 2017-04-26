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
                <span class="pl" data-plid="6812"></span>
            </td>
            <td data-name="万位-小">
                <span>小</span>
                <span class="pl" data-plid="6813"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-单">
                <span>单</span>
                <span class="pl" data-plid="6814"></span>
            </td>
            <td data-name="万位-双">
                <span>双</span>
                <span class="pl" data-plid="6815"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-质">
                <span>质</span>
                <span class="pl" data-plid="6816"></span>
            </td>
            <td data-name="万位-合">
                <span>合</span>
                <span class="pl" data-plid="6817"></span>
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
                <span class="pl" data-plid="6818"></span>
            </td>
            <td data-name="千位-小">
                <span>小</span>
                <span class="pl" data-plid="6819"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-单">
                <span>单</span>
                <span class="pl" data-plid="6820"></span>
            </td>
            <td data-name="千位-双">
                <span>双</span>
                <span class="pl" data-plid="6821"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-质">
                <span>质</span>
                <span class="pl" data-plid="6822"></span>
            </td>
            <td data-name="千位-合">
                <span>合</span>
                <span class="pl" data-plid="6823"></span>
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
                <span class="pl" data-plid="6824"></span>
            </td>
            <td data-name="百位-小">
                <span>小</span>
                <span class="pl" data-plid="6825"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-单">
                <span>单</span>
                <span class="pl" data-plid="6826"></span>
            </td>
            <td data-name="百位-双">
                <span>双</span>
                <span class="pl" data-plid="6827"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-质">
                <span>质</span>
                <span class="pl" data-plid="6828"></span>
            </td>
            <td data-name="百位-合">
                <span>合</span>
                <span class="pl" data-plid="6829"></span>
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
                <span class="pl" data-plid="6830"></span>
            </td>
            <td data-name="十位-小">
                <span>小</span>
                <span class="pl" data-plid="6831"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-单">
                <span>单</span>
                <span class="pl" data-plid="6832"></span>
            </td>
            <td data-name="十位-双">
                <span>双</span>
                <span class="pl" data-plid="6833"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-质">
                <span>质</span>
                <span class="pl" data-plid="6834"></span>
            </td>
            <td data-name="十位-合">
                <span>合</span>
                <span class="pl" data-plid="6835"></span>
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
                <span class="pl" data-plid="6836"></span>
            </td>
            <td data-name="个位-小">
                <span>小</span>
                <span class="pl" data-plid="6837"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-单">
                <span>单</span>
                <span class="pl" data-plid="6838"></span>
            </td>
            <td data-name="个位-双">
                <span>双</span>
                <span class="pl" data-plid="6839"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-质">
                <span>质</span>
                <span class="pl" data-plid="6840"></span>
            </td>
            <td data-name="个位-合">
                <span>合</span>
                <span class="pl" data-plid="6841"></span>
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
                <span class="pl" data-plid="6842"></span>
            </td>
            <td data-name="总和、龙虎和-总小">
                <span>总小</span>
                <span class="pl" data-plid="6843"></span>
            </td>
        </tr>
        <tr>
            <td data-name="总和、龙虎和-总单">
                <span>总单</span>
                <span class="pl" data-plid="6844"></span>
            </td>
            <td data-name="总和、龙虎和-总双">
                <span>总双</span>
                <span class="pl" data-plid="6845"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table class="table-no-top">
        <tbody>
        <tr>
            <td data-name="总和、龙虎和-龙">
                <span>龙</span>
                <span class="pl" data-plid="6846"></span>
            </td>
            <td data-name="总和、龙虎和-虎">
                <span>虎</span>
                <span class="pl" data-plid="6847"></span>
            </td>
            <td data-name="总和、龙虎和-和">
                <span>和</span>
                <span class="pl" data-plid="6848"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 1;
    var playId = 216;
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