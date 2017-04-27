<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project28.api.common.utils.DateUtils" %>
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
    百十个定位（中3@<font class="pl red" data-plid="7910"></font>）
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
                <span class="pl" data-group="百" data-plid="7910"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-group="百" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-group="百" data-plid="7910"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span class="pl" data-group="百" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span class="pl" data-group="百" data-plid="7910"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span class="pl" data-group="百" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span class="pl" data-group="百" data-plid="7910"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span class="pl" data-group="百" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span class="pl" data-group="百" data-plid="7910"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span class="pl" data-group="百" data-plid="7910"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    十位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span>0</span>
                <span class="pl" data-group="十" data-plid="7910"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-group="十" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-group="十" data-plid="7910"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span class="pl" data-group="十" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span class="pl" data-group="十" data-plid="7910"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span class="pl" data-group="十" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span class="pl" data-group="十" data-plid="7910"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span class="pl" data-group="十" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span class="pl" data-group="十" data-plid="7910"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span class="pl" data-group="十" data-plid="7910"></span>
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
                <span class="pl" data-group="个" data-plid="7910"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-group="个" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-group="个" data-plid="7910"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span class="pl" data-group="个" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span class="pl" data-group="个" data-plid="7910"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span class="pl" data-group="个" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span class="pl" data-group="个" data-plid="7910"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span class="pl" data-group="个" data-plid="7910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span class="pl" data-group="个" data-plid="7910"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span class="pl" data-group="个" data-plid="7910"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<input type="hidden" data-plid="7910" id="pl"/>
<script>

    var playGroupId = 5;
    var playId = 252;
    var playGroupName = '定位';

    function getZhudan(inputMoney, number) {
        var bai = [], ge = [], shi = [];

        $("[data-group='百']").each(function() {
            if ($(this).parent().hasClass("active")) {
                bai.push($(this).parent().data('name'));
            }
        });

        $("[data-group='十']").each(function() {
            if ($(this).parent().hasClass("active")) {
                shi.push($(this).parent().data('name'));
            }
        });

        $("[data-group='个']").each(function() {
            if ($(this).parent().hasClass("active")) {
                ge.push($(this).parent().data('name'));
            }
        });

        if (bai.length == 0 || shi.length == 0 || ge.length == 0) {
            Tools.alert("请选择号码");
            return;
        }

        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $.each(bai, function(index, value) {
            $.each(shi, function(index2, value2) {
                $.each(ge, function(index3, value3) {
                    betForm.sscBetList.push({
                        playGroupName: playGroupName,
                        playGroupId: playGroupId,
                        number: number,
                        playId: playId,
                        zhushu: 1,
                        perMoney: inputMoney,
                        content: "百十个定位-" + value + "," + value2 + "," + value3,
                        playPlId: $("#pl").data("plid"),
                        playPl: $("#pl").data("pl")
                    });
                    betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                    betForm.totalZhushu = add(betForm.totalZhushu, 1);
                });
            });
        });
        return betForm;
    }
    function getZhushu(obj) {
        var bai = [], ge = [], shi = [];

        $("[data-group='百']").each(function() {
            if ($(this).parent().hasClass("active")) {
                bai.push($(this).parent().data('name'));
            }
        });

        $("[data-group='十']").each(function() {
            if ($(this).parent().hasClass("active")) {
                shi.push($(this).parent().data('name'));
            }
        });

        $("[data-group='个']").each(function() {
            if ($(this).parent().hasClass("active")) {
                ge.push($(this).parent().data('name'));
            }
        });

        if (bai.length == 0 || shi.length == 0 || ge.length == 0) {
            return;
        }
        return bai.length * shi.length * ge.length;
    }
</script>