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
    四肖连中
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="鼠">
                <span>鼠</span>
                <span class="pl" data-plid="13914"></span>
            </td>
            <td data-name="牛">
                <span>牛</span>
                <span class="pl" data-plid="13905"></span>
            </td>
        </tr>
        <tr>
            <td data-name="虎">
                <span>虎</span>
                 <span class="pl" data-plid="13910"></span>
            </td>
            <td data-name="兔">
                <span>兔</span>
                 <span class="pl" data-plid="13904"></span>
            </td>
        </tr>
        <tr>
            <td data-name="龙">
                <span>龙</span>
                 <span class="pl" data-plid="13915"></span>
            </td>
            <td data-name="蛇">
                <span>蛇</span>
                 <span class="pl" data-plid="13911"></span>
            </td>
        </tr>
        <tr>
            <td data-name="马">
                <span>马</span>
                 <span class="pl" data-plid="13912"></span>
            </td>
            <td data-name="羊">
                <span>羊</span>
                 <span class="pl" data-plid="13909"></span>
            </td>
        </tr>
        <tr>
            <td data-name="猴">
                <span>猴</span>
                 <span class="pl" data-plid="13908"></span>
            </td>
            <td data-name="鸡">
                <span>鸡</span>
                 <span class="pl" data-plid="13913"></span>
            </td>
        </tr>
        <tr>
            <td data-name="狗">
                <span>狗</span>
                 <span class="pl" data-plid="13906"></span>
            </td>
            <td data-name="猪">
                <span>猪</span>
                 <span class="pl" data-plid="13907"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<input type="hidden" data-plid="6793" id="pl"/>
<script>
    var playGroupId = 22;
    var playId = 475;
    var playGroupName = '连肖';

    function getZhudan(inputMoney, number) {
        var tmp = [];
        $(".cl-604 table tbody tr td.active").each(function () {
            tmp.push($(this).data("name"));
        });
        var arr = getFlagArrs(tmp, 4);
        if (arr.length == 0) {
            Tools.alert("请至少选择4个号码");
            return;
        }
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };
        $.each(arr, function(index, value){
            var minPl = null;
            var minPlId = null;
            var tmp = value.split(" ");
            $.each(tmp, function(index2, value2) {
                var plid = $("[data-name='"+value2+"']").find(".pl").data("plid");
                var pl = $("[data-name='"+value2+"']").find(".pl").data("pl");
                if (minPl == null && minPlId == null) {
                    minPlId = plid;
                    minPl = pl;
                } else {
                    if (pl < minPl) {
                        minPlId = plid;
                        minPl = pl;
                    }
                }
            });
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: number,
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: "四肖连中-" + value.split(" ").join(","),
                playPlId: minPlId,
                playPl: minPl
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
        if (tmp.length < 4) {
            return 0;
        }
        var arr = getFlagArrs(tmp, 4);
        return arr.length;
    }
</script>