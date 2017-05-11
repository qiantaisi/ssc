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

<div class="cl-603">
    冠亚军和
</div>
<div class="cl-604">
    <table class="gyjh_table_h">
        <tbody>
        <tr>
            <td data-name="冠亚和-3">
                <span>3</span>
                <span class="pl" data-plid="14182"></span>
            </td>
            <td data-name="冠亚和-4">
                <span>4</span>
                <span class="pl" data-plid="14183"></span>
            </td>
            <td data-name="冠亚和-5">
                <span>5</span>
                <span class="pl" data-plid="14184"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠亚和-6">
                <span>6</span>
                <span class="pl" data-plid="14185"></span>
            </td>
            <td data-name="冠亚和-7">
                <span>7</span>
                <span class="pl" data-plid="14186"></span>
            </td>
            <td data-name="冠亚和-8">
                <span>8</span>
                <span class="pl" data-plid="14187"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠亚和-9">
                <span>9</span>
                <span class="pl" data-plid="14188"></span>
            </td>
            <td data-name="冠亚和-10">
                <span>10</span>
                <span class="pl" data-plid="14189"></span>
            </td>
            <td data-name="冠亚和-11">
                <span>11</span>
                <span class="pl" data-plid="14190"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠亚和-12">
                <span>12</span>
                <span class="pl" data-plid="14191"></span>
            </td>
            <td data-name="冠亚和-13">
                <span>13</span>
                <span class="pl" data-plid="14192"></span>
            </td>
            <td data-name="冠亚和-14">
                <span>14</span>
                <span class="pl" data-plid="14193"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠亚和-15">
                <span>15</span>
                <span class="pl" data-plid="14194"></span>
            </td>
            <td data-name="冠亚和-16">
                <span>16</span>
                <span class="pl" data-plid="14195"></span>
            </td>
            <td data-name="冠亚和-17">
                <span>17</span>
                <span class="pl" data-plid="14196"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table class="gyjh_table_hcol2">
        <tbody>
        <tr>
            <td data-name="冠亚和-18">
                <span>18</span>
                <span class="pl" data-plid="14197"></span>
            </td>
            <td data-name="冠亚和-19">
                <span>19</span>
                <span class="pl" data-plid="14198"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    冠亚军和-单双大小
</div>
<div class="cl-604">
    <table class="gyjh_table">
        <tbody>
        <tr>
            <td data-name="冠亚和-大">
                <span>大</span>
                <span class="pl" data-plid="14201"></span>
            </td>
            <td data-name="冠亚和-小">
                <span>小</span>
                <span class="pl" data-plid="14204"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠亚和-单">
                <span>单</span>
                <span class="pl" data-plid="14199"></span>
            </td>
            <td data-name="冠亚和-双">
                <span>双</span>
                <span class="pl" data-plid="14200"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠亚和-大双">
                <span>大双</span>
                <span class="pl" data-plid="14203"></span>
            </td>
            <td data-name="冠亚和-大单">
                <span>大单</span>
                <span class="pl" data-plid="14202"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠亚和-小双">
                <span>小双</span>
                <span class="pl" data-plid="14206"></span>
            </td>
            <td data-name="冠亚和-小单">
                <span>小单</span>
                <span class="pl" data-plid="14205"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 23;
    var playId = 495;
    var playGroupName = '冠、亚军组合';

    function getZhudan(inputMoney, number) {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };


        $(".cl-604 table tbody tr td.active").each(function () {
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