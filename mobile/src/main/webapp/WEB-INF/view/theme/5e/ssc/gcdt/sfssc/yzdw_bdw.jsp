<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<div class="cl-603">
    百定位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="百定位-0">
                <span>0</span>
                <span class="pl" data-plid="10435"></span>
            </td>
            <td data-name="百定位-1">
                <span>1</span>
                <span class="pl" data-plid="10434"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百定位-2">
                <span>2</span>
                <span class="pl" data-plid="10433"></span>
            </td>
            <td data-name="百定位-3">
                <span>3</span>
                <span class="pl"data-plid="10432"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百定位-4">
                <span>4</span>
                <span class="pl" data-plid="10431"></span>
            </td>
            <td data-name="百定位-5">
                <span>5</span>
                <span class="pl"data-plid="10430"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百定位-6">
                <span>6</span>
                <span class="pl" data-plid="10429"></span>
            </td>
            <td data-name="百定位-7">
                <span>7</span>
                <span class="pl"data-plid="10428"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百定位-8">
                <span>8</span>
                <span class="pl" data-plid="10427"></span>
            </td>
            <td data-name="百定位-9">
                <span>9</span>
                <span class="pl"data-plid="10426"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百定位-大">
                <span>大</span>
                <span class="pl" data-plid="10425"></span>
            </td>
            <td data-name="百定位-小">
                <span>小</span>
                <span class="pl" data-plid="10424"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百定位-单">
                <span>单</span>
                <span class="pl" data-plid="10423"></span>
            </td>
            <td data-name="百定位-双">
                <span>双</span>
                <span class="pl"data-plid="10422"></span>
            </td>
        </tr>
        <tr>
            <td data-name="百定位-质">
                <span>质</span>
                <span class="pl" data-plid="10421"></span>
            </td>
            <td data-name="百定位-合">
                <span>合</span>
                <span class="pl" data-plid="10420"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 13;
    var playId = 333;
    var playGroupName = '一字定位';

    function getZhudan(inputMoney, number) {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        
        $(".cl-604 table tbody tr td.active").each(function() {
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: number,
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