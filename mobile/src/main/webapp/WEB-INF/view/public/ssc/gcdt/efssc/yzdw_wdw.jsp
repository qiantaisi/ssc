<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="cl-603">
    万定位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万定位-0">
                <span>0</span>
                <span class="pl" data-plid="10973"></span>
            </td>
            <td data-name="万定位-1">
                <span>1</span>
                <span class="pl" data-plid="10972"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-2">
                <span>2</span>
                <span class="pl" data-plid="10971"></span>
            </td>
            <td data-name="万定位-3">
                <span>3</span>
                <span class="pl"data-plid="10970"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-4">
                <span>4</span>
                <span class="pl" data-plid="10969"></span>
            </td>
            <td data-name="万定位-5">
                <span>5</span>
                <span class="pl" data-plid="10968"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-6">
                <span>6</span>
                <span class="pl" data-plid="10967"></span>
            </td>
            <td data-name="万定位-7">
                <span>7</span>
                <span class="pl" data-plid="10966"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-8">
                <span>8</span>
                <span class="pl" data-plid="10965"></span>
            </td>
            <td data-name="万定位-9">
                <span>9</span>
                <span class="pl" data-plid="10964"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-大">
                <span>大</span>
                <span class="pl" data-plid="10963"></span>
            </td>
            <td data-name="万定位-小">
                <span>小</span>
                <span class="pl" data-plid="10962"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-单">
                <span>单</span>
                <span class="pl" data-plid="10961"></span>
            </td>
            <td data-name="万定位-双">
                <span>双</span>
                <span class="pl" data-plid="10960"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-质">
                <span>质</span>
                <span class="pl" data-plid="10959"></span>
            </td>
            <td data-name="万定位-合">
                <span>合</span>
                <span class="pl" data-plid="10958"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    总和、龙虎和
</div>
<div class="cl-604">
    <table>
        <tbody>

        <tr>
            <td data-name="总和、龙虎和-总大">
                <span>总大</span>
                <span class="pl" data-plid="10893"></span>
            </td>
            <td data-name="总和、龙虎和-总小">
                <span>总小</span>
                <span class="pl" data-plid="10892"></span>
            </td>
        </tr>

        <tr>
            <td data-name="总和、龙虎和-总单">
                <span>总单</span>
                <span class="pl" data-plid="10891"></span>
            </td>
            <td data-name="总和、龙虎和-总双">
                <span>总双</span>
                <span class="pl" data-plid="10890"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
         <tr>
            <td data-name="总和、龙虎和-龙">
                <span>龙</span>
                <span class="pl" data-plid="10889"></span>
            </td>
            <td data-name="总和、龙虎和-虎">
                <span>虎</span>
                <span class="pl" data-plid="10888"></span>
            </td>
            <td data-name="总和、龙虎和-和">
                <span>和</span>
                <span class="pl" data-plid="10887"></span>
            </td>
         </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 16;
    var playId = 395;
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