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
    百十和数
</div>
<div class="cl-604 hs_w">
    <table>
        <tbody>
        <tr>
            <td data-name="百十和数-0~4">
                <span>0~4</span>
                <span class="pl" data-plid="7945"></span>
            </td>
            <td data-name="百十和数-5">
                <span>5</span>
                <span class="pl" data-plid="7951"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百十和数-6">
                <span>6</span>
                <span class="pl" data-plid="7957"></span>
            </td>
            <td data-name="百十和数-7">
                <span>7</span>
                <span class="pl" data-plid="7963"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百十和数-8">
                <span>8</span>
                <span class="pl" data-plid="7969"></span>
            </td>
            <td data-name="百十和数-9">
                <span>9</span>
                <span class="pl" data-plid="7975"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百十和数-10">
                <span>10</span>
                <span class="pl" data-plid="7981"></span>
            </td>
            <td data-name="百十和数-11">
                <span>11</span>
                <span class="pl" data-plid="7987"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百十和数-12">
                <span>12</span>
                <span class="pl" data-plid="7993"></span>
            </td>
            <td data-name="百十和数-13">
                <span>13</span>
                <span class="pl" data-plid="7999"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百十和数-14~18">
                <span>14~18</span>
                <span class="pl" data-plid="8005"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    百十和数尾数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="百十和数尾数-0">
                <span>0</span>
                <span class="pl" data-plid="8011"></span>
            </td>
            <td data-name="百十和数尾数-1">
                <span>1</span>
                <span class="pl" data-plid="8017"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百十和数尾数-2">
                <span>2</span>
                <span class="pl" data-plid="8023"></span>
            </td>
            <td data-name="百十和数尾数-3">
                <span>3</span>
                <span class="pl" data-plid="8029"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百十和数尾数-4">
                <span>4</span>
                <span class="pl" data-plid="8035"></span>
            </td>
            <td data-name="百十和数尾数-5">
                <span>5</span>
                <span class="pl" data-plid="8041"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百十和数尾数-6">
                <span>6</span>
                <span class="pl" data-plid="8047"></span>
            </td>
            <td data-name="百十和数尾数-7">
                <span>7</span>
                <span class="pl" data-plid="8053"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百十和数尾数-8">
                <span>8</span>
                <span class="pl" data-plid="8059"></span>
            </td>
            <td data-name="百十和数尾数-9">
                <span>9</span>
                <span class="pl" data-plid="8065"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    百十和数双面-百十和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="百十和数-单">
                <span>单</span>
                <span class="pl" data-plid="8071"></span>
            </td>
            <td data-name="百十和数-双">
                <span>双</span>
                <span class="pl" data-plid="8077"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    百十和数双面-百十和数尾数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="百十和数尾数-大">
                <span>大</span>
                <span class="pl" data-plid="8083"></span>
            </td>
            <td data-name="百十和数尾数-小">
                <span>小</span>
                <span class="pl" data-plid="8089"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百十和数尾数-质">
                <span>质</span>
                <span class="pl" data-plid="8095"></span>
            </td>
            <td data-name="百十和数尾数-合">
                <span>合</span>
                <span class="pl" data-plid="8101"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>


<script>
    var playGroupId = 5;
    var playId = 254;
    var playGroupName = '和数';

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