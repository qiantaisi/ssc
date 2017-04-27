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
    万千和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万千和数-单">
                <span>单</span>
                <span class="pl" data-plid="7493"></span>
            </td>
            <td data-name="万千和数-双">
                <span>双</span>
                <span class="pl" data-plid="7494"></span>
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
                <span class="pl" data-plid="7495"></span>
            </td>
            <td data-name="万百和数-双">
                <span>双</span>
                <span class="pl" data-plid="7496"></span>
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
                <span class="pl" data-plid="9458"></span>
            </td>
            <td data-name="万十和数-双">
                <span>双</span>
                <span class="pl" data-plid="9459"></span>
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
                <span class="pl" data-plid="7497"></span>
            </td>
            <td data-name="万个和数-双">
                <span>双</span>
                <span class="pl" data-plid="7498"></span>
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
                <span class="pl" data-plid="7499"></span>
            </td>
            <td data-name="千百和数-双">
                <span>双</span>
                <span class="pl" data-plid="7500"></span>
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
                <span class="pl" data-plid="7501"></span>
            </td>
            <td data-name="千十和数-双">
                <span>双</span>
                <span class="pl" data-plid="7502"></span>
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
                <span class="pl" data-plid="7503"></span>
            </td>
            <td data-name="千个和数-双">
                <span>双</span>
                <span class="pl" data-plid="7504"></span>
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
                <span class="pl" data-plid="7505"></span>
            </td>
            <td data-name="百十和数-双">
                <span>双</span>
                <span class="pl" data-plid="7506"></span>
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
                <span class="pl" data-plid="7507"></span>
            </td>
            <td data-name="百个和数-双">
                <span>双</span>
                <span class="pl" data-plid="7508"></span>
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
                <span class="pl" data-plid="7509"></span>
            </td>
            <td data-name="十个和数-双">
                <span>双</span>
                <span class="pl" data-plid="7510"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 2;
    var playId = 235;
    var playGroupName = '二字和数';

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