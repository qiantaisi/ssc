<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="cl-960">
    特码包三（@<font class="red pl" data-plid="14407"></font>）
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span class="ball-2 ball-gray">0</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="1">
                <span class="ball-2 ball-green">1</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="2">
                <span class="ball-2 ball-blue">2</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="3">
                <span class="ball-2 ball-red">3</span>
                <span class="pl" data-plid="14407"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span class="ball-2 ball-green">4</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="5">
                <span class="ball-2 ball-blue">5</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="6">
                <span class="ball-2 ball-red">6</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="7">
                <span class="ball-2 ball-green">7</span>
                <span class="pl" data-plid="14407"></span>
            </td>
        </tr>
        <tr>

            <td data-name="8">
                <span class="ball-2 ball-blue">8</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="9">
                <span class="ball-2 ball-red">9</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="10">
                <span class="ball-2 ball-green">10</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="11">
                <span class="ball-2 ball-blue">11</span>
                <span class="pl" data-plid="14407"></span>
            </td>


        </tr>
        <tr>
            <td data-name="12">
                <span class="ball-2 ball-red">12</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="13">
                <span class="ball-2 ball-gray">13</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="14">
                <span class="ball-2 ball-gray">14</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="15">
                <span class="ball-2 ball-red">15</span>
                <span class="pl" data-plid="14407"></span>
            </td>

        </tr>
        <tr>

            <td data-name="16">
                <span class="ball-2 ball-green">16</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="17">
                <span class="ball-2 ball-blue">17</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="18">
                <span class="ball-2 ball-red">18</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="19">
                <span class="ball-2 ball-green">19</span>
                <span class="pl" data-plid="14407"></span>
            </td>


        </tr>
        <tr>
            <td data-name="20">
                <span class="ball-2 ball-blue">20</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="21">
                <span class="ball-2 ball-red">21</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="22">
                <span class="ball-2 ball-green">22</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="23">
                <span class="ball-2 ball-blue">23</span>
                <span class="pl" data-plid="14407"></span>
            </td>

        </tr>
        <tr>
            <td data-name="24">
                <span class="ball-2 ball-red">24</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="25">
                <span class="ball-2 ball-green">25</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="26">
                <span class="ball-2 ball-blue">26</span>
                <span class="pl" data-plid="14407"></span>
            </td>
            <td data-name="27">
                <span class="ball-2 ball-gray">27</span>
                <span class="pl" data-plid="14407"></span>
            </td>

        </tr>
        </tbody>
    </table>

</div>

<script>
    var playGroupId = 7;
    var playId = 658;
    var playGroupName = '特码包三';

    function getZhudan(inputMoney, number) {
        var tmp = [];
        $(".cl-604 table tbody tr td.active").each(function () {
            tmp.push($(this).data("name"));
        });
        var arr = getFlagArrs(tmp, 3);
        if (arr.length == 0) {
            Tools.alert("请至少选择3个号码");
            return;
        }
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $.each(arr, function(index, value){
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: number,
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: value.split(" ").join(","),
                playPlId: $(".pl").data('plid'),
                playPl: $(".pl").data("pl")
            });
            betForm.totalMoney = add(betForm.totalMoney, inputMoney);
            betForm.totalZhushu = add(betForm.totalZhushu, 1);
        });
        return betForm;
    }

    function getZhushu() {
        var tmp = [];
        $(".cl-604 table tbody tr td.active").each(function () {
            tmp.push($(this).data("name"));
        });
        if (tmp.length < 3) {
            return 0;
        }
        var arr = getFlagArrs(tmp, 3);
        return arr.length;
    }
</script>