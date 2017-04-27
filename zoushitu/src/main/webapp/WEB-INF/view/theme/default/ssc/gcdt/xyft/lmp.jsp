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

<div class="cl-603">
    冠军
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="冠军-大">
                <span>大</span>
                <span class="pl" data-plid="9922"></span>
            </td>
            <td data-name="冠军-小">
                <span>小</span>
                <span class="pl" data-plid="9923"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-单">
                <span>单</span>
                <span class="pl" data-plid="9924"></span>
            </td>
            <td data-name="冠军-双">
                <span>双</span>
                <span class="pl" data-plid="9925"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-龙">
                <span>龙</span>
                <span class="pl" data-plid="9926"></span>
            </td>
            <td data-name="冠军-虎">
                <span>虎</span>
                <span class="pl" data-plid="9927"></span>
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
                <span class="pl" data-plid="9928"></span>
            </td>
            <td data-name="亚军-小">
                <span>小</span>
                <span class="pl" data-plid="9929"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-单">
                <span>单</span>
                <span class="pl" data-plid="9930"></span>
            </td>
            <td data-name="亚军-双">
                <span>双</span>
                <span class="pl" data-plid="9931"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-龙">
                <span>龙</span>
                <span class="pl" data-plid="9932"></span>
            </td>
            <td data-name="亚军-虎">
                <span>虎</span>
                <span class="pl" data-plid="9933"></span>
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
                <span class="pl" data-plid="9934"></span>
            </td>
            <td data-name="第三名-小">
                <span>小</span>
                <span class="pl" data-plid="9935"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-单">
                <span>单</span>
                <span class="pl" data-plid="9936"></span>
            </td>
            <td data-name="第三名-双">
                <span>双</span>
                <span class="pl" data-plid="9937"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-龙">
                <span>龙</span>
                <span class="pl" data-plid="9938"></span>
            </td>
            <td data-name="第三名-虎">
                <span>虎</span>
                <span class="pl" data-plid="9939"></span>
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
                <span class="pl" data-plid="9940"></span>
            </td>
            <td data-name="第四名-小">
                <span>小</span>
                <span class="pl" data-plid="9941"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-单">
                <span>单</span>
                <span class="pl" data-plid="9942"></span>
            </td>
            <td data-name="第四名-双">
                <span>双</span>
                <span class="pl" data-plid="9943"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-龙">
                <span>龙</span>
                <span class="pl" data-plid="9944"></span>
            </td>
            <td data-name="第四名-虎">
                <span>虎</span>
                <span class="pl" data-plid="9945"></span>
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
                <span class="pl" data-plid="9946"></span>
            </td>
            <td data-name="第五名-小">
                <span>小</span>
                <span class="pl" data-plid="9947"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-单">
                <span>单</span>
                <span class="pl" data-plid="9948"></span>
            </td>
            <td data-name="第五名-双">
                <span>双</span>
                <span class="pl" data-plid="9949"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-龙">
                <span>龙</span>
                <span class="pl" data-plid="9950"></span>
            </td>
            <td data-name="第五名-虎">
                <span>虎</span>
                <span class="pl" data-plid="9951"></span>
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
                <span class="pl" data-plid="9952"></span>
            </td>
            <td data-name="第六名-小">
                <span>小</span>
                <span class="pl" data-plid="9953"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-单">
                <span>单</span>
                <span class="pl" data-plid="9954"></span>
            </td>
            <td data-name="第六名-双">
                <span>双</span>
                <span class="pl" data-plid="9955"></span>
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
                <span class="pl" data-plid="9958"></span>
            </td>
            <td data-name="第七名-小">
                <span>小</span>
                <span class="pl" data-plid="9959"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-单">
                <span>单</span>
                <span class="pl" data-plid="9960"></span>
            </td>
            <td data-name="第七名-双">
                <span>双</span>
                <span class="pl" data-plid="9961"></span>
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
                <span class="pl" data-plid="9964"></span>
            </td>
            <td data-name="第八名-小">
                <span>小</span>
                <span class="pl" data-plid="9965"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-单">
                <span>单</span>
                <span class="pl" data-plid="9966"></span>
            </td>
            <td data-name="第八名-双">
                <span>双</span>
                <span class="pl" data-plid="9967"></span>
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
                <span class="pl" data-plid="9970"></span>
            </td>
            <td data-name="第九名-小">
                <span>小</span>
                <span class="pl" data-plid="9971"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-单">
                <span>单</span>
                <span class="pl" data-plid="9972"></span>
            </td>
            <td data-name="第九名-双">
                <span>双</span>
                <span class="pl" data-plid="9973"></span>
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
                <span class="pl" data-plid="9976"></span>
            </td>
            <td data-name="第十名-小">
                <span>小</span>
                <span class="pl" data-plid="9977"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-单">
                <span>单</span>
                <span class="pl" data-plid="9978"></span>
            </td>
            <td data-name="第十名-双">
                <span>双</span>
                <span class="pl" data-plid="9979"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>


<script>
    var playGroupId = 14;
    var playId = 318;
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