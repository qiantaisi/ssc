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
    后三一字组合
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="后三一字组合-0">
                <span>0</span>
                <span class="pl" data-plid="10651"></span>
            </td>
            <td data-name="后三一字组合-1">
                <span>1</span>
                <span class="pl" data-plid="10650"></span>
            </td>
        </tr>
        <tr>
            <td data-name="后三一字组合-2">
                <span>2</span>
                <span class="pl" data-plid="10649"></span>
            </td>
            <td data-name="后三一字组合-3">
                <span>3</span>
                <span class="pl" data-plid="10648"></span>
            </td>
        </tr>
        <tr>
            <td data-name="后三一字组合-4">
                <span>4</span>
                <span class="pl" data-plid="10647"></span>
            </td>
            <td data-name="后三一字组合-5">
                <span>5</span>
                <span class="pl" data-plid="10646"></span>
            </td>
        </tr>
        <tr>
            <td data-name="后三一字组合-6">
                <span>6</span>
                <span class="pl" data-plid="10645"></span>
            </td>
            <td data-name="后三一字组合-7">
                <span>7</span>
                <span class="pl" data-plid="10644"></span>
            </td>
        </tr>
        <tr>
            <td data-name="后三一字组合-8">
                <span>8</span>
                <span class="pl" data-plid="10643"></span>
            </td>
            <td data-name="后三一字组合-9">
                <span>9</span>
                <span class="pl" data-plid="10642"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 15;
    var playId = 387;
    var playGroupName = '后三一字组合';

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