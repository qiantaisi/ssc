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
                <span class="pl" data-plid="11457"></span>
            </td>
            <td data-name="万位-1">
                <span>1</span>
                <span class="pl" data-plid="11456"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-2">
                <span>2</span>
                <span class="pl" data-plid="11455"></span>
            </td>
            <td data-name="万位-3">
                <span>3</span>
                <span class="pl" data-plid="11454"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-4">
                <span>4</span>
                <span class="pl" data-plid="11453"></span>
            </td>
            <td data-name="万位-5">
                <span>5</span>
                <span class="pl" data-plid="11452"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-6">
                <span>6</span>
                <span class="pl" data-plid="11451"></span>
            </td>
            <td data-name="万位-7">
                <span>7</span>
                <span class="pl" data-plid="11450"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-8">
                <span>8</span>
                <span class="pl" data-plid="11449"></span>
            </td>
            <td data-name="万位-9">
                <span>9</span>
                <span class="pl" data-plid="11448"></span>
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
                <span class="pl" data-plid="11447"></span>
            </td>
            <td data-name="千位-1">
                <span>1</span>
                <span class="pl" data-plid="11446"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-2">
                <span>2</span>
                <span class="pl" data-plid="11445"></span>
            </td>
            <td data-name="千位-3">
                <span>3</span>
                <span class="pl" data-plid="11444"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-4">
                <span>4</span>
                <span class="pl" data-plid="11443"></span>
            </td>
            <td data-name="千位-5">
                <span>5</span>
                <span class="pl" data-plid="11442"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-6">
                <span>6</span>
                <span class="pl" data-plid="11441"></span>
            </td>
            <td data-name="千位-7">
                <span>7</span>
                <span class="pl" data-plid="11440"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-8">
                <span>8</span>
                <span class="pl" data-plid="11439"></span>
            </td>
            <td data-name="千位-9">
                <span>9</span>
                <span class="pl" data-plid="11438"></span>
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
                <span class="pl" data-plid="11437"></span>
            </td>
            <td data-name="百位-1">
                <span>1</span>
                <span class="pl" data-plid="11436"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-2">
                <span>2</span>
                <span class="pl" data-plid="11435"></span>
            </td>
            <td data-name="百位-3">
                <span>3</span>
                <span class="pl" data-plid="11434"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-4">
                <span>4</span>
                <span class="pl" data-plid="11433"></span>
            </td>
            <td data-name="百位-5">
                <span>5</span>
                <span class="pl" data-plid="11432"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-6">
                <span>6</span>
                <span class="pl" data-plid="11431"></span>
            </td>
            <td data-name="百位-7">
                <span>7</span>
                <span class="pl" data-plid="11430"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-8">
                <span>8</span>
                <span class="pl" data-plid="11429"></span>
            </td>
            <td data-name="百位-9">
                <span>9</span>
                <span class="pl" data-plid="11428"></span>
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
                <span class="pl" data-plid="11427"></span>
            </td>
            <td data-name="十位-1">
                <span>1</span>
                <span class="pl" data-plid="11426"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-2">
                <span>2</span>
                <span class="pl" data-plid="11425"></span>
            </td>
            <td data-name="十位-3">
                <span>3</span>
                <span class="pl" data-plid="11424"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-4">
                <span>4</span>
                <span class="pl" data-plid="11423"></span>
            </td>
            <td data-name="十位-5">
                <span>5</span>
                <span class="pl" data-plid="11422"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-6">
                <span>6</span>
                <span class="pl" data-plid="11421"></span>
            </td>
            <td data-name="十位-7">
                <span>7</span>
                <span class="pl" data-plid="11420"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-8">
                <span>8</span>
                <span class="pl" data-plid="11419"></span>
            </td>
            <td data-name="十位-9">
                <span>9</span>
                <span class="pl" data-plid="11418"></span>
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
                <span class="pl" data-plid="11417"></span>
            </td>
            <td data-name="个位-1">
                <span>1</span>
                <span class="pl" data-plid="11416"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-2">
                <span>2</span>
                <span class="pl" data-plid="11415"></span>
            </td>
            <td data-name="个位-3">
                <span>3</span>
                <span class="pl" data-plid="11414"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-4">
                <span>4</span>
                <span class="pl" data-plid="11413"></span>
            </td>
            <td data-name="个位-5">
                <span>5</span>
                <span class="pl" data-plid="11412"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-6">
                <span>6</span>
                <span class="pl" data-plid="11411"></span>
            </td>
            <td data-name="个位-7">
                <span>7</span>
                <span class="pl" data-plid="11410"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-8">
                <span>8</span>
                <span class="pl" data-plid="11409"></span>
            </td>
            <td data-name="个位-9">
                <span>9</span>
                <span class="pl" data-plid="11408"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 17;
    var playId = 404;
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