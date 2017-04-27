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
            <td data-name="万位-0">
                <span>0</span>
                <span class="pl" data-plid="10517"></span>
            </td>
            <td data-name="万位-1">
                <span>1</span>
                <span class="pl" data-plid="10516"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-2">
                <span>2</span>
                <span class="pl" data-plid="10515"></span>
            </td>
            <td data-name="万位-3">
                <span>3</span>
                <span class="pl" data-plid="10514"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-4">
                <span>4</span>
                <span class="pl" data-plid="10513"></span>
            </td>
            <td data-name="万位-5">
                <span>5</span>
                <span class="pl" data-plid="10512"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-6">
                <span>6</span>
                <span class="pl" data-plid="10511"></span>
            </td>
            <td data-name="万位-7">
                <span>7</span>
                <span class="pl" data-plid="10510"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-8">
                <span>8</span>
                <span class="pl" data-plid="10509"></span>
            </td>
            <td data-name="万位-9">
                <span>9</span>
                <span class="pl" data-plid="10508"></span>
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
                <span class="pl" data-plid="10507"></span>
            </td>
            <td data-name="千位-1">
                <span>1</span>
                <span class="pl" data-plid="10506"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-2">
                <span>2</span>
                <span class="pl" data-plid="10505"></span>
            </td>
            <td data-name="千位-3">
                <span>3</span>
                <span class="pl" data-plid="10504"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-4">
                <span>4</span>
                <span class="pl" data-plid="10503"></span>
            </td>
            <td data-name="千位-5">
                <span>5</span>
                <span class="pl" data-plid="10502"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-6">
                <span>6</span>
                <span class="pl" data-plid="10501"></span>
            </td>
            <td data-name="千位-7">
                <span>7</span>
                <span class="pl" data-plid="10500"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-8">
                <span>8</span>
                <span class="pl" data-plid="10499"></span>
            </td>
            <td data-name="千位-9">
                <span>9</span>
                <span class="pl" data-plid="10498"></span>
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
                <span class="pl" data-plid="10497"></span>
            </td>
            <td data-name="百位-1">
                <span>1</span>
                <span class="pl" data-plid="10496"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-2">
                <span>2</span>
                <span class="pl" data-plid="10495"></span>
            </td>
            <td data-name="百位-3">
                <span>3</span>
                <span class="pl" data-plid="10494"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-4">
                <span>4</span>
                <span class="pl" data-plid="10493"></span>
            </td>
            <td data-name="百位-5">
                <span>5</span>
                <span class="pl" data-plid="10492"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-6">
                <span>6</span>
                <span class="pl" data-plid="10491"></span>
            </td>
            <td data-name="百位-7">
                <span>7</span>
                <span class="pl" data-plid="10490"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-8">
                <span>8</span>
                <span class="pl" data-plid="10489"></span>
            </td>
            <td data-name="百位-9">
                <span>9</span>
                <span class="pl" data-plid="10488"></span>
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
                <span class="pl" data-plid="10487"></span>
            </td>
            <td data-name="十位-1">
                <span>1</span>
                <span class="pl" data-plid="10486"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-2">
                <span>2</span>
                <span class="pl" data-plid="10485"></span>
            </td>
            <td data-name="十位-3">
                <span>3</span>
                <span class="pl" data-plid="10484"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-4">
                <span>4</span>
                <span class="pl" data-plid="10483"></span>
            </td>
            <td data-name="十位-5">
                <span>5</span>
                <span class="pl" data-plid="10482"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-6">
                <span>6</span>
                <span class="pl" data-plid="10481"></span>
            </td>
            <td data-name="十位-7">
                <span>7</span>
                <span class="pl" data-plid="10480"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-8">
                <span>8</span>
                <span class="pl" data-plid="10479"></span>
            </td>
            <td data-name="十位-9">
                <span>9</span>
                <span class="pl" data-plid="10478"></span>
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
                <span class="pl" data-plid="10477"></span>
            </td>
            <td data-name="个位-1">
                <span>1</span>
                <span class="pl" data-plid="10476"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-2">
                <span>2</span>
                <span class="pl" data-plid="10475"></span>
            </td>
            <td data-name="个位-3">
                <span>3</span>
                <span class="pl" data-plid="10474"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-4">
                <span>4</span>
                <span class="pl" data-plid="10473"></span>
            </td>
            <td data-name="个位-5">
                <span>5</span>
                <span class="pl" data-plid="10472"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-6">
                <span>6</span>
                <span class="pl" data-plid="10471"></span>
            </td>
            <td data-name="个位-7">
                <span>7</span>
                <span class="pl" data-plid="10470"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-8">
                <span>8</span>
                <span class="pl" data-plid="10469"></span>
            </td>
            <td data-name="个位-9">
                <span>9</span>
                <span class="pl" data-plid="10468"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 13;
    var playId = 337;
    var playGroupName = '数字盘';

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