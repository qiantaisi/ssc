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
    万位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万位-大">
                <span>大</span>
                <span class="pl" data-plid="6886"></span>
            </td>
            <td data-name="万位-小">
                <span>小</span>
                <span class="pl" data-plid="6887"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-单">
                <span>单</span>
                <span class="pl" data-plid="6888"></span>
            </td>
            <td data-name="万位-双">
                <span>双</span>
                <span class="pl" data-plid="6889"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-质">
                <span>质</span>
                <span class="pl" data-plid="6890"></span>
            </td>
            <td data-name="万位-合">
                <span>合</span>
                <span class="pl" data-plid="6891"></span>
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
                <span class="pl" data-plid="6892"></span>
            </td>
            <td data-name="千位-小">
                <span>小</span>
                <span class="pl" data-plid="6893"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-单">
                <span>单</span>
                <span class="pl" data-plid="6894"></span>
            </td>
            <td data-name="千位-双">
                <span>双</span>
                <span class="pl" data-plid="6895"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-质">
                <span>质</span>
                <span class="pl" data-plid="6896"></span>
            </td>
            <td data-name="千位-合">
                <span>合</span>
                <span class="pl" data-plid="6897"></span>
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
                <span class="pl" data-plid="6898"></span>
            </td>
            <td data-name="百位-小">
                <span>小</span>
                <span class="pl" data-plid="6899"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-单">
                <span>单</span>
                <span class="pl" data-plid="6900"></span>
            </td>
            <td data-name="百位-双">
                <span>双</span>
                <span class="pl" data-plid="6901"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-质">
                <span>质</span>
                <span class="pl" data-plid="6902"></span>
            </td>
            <td data-name="百位-合">
                <span>合</span>
                <span class="pl" data-plid="6903"></span>
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
                <span class="pl" data-plid="6904"></span>
            </td>
            <td data-name="十位-小">
                <span>小</span>
                <span class="pl" data-plid="6905"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-单">
                <span>单</span>
                <span class="pl" data-plid="6906"></span>
            </td>
            <td data-name="十位-双">
                <span>双</span>
                <span class="pl" data-plid="6907"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-质">
                <span>质</span>
                <span class="pl" data-plid="6908"></span>
            </td>
            <td data-name="十位-合">
                <span>合</span>
                <span class="pl" data-plid="6909"></span>
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
                <span class="pl" data-plid="6910"></span>
            </td>
            <td data-name="个位-小">
                <span>小</span>
                <span class="pl" data-plid="6911"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-单">
                <span>单</span>
                <span class="pl" data-plid="6912"></span>
            </td>
            <td data-name="个位-双">
                <span>双</span>
                <span class="pl" data-plid="6913"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-质">
                <span>质</span>
                <span class="pl" data-plid="6914"></span>
            </td>
            <td data-name="个位-合">
                <span>合</span>
                <span class="pl" data-plid="6915"></span>
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
                <span class="pl" data-plid="6916"></span>
            </td>
            <td data-name="总和、龙虎和-总小">
                <span>总小</span>
                <span class="pl" data-plid="6917"></span>
            </td>
        </tr>
        <tr>
            <td data-name="总和、龙虎和-总单">
                <span>总单</span>
                <span class="pl" data-plid="6918"></span>
            </td>
            <td data-name="总和、龙虎和-总双">
                <span>总双</span>
                <span class="pl" data-plid="6919"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
            <td data-name="总和、龙虎和-龙">
                <span>龙</span>
                <span class="pl" data-plid="6920"></span>
            </td>
            <td data-name="总和、龙虎和-虎">
                <span>虎</span>
                <span class="pl" data-plid="6921"></span>
            </td>
            <td data-name="总和、龙虎和-和">
                <span>和</span>
                <span class="pl" data-plid="6922"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 3;
    var playId = 240;
    var playGroupName = '双面';


    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        var inputMoney = $("#inputMoney").val();
        $(".cl-604 table tbody tr td.active").each(function() {
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: $("#number").data("number"),
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