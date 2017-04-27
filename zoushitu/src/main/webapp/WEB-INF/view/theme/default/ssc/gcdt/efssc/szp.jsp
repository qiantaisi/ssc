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
                <span class="pl" data-plid="11125"></span>
            </td>
            <td data-name="万位-1">
                <span>1</span>
                <span class="pl" data-plid="11124"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-2">
                <span>2</span>
                <span class="pl" data-plid="11123"></span>
            </td>
            <td data-name="万位-3">
                <span>3</span>
                <span class="pl" data-plid="11122"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-4">
                <span>4</span>
                <span class="pl" data-plid="11121"></span>
            </td>
            <td data-name="万位-5">
                <span>5</span>
                <span class="pl" data-plid="11120"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-6">
                <span>6</span>
                <span class="pl" data-plid="11119"></span>
            </td>
            <td data-name="万位-7">
                <span>7</span>
                <span class="pl" data-plid="11118"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万位-8">
                <span>8</span>
                <span class="pl" data-plid="11117"></span>
            </td>
            <td data-name="万位-9">
                <span>9</span>
                <span class="pl" data-plid="11116"></span>
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
                <span class="pl" data-plid="11115"></span>
            </td>
            <td data-name="千位-1">
                <span>1</span>
                <span class="pl" data-plid="11114"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-2">
                <span>2</span>
                <span class="pl" data-plid="11113"></span>
            </td>
            <td data-name="千位-3">
                <span>3</span>
                <span class="pl" data-plid="11112"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-4">
                <span>4</span>
                <span class="pl" data-plid="11111"></span>
            </td>
            <td data-name="千位-5">
                <span>5</span>
                <span class="pl" data-plid="11110"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-6">
                <span>6</span>
                <span class="pl" data-plid="11109"></span>
            </td>
            <td data-name="千位-7">
                <span>7</span>
                <span class="pl" data-plid="11108"></span>
            </td>
        </tr>
        <tr>
            <td data-name="千位-8">
                <span>8</span>
                <span class="pl" data-plid="11107"></span>
            </td>
            <td data-name="千位-9">
                <span>9</span>
                <span class="pl" data-plid="11106"></span>
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
                <span class="pl" data-plid="11105"></span>
            </td>
            <td data-name="百位-1">
                <span>1</span>
                <span class="pl" data-plid="11104"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-2">
                <span>2</span>
                <span class="pl" data-plid="11103"></span>
            </td>
            <td data-name="百位-3">
                <span>3</span>
                <span class="pl" data-plid="11102"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-4">
                <span>4</span>
                <span class="pl" data-plid="11101"></span>
            </td>
            <td data-name="百位-5">
                <span>5</span>
                <span class="pl" data-plid="11100"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-6">
                <span>6</span>
                <span class="pl" data-plid="11099"></span>
            </td>
            <td data-name="百位-7">
                <span>7</span>
                <span class="pl" data-plid="11098"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百位-8">
                <span>8</span>
                <span class="pl" data-plid="11097"></span>
            </td>
            <td data-name="百位-9">
                <span>9</span>
                <span class="pl" data-plid="11096"></span>
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
                <span class="pl" data-plid="11095"></span>
            </td>
            <td data-name="十位-1">
                <span>1</span>
                <span class="pl" data-plid="11094"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-2">
                <span>2</span>
                <span class="pl" data-plid="11093"></span>
            </td>
            <td data-name="十位-3">
                <span>3</span>
                <span class="pl" data-plid="11092"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-4">
                <span>4</span>
                <span class="pl" data-plid="11091"></span>
            </td>
            <td data-name="十位-5">
                <span>5</span>
                <span class="pl" data-plid="11090"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-6">
                <span>6</span>
                <span class="pl" data-plid="11089"></span>
            </td>
            <td data-name="十位-7">
                <span>7</span>
                <span class="pl" data-plid="11088"></span>
            </td>
        </tr>
        <tr>
            <td data-name="十位-8">
                <span>8</span>
                <span class="pl" data-plid="11087"></span>
            </td>
            <td data-name="十位-9">
                <span>9</span>
                <span class="pl" data-plid="11086"></span>
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
                <span class="pl" data-plid="11085"></span>
            </td>
            <td data-name="个位-1">
                <span>1</span>
                <span class="pl" data-plid="11084"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-2">
                <span>2</span>
                <span class="pl" data-plid="11083"></span>
            </td>
            <td data-name="个位-3">
                <span>3</span>
                <span class="pl" data-plid="11082"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-4">
                <span>4</span>
                <span class="pl" data-plid="11081"></span>
            </td>
            <td data-name="个位-5">
                <span>5</span>
                <span class="pl" data-plid="11080"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-6">
                <span>6</span>
                <span class="pl" data-plid="11079"></span>
            </td>
            <td data-name="个位-7">
                <span>7</span>
                <span class="pl" data-plid="11078"></span>
            </td>
        </tr>
        <tr>
            <td data-name="个位-8">
                <span>8</span>
                <span class="pl" data-plid="11077"></span>
            </td>
            <td data-name="个位-9">
                <span>9</span>
                <span class="pl" data-plid="11076"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 16;
    var playId = 392;
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