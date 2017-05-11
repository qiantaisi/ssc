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
    万千和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万千和数-单">
                <span>单</span>
                <span class="pl" data-plid="11034"></span>
            </td>
            <td data-name="万千和数-双">
                <span>双</span>
                <span class="pl" data-plid="11033"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    万百和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万百和数-单">
                <span>单</span>
                <span class="pl" data-plid="11032"></span>
            </td>
            <td data-name="万百和数-双">
                <span>双</span>
                <span class="pl" data-plid="11031"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    万十和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万十和数-单">
                <span>单</span>
                <span class="pl" data-plid="11016"></span>
            </td>
            <td data-name="万十和数-双">
                <span>双</span>
                <span class="pl" data-plid="11015"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    万个和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万个和数-单">
                <span>单</span>
                <span class="pl" data-plid="11030"></span>
            </td>
            <td data-name="万个和数-双">
                <span>双</span>
                <span class="pl" data-plid="11029"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    千百和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="千百和数-单">
                <span>单</span>
                <span class="pl" data-plid="11028"></span>
            </td>
            <td data-name="千百和数-双">
                <span>双</span>
                <span class="pl" data-plid="11027"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    千十和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="千十和数-单">
                <span>单</span>
                <span class="pl" data-plid="11026"></span>
            </td>
            <td data-name="千十和数-双">
                <span>双</span>
                <span class="pl" data-plid="11025"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    千个和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="千个和数-单">
                <span>单</span>
                <span class="pl" data-plid="11024"></span>
            </td>
            <td data-name="千个和数-双">
                <span>双</span>
                <span class="pl" data-plid="11023"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    百十和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="百十和数-单">
                <span>单</span>
                <span class="pl" data-plid="11022"></span>
            </td>
            <td data-name="百十和数-双">
                <span>双</span>
                <span class="pl" data-plid="11021"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    百个和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="百个和数-单">
                <span>单</span>
                <span class="pl" data-plid="11020"></span>
            </td>
            <td data-name="百个和数-双">
                <span>双</span>
                <span class="pl" data-plid="11019"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    十个和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="十个和数-单">
                <span>单</span>
                <span class="pl" data-plid="11018"></span>
            </td>
            <td data-name="十个和数-双">
                <span>双</span>
                <span class="pl" data-plid="11017"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 16;
    var playId = 394;
    var playGroupName = '二字和数';

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