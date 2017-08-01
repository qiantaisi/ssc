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
    九肖@<font class="red pl" data-plid="13877"></font>
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="鼠">
                <span>鼠</span>
                <span data-plid="13877"></span>
            </td>
            <td data-name="牛">
                <span>牛</span>
                <span data-plid="13877"></span>
            </td>
        </tr>
        <tr>
            <td data-name="虎">
                <span>虎</span>
                <span data-plid="13877"></span>
            </td>
            <td data-name="兔">
                <span>兔</span>
                <span data-plid="13877"></span>
            </td>
        </tr>
        <tr>
            <td data-name="龙">
                <span>龙</span>
                <span data-plid="13877"></span>
            </td>
            <td data-name="蛇">
                <span>蛇</span>
                <span data-plid="13877"></span>
            </td>
        </tr>
        <tr>
            <td data-name="马">
                <span>马</span>
                <span data-plid="13877"></span>
            </td>
            <td data-name="羊">
                <span>羊</span>
                <span data-plid="13877"></span>
            </td>
        </tr>
        <tr>
            <td data-name="猴">
                <span>猴</span>
                <span data-plid="13877"></span>
            </td>
            <td data-name="鸡">
                <span>鸡</span>
                <span data-plid="13877"></span>
            </td>
        </tr>
        <tr>
            <td data-name="狗">
                <span>狗</span>
                <span data-plid="13877"></span>
            </td>
            <td data-name="猪">
                <span>猪</span>
                <span data-plid="13877"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<input type="hidden" data-plid="13877" id="pl"/>
<script>
    var playGroupId = 22;
    var playId = 476;
    var playGroupName = '合肖';

    function getZhudan(inputMoney, number) {
        var tmp = [];
        $(".cl-604 table tbody tr td.active").each(function () {
            tmp.push($(this).data("name"));
        });
        var arr = getFlagArrs(tmp, 9);
        if (arr.length == 0) {
            Tools.alert("请至少选择9个号码");
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
                content: "九肖-" + value.split(" ").join(","),
                playPlId: $("#pl").data('plid'),
                playPl: $("#pl").data("pl")
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
        if (tmp.length < 9) {
            return 0;
        }
        var arr = getFlagArrs(tmp, 9);
        return arr.length;
    }
</script>
