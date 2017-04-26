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
    冠军
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="冠军-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="9982"></span>
            </td>
            <td data-name="冠军-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9983"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9984"></span>
            </td>
            <td data-name="冠军-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="9985"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9986"></span>
            </td>
            <td data-name="冠军-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9987"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9988"></span>
            </td>
            <td data-name="冠军-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9989"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="9990"></span>
            </td>
            <td data-name="冠军-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="9991"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    冠军-龙虎大小单双
</div>
<div class="cl-604">
    <table>
        <tbody>
        </tr>
        <tr>
            <td data-name="冠军-龙">
                <span>龙</span>
                <span class="pl" data-plid="10112"></span>
            </td>
            <td data-name="冠军-虎">
                <span>虎</span>
                <span class="pl" data-plid="10113"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-大">
                <span>大</span>
                <span class="pl" data-plid="10108"></span>
            </td>
            <td data-name="冠军-小">
                <span>小</span>
                <span class="pl" data-plid="10109"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-单">
                <span>单</span>
                <span class="pl" data-plid="10110"></span>
            </td>
            <td data-name="冠军-双">
                <span>双</span>
                <span class="pl" data-plid="10111"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 14;
    var playId = 319;
    var playGroupName = '冠、亚军组合';

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