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
    二字定位(中2@<font class="pl red" data-plid="7350"></font>)
</div>
<div class="cl-603">
    万位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span>0</span>
                <span class="pl" data-group="万" data-plid="7350"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-group="万" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-group="万" data-plid="7350"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span class="pl" data-group="万" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span class="pl" data-group="万" data-plid="7350"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span class="pl" data-group="万" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span class="pl" data-group="万" data-plid="7350"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span class="pl" data-group="万" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span class="pl" data-group="万" data-plid="7350"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span class="pl" data-group="万" data-plid="7350"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    千位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span>0</span>
                <span class="pl" data-group="千" data-plid="7350"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-group="千" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-group="千" data-plid="7350"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span class="pl" data-group="千" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span class="pl" data-group="千" data-plid="7350"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span class="pl" data-group="千" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span class="pl" data-group="千" data-plid="7350"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span class="pl" data-group="千" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span class="pl" data-group="千" data-plid="7350"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span class="pl" data-group="千" data-plid="7350"></span>
            </td>
        </tr>
        </tbody>
    </table>
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
                <span class="pl" data-group="百" data-plid="7350"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-group="百" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-group="百" data-plid="7350"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span class="pl" data-group="百" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span class="pl" data-group="百" data-plid="7350"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span class="pl" data-group="百" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span class="pl" data-group="百" data-plid="7350"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span class="pl" data-group="百" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span class="pl" data-group="百" data-plid="7350"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span class="pl" data-group="百" data-plid="7350"></span>
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
                <span class="pl" data-group="十" data-plid="7350"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-group="十" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-group="十" data-plid="7350"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span class="pl" data-group="十" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span class="pl" data-group="十" data-plid="7350"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span class="pl" data-group="十" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span class="pl" data-group="十" data-plid="7350"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span class="pl" data-group="十" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span class="pl" data-group="十" data-plid="7350"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span class="pl" data-group="十" data-plid="7350"></span>
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
                <span class="pl" data-group="个" data-plid="7350"></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span class="pl" data-group="个" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span class="pl" data-group="个" data-plid="7350"></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span class="pl" data-group="个" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span class="pl" data-group="个" data-plid="7350"></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span class="pl" data-group="个" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span class="pl" data-group="个" data-plid="7350"></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span class="pl" data-group="个" data-plid="7350"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span class="pl" data-group="个" data-plid="7350"></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span class="pl" data-group="个" data-plid="7350"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<input type="hidden" data-plid="7350" id="pl"/>
<script>
    var playGroupId = 3;
    var playId = 243;
    var playGroupName = '二字定位';

    function getZhudan(inputMoney, number) {
        var wan = [], qian = [], bai = [], shi = [], ge = [];
        $("[data-group='万']").each(function() {
            if ($(this).parent().hasClass("active")) {
                wan.push($(this).parent().data('name'));
            }
        });

        $("[data-group='千']").each(function() {
            if ($(this).parent().hasClass("active")) {
                qian.push($(this).parent().data('name'));
            }
        });

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

        var count =0;
        count += wan.length > 0 ? 1 : 0;
        count += qian.length > 0 ? 1 : 0;
        count += bai.length > 0 ? 1 : 0;
        count += shi.length > 0 ? 1 : 0;
        count += ge.length > 0 ? 1 : 0;
        if (count > 2 || count < 2) {
            Tools.error("有且只能选择二行");
            return;
        }

        var nameArr = [];
        var dataArr = [];
        if (wan.length > 0) {
            nameArr.push("万位");
            var tmp = [];
            $.each(wan, function(index, value) {
                tmp.push(value);
            });
            dataArr.push(tmp);
        }
        if (qian.length > 0) {
            nameArr.push("千位");
            var tmp = [];
            $.each(qian, function(index, value) {
                tmp.push(value);
            });
            dataArr.push(tmp);
        }
        if (bai.length > 0) {
            nameArr.push("百位");
            var tmp = [];
            $.each(bai, function(index, value) {
                tmp.push(value);
            });
            dataArr.push(tmp);
        }
        if (shi.length > 0) {
            nameArr.push("十位");
            var tmp = [];
            $.each(shi, function(index, value) {
                tmp.push(value);
            });
            dataArr.push(tmp);
        }
        if (ge.length > 0) {
            nameArr.push("个位");
            var tmp = [];
            $.each(ge, function(index, value) {
                tmp.push(value);
            });
            dataArr.push(tmp);
        }

        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        for (var i = 0; i < dataArr[0].length; ++i) {
            for (var k = 0; k < dataArr[1].length; ++k) {
                betForm.sscBetList.push({
                    playGroupName: playGroupName,
                    playGroupId: playGroupId,
                    number: number,
                    playId: playId,
                    zhushu: 1,
                    perMoney: inputMoney,
                    content: nameArr[0] + '-' + dataArr[0][i] + ' ' + nameArr[1] + '-' + dataArr[1][k],
                    playPlId: $("#pl").data("plid"),
                    playPl: $("#pl").data("pl")
                });
                betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                betForm.totalZhushu = add(betForm.totalZhushu, 1);
            }
        }
        return betForm;
    }
    function getZhushu(obj) {
        var result = [];
        var wan = [], qian = [], bai = [], shi = [], ge = [];
        $("[data-group='万']").each(function() {
            if ($(this).parent().hasClass("active")) {
                wan.push($(this).parent().data('name'));
            }
        });

        $("[data-group='千']").each(function() {
            if ($(this).parent().hasClass("active")) {
                qian.push($(this).parent().data('name'));
            }
        });

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

        var count = 0;
        var zhushu = 1;

        if(wan.length > 0){
            zhushu *= wan.length;
        }
        if(qian.length > 0){
            zhushu *= qian.length;
        }
        if(bai.length > 0){
            zhushu *= bai.length;
        }
        if(shi.length > 0){
            zhushu *= shi.length;
        }
        if(ge.length > 0){
            zhushu *= ge.length;
        }
        count += wan.length > 0 ? 1 : 0;
        count += qian.length > 0 ? 1 : 0;
        count += bai.length > 0 ? 1 : 0;
        count += shi.length > 0 ? 1 : 0;
        count += ge.length > 0 ? 1 : 0;
        if (count > 2) {
            return;
        }
        return zhushu;
    }
</script>
