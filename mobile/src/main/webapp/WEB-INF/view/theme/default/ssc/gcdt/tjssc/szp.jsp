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
            <td data-name="万位-0">
                <span>0</span>
                <span class="pl" data-plid="6973"></span>
            </td>
            <td data-name="万位-1">
                <span>1</span>
                <span class="pl" data-plid="6978"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-2">
                <span>2</span>
                <span class="pl" data-plid="6983"></span>
            </td>
            <td data-name="万位-3">
                <span>3</span>
                <span class="pl" data-plid="6988"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-4">
                <span>4</span>
                <span class="pl" data-plid="6993"></span>
            </td>
            <td data-name="万位-5">
                <span>5</span>
                <span class="pl" data-plid="6998"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-6">
                <span>6</span>
                <span class="pl" data-plid="7003"></span>
            </td>
            <td data-name="万位-7">
                <span>7</span>
                <span class="pl" data-plid="7008"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-8">
                <span>8</span>
                <span class="pl" data-plid="7013"></span>
            </td>
            <td data-name="万位-9">
                <span>9</span>
                <span class="pl" data-plid="7018"></span>
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
            <td data-name="千位-0">
                <span>0</span>
                <span class="pl" data-plid="6974"></span>
            </td>
            <td data-name="千位-1">
                <span>1</span>
                <span class="pl" data-plid="6979"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-2">
                <span>2</span>
                <span class="pl" data-plid="6984"></span>
            </td>
            <td data-name="千位-3">
                <span>3</span>
                <span class="pl" data-plid="6989"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-4">
                <span>4</span>
                <span class="pl" data-plid="6994"></span>
            </td>
            <td data-name="千位-5">
                <span>5</span>
                <span class="pl" data-plid="6999"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-6">
                <span>6</span>
                <span class="pl" data-plid="7004"></span>
            </td>
            <td data-name="千位-7">
                <span>7</span>
                <span class="pl" data-plid="7009"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-8">
                <span>8</span>
                <span class="pl" data-plid="7014"></span>
            </td>
            <td data-name="千位-9">
                <span>9</span>
                <span class="pl" data-plid="7019"></span>
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
            <td data-name="百位-0">
                <span>0</span>
                <span class="pl" data-plid="6975"></span>
            </td>
            <td data-name="百位-1">
                <span>1</span>
                <span class="pl" data-plid="6980"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-2">
                <span>2</span>
                <span class="pl" data-plid="6985"></span>
            </td>
            <td data-name="百位-3">
                <span>3</span>
                <span class="pl" data-plid="6990"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-4">
                <span>4</span>
                <span class="pl" data-plid="6995"></span>
            </td>
            <td data-name="百位-5">
                <span>5</span>
                <span class="pl" data-plid="7000"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-6">
                <span>6</span>
                <span class="pl" data-plid="7005"></span>
            </td>
            <td data-name="百位-7">
                <span>7</span>
                <span class="pl" data-plid="7010"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-8">
                <span>8</span>
                <span class="pl" data-plid="7015"></span>
            </td>
            <td data-name="百位-9">
                <span>9</span>
                <span class="pl" data-plid="7020"></span>
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
            <td data-name="十位-0">
                <span>0</span>
                <span class="pl" data-plid="6976"></span>
            </td>
            <td data-name="十位-1">
                <span>1</span>
                <span class="pl" data-plid="6981"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-2">
                <span>2</span>
                <span class="pl" data-plid="6986"></span>
            </td>
            <td data-name="十位-3">
                <span>3</span>
                <span class="pl" data-plid="6991"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-4">
                <span>4</span>
                <span class="pl" data-plid="6996"></span>
            </td>
            <td data-name="十位-5">
                <span>5</span>
                <span class="pl" data-plid="7001"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-6">
                <span>6</span>
                <span class="pl" data-plid="7006"></span>
            </td>
            <td data-name="十位-7">
                <span>7</span>
                <span class="pl" data-plid="7011"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-8">
                <span>8</span>
                <span class="pl" data-plid="7016"></span>
            </td>
            <td data-name="十位-9">
                <span>9</span>
                <span class="pl" data-plid="7021"></span>
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
            <td data-name="个位-0">
                <span>0</span>
                <span class="pl" data-plid="6977"></span>
            </td>
            <td data-name="个位-1">
                <span>1</span>
                <span class="pl" data-plid="6982"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-2">
                <span>2</span>
                <span class="pl" data-plid="6987"></span>
            </td>
            <td data-name="个位-3">
                <span>3</span>
                <span class="pl" data-plid="6992"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-4">
                <span>4</span>
                <span class="pl" data-plid="6997"></span>
            </td>
            <td data-name="个位-5">
                <span>5</span>
                <span class="pl" data-plid="7002"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-6">
                <span>6</span>
                <span class="pl" data-plid="7007"></span>
            </td>
            <td data-name="个位-7">
                <span>7</span>
                <span class="pl" data-plid="7012"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-8">
                <span>8</span>
                <span class="pl" data-plid="7017"></span>
            </td>
            <td data-name="个位-9">
                <span>9</span>
                <span class="pl" data-plid="7022"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 2;
    var playId = 229;
    var playGroupName = '数字盘';

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