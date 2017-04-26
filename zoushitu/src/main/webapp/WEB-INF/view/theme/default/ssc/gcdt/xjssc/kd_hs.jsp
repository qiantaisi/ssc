<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="cl-603">
    后三跨度
</div>
<div class="cl-604 bili_w">
    <table>
        <tbody>

        <tr>
            <td data-name="后三跨度-0">
                <span>0</span>
                <span class="pl" data-plid="7639"></span>
            </td>
            <td data-name="后三跨度-1">
                <span>1</span>
                <span class="pl" data-plid="7648"></span>
            </td>
        </tr>
        <tr>
            <td data-name="后三跨度-2">
                <span>2</span>
                <span class="pl" data-plid="7657"></span>
            </td>
            <td data-name="后三跨度-3">
                <span>3</span>
                <span class="pl" data-plid="7666"></span>
            </td>
        </tr>
        <tr>
            <td data-name="后三跨度-4">
                <span>4</span>
                <span class="pl" data-plid="7675"></span>
            </td>
            <td data-name="后三跨度-5">
                <span>5</span>
                <span class="pl" data-plid="7684"></span>
            </td>
        </tr>
        <tr>
            <td data-name="后三跨度-6">
                <span>6</span>
                <span class="pl" data-plid="7693"></span>
            </td>
            <td data-name="后三跨度-7">
                <span>7</span>
                <span class="pl" data-plid="7702"></span>
            </td>
        </tr>
        <tr>
            <td data-name="后三跨度-8">
                <span>8</span>
                <span class="pl" data-plid="7711"></span>
            </td>
            <td data-name="后三跨度-9">
                <span>9</span>
                <span class="pl" data-plid="7720"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 3;
    var playId = 250;
    var playGroupName = '跨度';

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