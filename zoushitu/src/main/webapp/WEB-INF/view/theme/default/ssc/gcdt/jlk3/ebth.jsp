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
<div class="cl-960">
    二不同号@<span class="pl red" data-plid="11809"></span>（请选择2~6个号码）
</div>
<div class="cl-604">
    <table class="jsks_table">
        <tbody>
        <tr>
            <td data-name="1">
                <span>1</span>
                <span data-plid="11809"></span>
            </td>
            <td data-name="2">
                <span>2</span>
                <span data-plid="11809"></span>
            </td>
        </tr>
        <tr>
            <td data-name="3">
                <span>3</span>
                <span data-plid="11809"></span>
            </td>
            <td data-name="4">
                <span>4</span>
                <span data-plid="11809"></span>
            </td>
        </tr>
        <tr>
            <td data-name="5">
                <span>5</span>
                <span data-plid="11809"></span>
            </td>
            <td data-name="6">
                <span>6</span>
                <span data-plid="11809"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<input type="hidden" data-plid="11809" id="pl_jsks"/>
<script>
    var playGroupId = 21;
    var playId = 467;
    var playGroupName = '二不同号';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        var arr = []

        $(".cl-604 .jsks_table tbody tr td").each(function() {
            var flag = $(this).hasClass('active');
            if(flag == true){
                arr.push($(this).data('name'));
            }
        });

        if (arr.length < 2) {
            Tools.toast('至少选择2个号码');
            return;
        }

        var dataArr = [];
        dataArr.push(arr);

        var inputMoney = $("#inputMoney").val();
        if (typeof inputMoney == 'undefined' || !inputMoney) {
            Tools.toast("请输入正确的金额");
            return;
        }
        for (var i = 0; i < dataArr[0].length; ++i) {
            for (var j = i + 1; j < dataArr[0].length; ++j) {
                betForm.sscBetList.push({
                    playGroupName: playGroupName,
                    playGroupId: playGroupId,
                    number: $("#number").data("number"),
                    playId: playId,
                    zhushu: 1,
                    perMoney: inputMoney,
                    content: dataArr[0][i] + ',' + dataArr[0][j],
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