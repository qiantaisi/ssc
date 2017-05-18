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
    四尾连不中
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-plid="13955"></span>
            </td>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-plid="13956"></span>
            </td>
        </tr>
        <tr>
            <td data-name="3">
                <span>3</span>
                 <span class="pl" data-plid="13957"></span>
            </td>
            <td data-name="4">
                <span>4</span>
                 <span class="pl" data-plid="13958"></span>
            </td>
        </tr>
        <tr>
            <td data-name="5">
                 <span>5</span>
                 <span class="pl" data-plid="13959"></span>
            </td>
            <td data-name="6">
                <span>6</span>
                 <span class="pl" data-plid="13960"></span>
            </td>
        </tr>
        <tr>
            <td data-name="7">
                 <span>7</span>
                 <span class="pl" data-plid="13961"></span>
            </td>
            <td data-name="8">
                 <span>8</span>
                 <span class="pl" data-plid="13962"></span>
            </td>
        </tr>
        <tr>
            <td data-name="9">
                 <span>9</span>
                 <span class="pl" data-plid="13963"></span>
            </td>
            <td data-name="0">
                 <span>0</span>
                 <span class="pl" data-plid="13954"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<input type="hidden" data-plid="6803" id="pl"/>
<script>
    var playGroupId = 22;
    var playId = 481;
    var playGroupName = '尾数连';

    function getZhudan(inputMoney, number) {
        var tmp = [];
        $(".cl-604 table tbody tr td.active").each(function () {
            tmp.push($(this).data("name"));
        });
        var arr = getFlagArrs(tmp, 4);
        if (arr.length == 0) {
            alert("请至少选择4个号码");
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
                content: "四尾连不中-" + value.split(" ").join(","),
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
