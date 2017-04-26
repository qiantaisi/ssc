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
    百个定位（中2@<font class="pl red" data-plid="7912"></font>）
</div>
<div class="cl-603">
    百位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span>0</span>
                <span class="pl" data-group="百" data-plid="7912"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-group="百" data-plid="7912"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-group="百" data-plid="7912"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span class="pl" data-group="百" data-plid="7912"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span class="pl" data-group="百" data-plid="7912"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span class="pl" data-group="百" data-plid="7912"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span class="pl" data-group="百" data-plid="7912"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span class="pl" data-group="百" data-plid="7912"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span class="pl" data-group="百" data-plid="7912"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span class="pl" data-group="百" data-plid="7912"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    个位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span>0</span>
                <span class="pl" data-group="个" data-plid="7912"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-group="个" data-plid="7912"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-group="个" data-plid="7912"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span class="pl" data-group="个" data-plid="7912"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span class="pl" data-group="个" data-plid="7912"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span class="pl" data-group="个" data-plid="7912"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span class="pl" data-group="个" data-plid="7912"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span class="pl" data-group="个" data-plid="7912"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span class="pl" data-group="个" data-plid="7912"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span class="pl" data-group="个" data-plid="7912"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<input type="hidden" data-plid="7912" id="pl"/>
<script>
    var playGroupId = 4;
    var playId = 287;
    var playGroupName = '定位';

    function getZhudan(inputMoney, number) {
        var bai = [], ge = [];
        $("[data-group='百']").each(function() {
            if ($(this).parent().hasClass("active")) {
                bai.push($(this).parent().data('name'));
            }
        });

        $("[data-group='个']").each(function() {
            if ($(this).parent().hasClass("active")) {
                ge.push($(this).parent().data('name'));
            }
        });

        if (bai.length == 0 || ge.length == 0) {
            Tools.alert("请选择号码");
            return;
        }

        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $.each(bai, function(index, value) {
            $.each(ge, function(index2, value2) {
                betForm.sscBetList.push({
                    playGroupName: playGroupName,
                    playGroupId: playGroupId,
                    number: number,
                    playId: playId,
                    zhushu: 1,
                    perMoney: inputMoney,
                    content: "百个定位-" + value + "," + value2,
                    playPlId: $("#pl").data("plid"),
                    playPl: $("#pl").data("pl")
                });
                betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                betForm.totalZhushu = add(betForm.totalZhushu, 1);
            });
        });
        return betForm;
    }
    function getZhushu() {
        var bai = [], ge = [];
        $("[data-group='百']").each(function() {
            if ($(this).parent().hasClass("active")) {
                bai.push($(this).parent().data('name'));
            }
        });

        $("[data-group='个']").each(function() {
            if ($(this).parent().hasClass("active")) {
                ge.push($(this).parent().data('name'));
            }
        });

        if (bai.length == 0 || ge.length == 0) {
            return 0;
        }
        return bai.length * ge.length;
    }
</script>