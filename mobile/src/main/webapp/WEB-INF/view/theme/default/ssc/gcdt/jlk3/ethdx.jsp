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
<div class="cl-960">
    二同号单选@<span class="pl red" data-plid="11810"></span>
</div>
<div class="cl-604">
    <table class="jsks_table">
        <tbody>
        <tr>
            <td data-name="11">
                <span>11</span>
                <span data-plid="11810"></span>
            </td>
            <td data-name="22">
                <span>22</span>
                <span data-plid="11810"></span>
            </td>
            <td data-name="33">
                <span>33</span>
                <span data-plid="11810"></span>
            </td>
        </tr>
        <tr>
            <td data-name="44">
                <span>44</span>
                <span data-plid="11810"></span>
            </td>
            <td data-name="55">
                <span>55</span>
                <span data-plid="11810"></span>
            </td>
            <td data-name="66">
                <span>66</span>
                <span data-plid="11810"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table class="jsks_table" style="margin-top: 15px;">
        <tbody>
        <tr>
            <td data-name="1">
                <span>1</span>
                <span data-plid="11810"></span>
            </td>
            <td data-name="2">
                <span>2</span>
                <span data-plid="11810"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span data-plid="11810"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span data-plid="11810"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span data-plid="11810"></span>
            </td>
            <td data-name="6">
                <span>6</span>
                <span data-plid="11810"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<input type="hidden" data-plid="11810" id="pl_jsks"/>
<script>
    $(".cl-604 .jsks_table tbody tr td").on("click",function(){
        var num = $(this).data('name');
        if(num / 10 > 1){
            var onenum = num.toString().substr(0,1);
            var flagCheck = $("td[data-name='" + onenum + "']").hasClass('active');
            if(flagCheck == true){
                $("td[data-name='" + onenum + "']").removeClass('active');
            }
        }else{
            var twonum = num.toString() + num.toString();
            var twoCheck = $("td[data-name='" + twonum + "']").hasClass('active');
            if(twoCheck == true){
                $("td[data-name='" + twonum + "']").removeClass('active');
            }
        }

    });

</script>
<script>
    var playGroupId = 21;
    var playId = 471;
    var playGroupName = '二同号单选';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        var oneArr = [], twoArr = [];

        $(".cl-604 .jsks_table tbody tr td").each(function() {
            var flag = $(this).hasClass('active');
            if(flag == true){
                var num = $(this).data('name');
                if(num == 11 || num == 22 || num == 33 || num == 44 || num == 55 || num == 66){
                    oneArr.push($(this).data('name'));
                }else if((num == 1 || num == 2 || num == 3 || num == 4 || num == 5 || num == 6)){
                    twoArr.push($(this).data('name'));
                }
            }
        });

        if (oneArr.length < 1) {
            Tools.toast('双个数字组至少选择一个号码');
            return;
        }
        if (twoArr.length < 1) {
            Tools.toast('单个数字组至少选择一个号码');
            return;
        }

        var dataArr = [];
        if (oneArr.length > 0) {
            var tmp = [];
            $.each(oneArr, function(index, value) {
                tmp.push(value);
            });
            dataArr.push(tmp);
        }

        if (twoArr.length > 0) {
            var tmp = [];
            $.each(twoArr, function(index, value) {
                tmp.push(value);
            });
            dataArr.push(tmp);
        }

        var inputMoney = $("#inputMoney").val();
        if (typeof inputMoney == 'undefined' || !inputMoney) {
            Tools.toast("请输入正确的金额");
            return;
        }
        for (var i = 0; i < dataArr[0].length; ++i) {
            for (var j = 0; j < dataArr[1].length; ++j) {

                betForm.sscBetList.push({
                    playGroupName: playGroupName,
                    playGroupId: playGroupId,
                    number: $("#number").data("number"),
                    playId: playId,
                    zhushu: 1,
                    perMoney: inputMoney,
                    content: dataArr[0][i] + ',' + dataArr[1][j],
                    playPlId: $("#pl_jsks").data("plid"),
                    playPl: $("#pl_jsks").data("pl")
                });
                betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                betForm.totalZhushu = add(betForm.totalZhushu, 1);
            }
        }
        return betForm;
    }

    function getZhushu() {
        return $(".cl-604 table tbody tr td.active").length;
    }
</script>