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
                <span class="pl" data-plid="11075"></span>
            </td>
            <td data-name="万位-小">
                <span>小</span>
                <span class="pl" data-plid="11074"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-单">
                <span>单</span>
                <span class="pl" data-plid="11073"></span>
            </td>
            <td data-name="万位-双">
                <span>双</span>
                <span class="pl" data-plid="11072"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-质">
                <span>质</span>
                <span class="pl" data-plid="11071"></span>
            </td>
            <td data-name="万位-合">
                <span>合</span>
                <span class="pl" data-plid="11070"></span>
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
                <span class="pl" data-plid="11069"></span>
            </td>
            <td data-name="千位-小">
                <span>小</span>
                <span class="pl" data-plid="11068"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-单">
                <span>单</span>
                <span class="pl" data-plid="11067"></span>
            </td>
            <td data-name="千位-双">
                <span>双</span>
                <span class="pl" data-plid="11066"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-质">
                <span>质</span>
                <span class="pl" data-plid="11065"></span>
            </td>
            <td data-name="千位-合">
                <span>合</span>
                <span class="pl" data-plid="11064"></span>
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
                <span class="pl" data-plid="11063"></span>
            </td>
            <td data-name="百位-小">
                <span>小</span>
                <span class="pl" data-plid="11062"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-单">
                <span>单</span>
                <span class="pl" data-plid="11061"></span>
            </td>
            <td data-name="百位-双">
                <span>双</span>
                <span class="pl" data-plid="11060"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-质">
                <span>质</span>
                <span class="pl" data-plid="11059"></span>
            </td>
            <td data-name="百位-合">
                <span>合</span>
                <span class="pl" data-plid="11058"></span>
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
                <span class="pl" data-plid="11057"></span>
            </td>
            <td data-name="十位-小">
                <span>小</span>
                <span class="pl" data-plid="11056"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-单">
                <span>单</span>
                <span class="pl" data-plid="11055"></span>
            </td>
            <td data-name="十位-双">
                <span>双</span>
                <span class="pl" data-plid="11054"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-质">
                <span>质</span>
                <span class="pl" data-plid="11053"></span>
            </td>
            <td data-name="十位-合">
                <span>合</span>
                <span class="pl" data-plid="11052"></span>
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
                <span class="pl" data-plid="11051"></span>
            </td>
            <td data-name="个位-小">
                <span>小</span>
                <span class="pl" data-plid="11050"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-单">
                <span>单</span>
                <span class="pl" data-plid="11049"></span>
            </td>
            <td data-name="个位-双">
                <span>双</span>
                <span class="pl" data-plid="11048"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-质">
                <span>质</span>
                <span class="pl" data-plid="11047"></span>
            </td>
            <td data-name="个位-合">
                <span>合</span>
                <span class="pl" data-plid="11046"></span>
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
                <span class="pl" data-plid="11045"></span>
            </td>
            <td data-name="总和、龙虎和-总小">
                <span>总小</span>
                <span class="pl" data-plid="11044"></span>
            </td>
        </tr>
        <tr>
            <td data-name="总和、龙虎和-总单">
                <span>总单</span>
                <span class="pl" data-plid="11043"></span>
            </td>
            <td data-name="总和、龙虎和-总双">
                <span>总双</span>
                <span class="pl" data-plid="11042"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table class="table-no-top">
        <tbody>
        <tr>
            <td data-name="总和、龙虎和-龙">
                <span>龙</span>
                <span class="pl" data-plid="11041"></span>
            </td>
            <td data-name="总和、龙虎和-虎">
                <span>虎</span>
                <span class="pl" data-plid="11040"></span>
            </td>
            <td data-name="总和、龙虎和-和">
                <span>和</span>
                <span class="pl" data-plid="11039"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 16;
    var playId = 401;
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