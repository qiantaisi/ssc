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
    万位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万位-大">
                <span>大</span>
                <span class="pl" data-plid="10743"></span>
            </td>
            <td data-name="万位-小">
                <span>小</span>
                <span class="pl" data-plid="10742"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-单">
                <span>单</span>
                <span class="pl" data-plid="10741"></span>
            </td>
            <td data-name="万位-双">
                <span>双</span>
                <span class="pl" data-plid="10740"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-质">
                <span>质</span>
                <span class="pl" data-plid="10739"></span>
            </td>
            <td data-name="万位-合">
                <span>合</span>
                <span class="pl" data-plid="10738"></span>
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
                <span class="pl" data-plid="10737"></span>
            </td>
            <td data-name="千位-小">
                <span>小</span>
                <span class="pl" data-plid="10736"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-单">
                <span>单</span>
                <span class="pl" data-plid="10735"></span>
            </td>
            <td data-name="千位-双">
                <span>双</span>
                <span class="pl" data-plid="10734"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-质">
                <span>质</span>
                <span class="pl" data-plid="10733"></span>
            </td>
            <td data-name="千位-合">
                <span>合</span>
                <span class="pl" data-plid="10732"></span>
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
                <span class="pl" data-plid="10731"></span>
            </td>
            <td data-name="百位-小">
                <span>小</span>
                <span class="pl" data-plid="10730"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-单">
                <span>单</span>
                <span class="pl" data-plid="10729"></span>
            </td>
            <td data-name="百位-双">
                <span>双</span>
                <span class="pl" data-plid="10728"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-质">
                <span>质</span>
                <span class="pl" data-plid="10727"></span>
            </td>
            <td data-name="百位-合">
                <span>合</span>
                <span class="pl" data-plid="10726"></span>
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
                <span class="pl" data-plid="10725"></span>
            </td>
            <td data-name="十位-小">
                <span>小</span>
                <span class="pl" data-plid="10724"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-单">
                <span>单</span>
                <span class="pl" data-plid="10723"></span>
            </td>
            <td data-name="十位-双">
                <span>双</span>
                <span class="pl" data-plid="10722"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-质">
                <span>质</span>
                <span class="pl" data-plid="10721"></span>
            </td>
            <td data-name="十位-合">
                <span>合</span>
                <span class="pl" data-plid="10720"></span>
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
                <span class="pl" data-plid="10719"></span>
            </td>
            <td data-name="个位-小">
                <span>小</span>
                <span class="pl" data-plid="10718"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-单">
                <span>单</span>
                <span class="pl" data-plid="10717"></span>
            </td>
            <td data-name="个位-双">
                <span>双</span>
                <span class="pl" data-plid="10716"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-质">
                <span>质</span>
                <span class="pl" data-plid="10715"></span>
            </td>
            <td data-name="个位-合">
                <span>合</span>
                <span class="pl" data-plid="10714"></span>
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
                <span class="pl" data-plid="10713"></span>
            </td>
            <td data-name="总和、龙虎和-总小">
                <span>总小</span>
                <span class="pl" data-plid="10712"></span>
            </td>
        </tr>
        <tr>
            <td data-name="总和、龙虎和-总单">
                <span>总单</span>
                <span class="pl" data-plid="10711"></span>
            </td>
            <td data-name="总和、龙虎和-总双">
                <span>总双</span>
                <span class="pl" data-plid="10710"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table class="table-no-top">
        <tbody>
        <tr>
            <td data-name="总和、龙虎和-龙">
                <span>龙</span>
                <span class="pl" data-plid="10709"></span>
            </td>
            <td data-name="总和、龙虎和-虎">
                <span>虎</span>
                <span class="pl" data-plid="10708"></span>
            </td>
            <td data-name="总和、龙虎和-和">
                <span>和</span>
                <span class="pl" data-plid="10707"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 15;
    var playId = 389;
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