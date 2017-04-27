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
    万定位
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万定位-0">
                <span>0</span>
                <span class="pl" data-plid="11305"></span>
            </td>
            <td data-name="万定位-1">
                <span>1</span>
                <span class="pl" data-plid="11304"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-2">
                <span>2</span>
                <span class="pl" data-plid="11303"></span>
            </td>
            <td data-name="万定位-3">
                <span>3</span>
                <span class="pl" data-plid="11302"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-4">
                <span>4</span>
                <span class="pl" data-plid="11301"></span>
            </td>
            <td data-name="万定位-5">
                <span>5</span>
                <span class="pl" data-plid="11300"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-6">
                <span>6</span>
                <span class="pl" data-plid="11299"></span>
            </td>
            <td data-name="万定位-7">
                <span>7</span>
                <span class="pl" data-plid="11298"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-8">
                <span>8</span>
                <span class="pl" data-plid="11297"></span>
            </td>
            <td data-name="万定位-9">
                <span>9</span>
                <span class="pl" data-plid="11296"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-大">
                <span>大</span>
                <span class="pl" data-plid="11295"></span>
            </td>
            <td data-name="万定位-小">
                <span>小</span>
                <span class="pl" data-plid="11294"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-单">
                <span>单</span>
                <span class="pl" data-plid="11293"></span>
            </td>
            <td data-name="万定位-双">
                <span>双</span>
                <span class="pl" data-plid="11292"></span>
            </td>
        </tr>
        <tr>
            <td data-name="万定位-质">
                <span>质</span>
                <span class="pl" data-plid="11291"></span>
            </td>
            <td data-name="万定位-合">
                <span>合</span>
                <span class="pl" data-plid="11290"></span>
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
                <span class="pl" data-plid="11225"></span>
            </td>
            <td data-name="总和、龙虎和-总小">
                <span>总小</span>
                <span class="pl" data-plid="11224"></span>
            </td>
        </tr>

        <tr>
            <td data-name="总和、龙虎和-总单">
                <span>总单</span>
                <span class="pl" data-plid="11223"></span>
            </td>
            <td data-name="总和、龙虎和-总双">
                <span>总双</span>
                <span class="pl" data-plid="11222"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
         <tr>
            <td data-name="总和、龙虎和-龙">
                <span>龙</span>
                <span class="pl" data-plid="11221"></span>
            </td>
            <td data-name="总和、龙虎和-虎">
                <span>虎</span>
                <span class="pl" data-plid="11220"></span>
            </td>
            <td data-name="总和、龙虎和-和">
                <span>和</span>
                <span class="pl" data-plid="11219"></span>
            </td>
         </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 17;
    var playId = 407;
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