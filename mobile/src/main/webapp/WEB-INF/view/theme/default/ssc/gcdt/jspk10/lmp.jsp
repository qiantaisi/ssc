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
    冠军
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="冠军-大">
                <span>大</span>
                <span class="pl" data-plid="14134"></span>
            </td>
            <td data-name="冠军-小">
                <span>小</span>
                <span class="pl" data-plid="14160"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-单">
                <span>单</span>
                <span class="pl" data-plid="14170"></span>
            </td>
            <td data-name="冠军-双">
                <span>双</span>
                <span class="pl" data-plid="14155"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-龙">
                <span>龙</span>
                <span class="pl" data-plid="14165"></span>
            </td>
            <td data-name="冠军-虎">
                <span>虎</span>
                <span class="pl" data-plid="14114"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    亚军
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="亚军-大">
                <span>大</span>
                <span class="pl" data-plid="14066"></span>
            </td>
            <td data-name="亚军-小">
                <span>小</span>
                <span class="pl" data-plid="14031"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-单">
                <span>单</span>
                <span class="pl" data-plid="14045"></span>
            </td>
            <td data-name="亚军-双">
                <span>双</span>
                <span class="pl" data-plid="14126"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-龙">
                <span>龙</span>
                <span class="pl" data-plid="14025"></span>
            </td>
            <td data-name="亚军-虎">
                <span>虎</span>
                <span class="pl" data-plid="14145"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第三名
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第三名-大">
                <span>大</span>
                <span class="pl" data-plid="14019"></span>
            </td>
            <td data-name="第三名-小">
                <span>小</span>
                <span class="pl" data-plid="14053"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-单">
                <span>单</span>
                <span class="pl" data-plid="14002"></span>
            </td>
            <td data-name="第三名-双">
                <span>双</span>
                <span class="pl" data-plid="14071"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-龙">
                <span>龙</span>
                <span class="pl" data-plid="14055"></span>
            </td>
            <td data-name="第三名-虎">
                <span>虎</span>
                <span class="pl" data-plid="14036"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第四名
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第四名-大">
                <span>大</span>
                <span class="pl" data-plid="13978"></span>
            </td>
            <td data-name="第四名-小">
                <span>小</span>
                <span class="pl" data-plid="13980"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-单">
                <span>单</span>
                <span class="pl" data-plid="13985"></span>
            </td>
            <td data-name="第四名-双">
                <span>双</span>
                <span class="pl" data-plid="14012"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-龙">
                <span>龙</span>
                <span class="pl" data-plid="13984"></span>
            </td>
            <td data-name="第四名-虎">
                <span>虎</span>
                <span class="pl" data-plid="14009"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第五名
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第五名-大">
                <span>大</span>
                <span class="pl" data-plid="14016"></span>
            </td>
            <td data-name="第五名-小">
                <span>小</span>
                <span class="pl" data-plid="14026"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-单">
                <span>单</span>
                <span class="pl" data-plid="14020"></span>
            </td>
            <td data-name="第五名-双">
                <span>双</span>
                <span class="pl" data-plid="14000"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-龙">
                <span>龙</span>
                <span class="pl" data-plid="14003"></span>
            </td>
            <td data-name="第五名-虎">
                <span>虎</span>
                <span class="pl" data-plid="13990"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第六名
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第六名-大">
                <span>大</span>
                <span class="pl" data-plid="14072"></span>
            </td>
            <td data-name="第六名-小">
                <span>小</span>
                <span class="pl" data-plid="14063"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-单">
                <span>单</span>
                <span class="pl" data-plid="14060"></span>
            </td>
            <td data-name="第六名-双">
                <span>双</span>
                <span class="pl" data-plid="14006"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第七名
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第七名-大">
                <span>大</span>
                <span class="pl" data-plid="14032"></span>
            </td>
            <td data-name="第七名-小">
                <span>小</span>
                <span class="pl" data-plid="14046"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-单">
                <span>单</span>
                <span class="pl" data-plid="14040"></span>
            </td>
            <td data-name="第七名-双">
                <span>双</span>
                <span class="pl" data-plid="14069"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第八名
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第八名-大">
                <span>大</span>
                <span class="pl" data-plid="14151"></span>
            </td>
            <td data-name="第八名-小">
                <span>小</span>
                <span class="pl" data-plid="14152"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-单">
                <span>单</span>
                <span class="pl" data-plid="14143"></span>
            </td>
            <td data-name="第八名-双">
                <span>双</span>
                <span class="pl" data-plid="14132"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第九名
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第九名-大">
                <span>大</span>
                <span class="pl" data-plid="14156"></span>
            </td>
            <td data-name="第九名-小">
                <span>小</span>
                <span class="pl" data-plid="14162"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-单">
                <span>单</span>
                <span class="pl" data-plid="14180"></span>
            </td>
            <td data-name="第九名-双">
                <span>双</span>
                <span class="pl" data-plid="14169"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第十名
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第十名-大">
                <span>大</span>
                <span class="pl" data-plid="14120"></span>
            </td>
            <td data-name="第十名-小">
                <span>小</span>
                <span class="pl" data-plid="14131"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-单">
                <span>单</span>
                <span class="pl" data-plid="14116"></span>
            </td>
            <td data-name="第十名-双">
                <span>双</span>
                <span class="pl" data-plid="14110"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>


<script>
    var playGroupId = 23;
    var playId = 494;
    var playGroupName = '双面';

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