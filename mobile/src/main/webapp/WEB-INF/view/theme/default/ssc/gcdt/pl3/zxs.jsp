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
    组选三@<font class="red" id="pl"></font> (请选择5个及以上号码)
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0">
                <span>0</span>
                <span ></span>
            </td>
            <td data-name="1">
                <span>1</span>
                <span ></span>
            </td>
        </tr>
        <tr>
            <td data-name="2">
                <span>2</span>
                <span ></span>
            </td>
            <td data-name="3">
                <span>3</span>
                <span ></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span>4</span>
                <span ></span>
            </td>
            <td data-name="5">
                <span>5</span>
                <span ></span>
            </td>
        </tr>
        <tr>
            <td data-name="6">
                <span>6</span>
                <span ></span>
            </td>
            <td data-name="7">
                <span>7</span>
                <span ></span>
            </td>
        </tr>
        <tr>
            <td data-name="8">
                <span>8</span>
                <span ></span>
            </td>
            <td data-name="9">
                <span>9</span>
                <span ></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<input type="hidden" data-plid="8181" id="pl5"/>
<input type="hidden" data-plid="8182" id="pl6"/>
<input type="hidden" data-plid="8183" id="pl7"/>
<input type="hidden" data-plid="8184" id="pl8"/>
<input type="hidden" data-plid="8185" id="pl9"/>
<input type="hidden" data-plid="8186" id="pl10"/>

<script>
    var playGroupId = 4;
    var playId = 290;
    var playGroupName = '组选三';


    function getZhudan(inputMoney, number) {
        var tmp = [];
        $(".cl-604 table tbody tr td.active").each(function () {
            tmp.push($(this).data("name"));
        });
        if (tmp.length < 5) {
            Tools.alert("请选择5~10个号码");
            return 0;
        }

        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };


        betForm.sscBetList.push({
            playGroupName: playGroupName,
            playGroupId: playGroupId,
            number: number,
            playId: playId,
            zhushu: 1,
            perMoney: inputMoney,
            content: tmp.join(","),
            playPlId: $("#pl"+tmp.length).data("plid"),
            playPl: $("#pl"+tmp.length).data("pl")
        });
        betForm.totalMoney = add(betForm.totalMoney, inputMoney);
        betForm.totalZhushu = add(betForm.totalZhushu, 1);
        return betForm;
    }
    function getZhushu() {
        var tmp = [];
        $(".cl-604 table tbody tr td.active").each(function () {
            tmp.push($(this).data("name"));
        });
        $("#pl").html("");
        if (tmp.length < 5) {
            return 0;
        }
        $("#pl").html($("#pl"+tmp.length).data("pl"));
        return 1;
    }
</script>