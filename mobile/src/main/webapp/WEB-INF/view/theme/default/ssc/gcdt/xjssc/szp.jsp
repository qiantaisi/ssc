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
                <span class="pl" data-plid="6923"></span>
            </td>
            <td data-name="万位-1">
                <span>1</span>
                <span class="pl" data-plid="6928"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-2">
                <span>2</span>
                <span class="pl" data-plid="6933"></span>
            </td>
            <td data-name="万位-3">
                <span>3</span>
                <span class="pl" data-plid="6938"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-4">
                <span>4</span>
                <span class="pl" data-plid="6943"></span>
            </td>
            <td data-name="万位-5">
                <span>5</span>
                <span class="pl" data-plid="6948"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-6">
                <span>6</span>
                <span class="pl" data-plid="6953"></span>
            </td>
            <td data-name="万位-7">
                <span>7</span>
                <span class="pl" data-plid="6958"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-8">
                <span>8</span>
                <span class="pl" data-plid="6963"></span>
            </td>
            <td data-name="万位-9">
                <span>9</span>
                <span class="pl" data-plid="6968"></span>
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
                <span class="pl" data-plid="6924"></span>
            </td>
            <td data-name="千位-1">
                <span>1</span>
                <span class="pl" data-plid="6929"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-2">
                <span>2</span>
                <span class="pl" data-plid="6934"></span>
            </td>
            <td data-name="千位-3">
                <span>3</span>
                <span class="pl" data-plid="6939"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-4">
                <span>4</span>
                <span class="pl" data-plid="6944"></span>
            </td>
            <td data-name="千位-5">
                <span>5</span>
                <span class="pl" data-plid="6949"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-6">
                <span>6</span>
                <span class="pl" data-plid="6954"></span>
            </td>
            <td data-name="千位-7">
                <span>7</span>
                <span class="pl" data-plid="6959"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-8">
                <span>8</span>
                <span class="pl" data-plid="6964"></span>
            </td>
            <td data-name="千位-9">
                <span>9</span>
                <span class="pl" data-plid="6969"></span>
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
                <span class="pl" data-plid="6925"></span>
            </td>
            <td data-name="百位-1">
                <span>1</span>
                <span class="pl" data-plid="6930"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-2">
                <span>2</span>
                <span class="pl" data-plid="6935"></span>
            </td>
            <td data-name="百位-3">
                <span>3</span>
                <span class="pl" data-plid="6940"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-4">
                <span>4</span>
                <span class="pl" data-plid="6945"></span>
            </td>
            <td data-name="百位-5">
                <span>5</span>
                <span class="pl" data-plid="6950"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-6">
                <span>6</span>
                <span class="pl" data-plid="6955"></span>
            </td>
            <td data-name="百位-7">
                <span>7</span>
                <span class="pl" data-plid="6960"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-8">
                <span>8</span>
                <span class="pl" data-plid="6965"></span>
            </td>
            <td data-name="百位-9">
                <span>9</span>
                <span class="pl" data-plid="6970"></span>
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
                <span class="pl" data-plid="6926"></span>
            </td>
            <td data-name="十位-1">
                <span>1</span>
                <span class="pl" data-plid="6931"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-2">
                <span>2</span>
                <span class="pl" data-plid="6936"></span>
            </td>
            <td data-name="十位-3">
                <span>3</span>
                <span class="pl" data-plid="6941"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-4">
                <span>4</span>
                <span class="pl" data-plid="6946"></span>
            </td>
            <td data-name="十位-5">
                <span>5</span>
                <span class="pl" data-plid="6951"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-6">
                <span>6</span>
                <span class="pl" data-plid="6956"></span>
            </td>
            <td data-name="十位-7">
                <span>7</span>
                <span class="pl" data-plid="6961"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-8">
                <span>8</span>
                <span class="pl" data-plid="6966"></span>
            </td>
            <td data-name="十位-9">
                <span>9</span>
                <span class="pl" data-plid="6971"></span>
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
                <span class="pl" data-plid="6927"></span>
            </td>
            <td data-name="个位-1">
                <span>1</span>
                <span class="pl" data-plid="6932"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-2">
                <span>2</span>
                <span class="pl" data-plid="6937"></span>
            </td>
            <td data-name="个位-3">
                <span>3</span>
                <span class="pl" data-plid="6942"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-4">
                <span>4</span>
                <span class="pl" data-plid="6947"></span>
            </td>
            <td data-name="个位-5">
                <span>5</span>
                <span class="pl" data-plid="6952"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-6">
                <span>6</span>
                <span class="pl" data-plid="6957"></span>
            </td>
            <td data-name="个位-7">
                <span>7</span>
                <span class="pl" data-plid="6962"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-8">
                <span>8</span>
                <span class="pl" data-plid="6967"></span>
            </td>
            <td data-name="个位-9">
                <span>9</span>
                <span class="pl" data-plid="6972"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 3;
    var playId = 241;
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