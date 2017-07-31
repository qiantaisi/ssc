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

<div class="cl-603">
    第三名
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第三名-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="10027"></span>
            </td>
            <td data-name="第三名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="10028"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="10029"></span>
            </td>
            <td data-name="第三名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="10030"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="10031"></span>
            </td>
            <td data-name="第三名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="10032"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="10033"></span>
            </td>
            <td data-name="第三名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="10034"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="10035"></span>
            </td>
            <td data-name="第三名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="10036"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第三名-龙虎大小单双
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第三名-龙">
                <span>龙</span>
                <span class="pl" data-plid="10124"></span>
            </td>
            <td data-name="第三名-虎">
                <span>虎</span>
                <span class="pl" data-plid="10125"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-大">
                <span>大</span>
                <span class="pl" data-plid="10120"></span>
            </td>
            <td data-name="第三名-小">
                <span>小</span>
                <span class="pl" data-plid="10121"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-单">
                <span>单</span>
                <span class="pl" data-plid="10122"></span>
            </td>
            <td data-name="第三名-双">
                <span>双</span>
                <span class="pl" data-plid="10123"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 14;
    var playId = 321;
    var playGroupName = '三、四、五、六名';

    function getZhudan(inputMoney, number) {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };


        $(".cl-604 table tbody tr td.active").each(function () {
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