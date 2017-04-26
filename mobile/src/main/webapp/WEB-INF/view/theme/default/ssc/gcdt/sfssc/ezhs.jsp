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
    万千和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万千和数-单">
                <span>单</span>
                <span class="pl" data-plid="10337"></span>
            </td>
            <td data-name="万千和数-双">
                <span>双</span>
                <span class="pl" data-plid="10336"></span>
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
                <span class="pl" data-plid="10335"></span>
            </td>
            <td data-name="万百和数-双">
                <span>双</span>
                <span class="pl" data-plid="10334"></span>
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
                <span class="pl" data-plid="10224"></span>
            </td>
            <td data-name="万十和数-双">
                <span>双</span>
                <span class="pl" data-plid="10223"></span>
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
                <span class="pl" data-plid="10333"></span>
            </td>
            <td data-name="万个和数-双">
                <span>双</span>
                <span class="pl" data-plid="10332"></span>
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
                <span class="pl" data-plid="10331"></span>
            </td>
            <td data-name="千百和数-双">
                <span>双</span>
                <span class="pl" data-plid="10330"></span>
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
                <span class="pl" data-plid="10329"></span>
            </td>
            <td data-name="千十和数-双">
                <span>双</span>
                <span class="pl" data-plid="10328"></span>
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
                <span class="pl" data-plid="10327"></span>
            </td>
            <td data-name="千个和数-双">
                <span>双</span>
                <span class="pl" data-plid="10326"></span>
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
                <span class="pl" data-plid="10325"></span>
            </td>
            <td data-name="百十和数-双">
                <span>双</span>
                <span class="pl" data-plid="10324"></span>
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
                <span class="pl" data-plid="10323"></span>
            </td>
            <td data-name="百个和数-双">
                <span>双</span>
                <span class="pl" data-plid="10322"></span>
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
                <span class="pl" data-plid="10321"></span>
            </td>
            <td data-name="十个和数-双">
                <span>双</span>
                <span class="pl" data-plid="10320"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 13;
    var playId = 338;
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