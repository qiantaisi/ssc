<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="cl-960">
    总和、龙虎
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="总和、龙虎-总单">
                <span>总单</span>
                <span class="pl" data-plid="8817"></span>
            </td>
            <td data-name="总和、龙虎-总双">
                <span>总双</span>
                <span class="pl" data-plid="8818"></span>
            </td>
        </tr>
        <tr>
            <td data-name="总和、龙虎-总大">
                <span>总大</span>
                <span class="pl" data-plid="8819"></span>
            </td>
            <td data-name="总和、龙虎-总小">
                <span>总小</span>
                <span class="pl" data-plid="8820"></span>
            </td>
        </tr>
        <tr>
            <td data-name="总和、龙虎-总尾大">
                <span>总尾大</span>
                <span class="pl" data-plid="8821"></span>
            </td>
            <td data-name="总和、龙虎-总尾小">
                <span>总尾小</span>
                <span class="pl" data-plid="8822"></span>
            </td>
        </tr>
        <tr>
            <td data-name="总和、龙虎-总龙">
                <span>总龙</span>
                <span class="pl" data-plid="8823"></span>
            </td>
            <td data-name="总和、龙虎-总虎">
                <span>总虎</span>
                <span class="pl" data-plid="8824"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-960">
    第一球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第一球-大">
                <span>大</span>
                <span class="pl" data-plid="8825"></span>
            </td>
            <td data-name="第一球-小">
                <span>小</span>
                <span class="pl" data-plid="8826"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第一球-单">
                <span>单</span>
                <span class="pl" data-plid="8827"></span>
            </td>
            <td data-name="第一球-双">
                <span>双</span>
                <span class="pl" data-plid="8828"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第一球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8829"></span>
            </td>
            <td data-name="第一球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8830"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第一球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8831"></span>
            </td>
            <td data-name="第一球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8832"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-960">
    第二球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第二球-大">
                <span>大</span>
                <span class="pl" data-plid="8833"></span>
            </td>
            <td data-name="第二球-小">
                <span>小</span>
                <span class="pl" data-plid="8834"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第二球-单">
                <span>单</span>
                <span class="pl" data-plid="8835"></span>
            </td>
            <td data-name="第二球-双">
                <span>双</span>
                <span class="pl" data-plid="8836"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第二球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8837"></span>
            </td>
            <td data-name="第二球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8838"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第二球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8839"></span>
            </td>
            <td data-name="第二球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8840"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-960">
    第三球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第三球-大">
                <span>大</span>
                <span class="pl" data-plid="8841"></span>
            </td>
            <td data-name="第三球-小">
                <span>小</span>
                <span class="pl" data-plid="8842"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三球-单">
                <span>单</span>
                <span class="pl" data-plid="8843"></span>
            </td>
            <td data-name="第三球-双">
                <span>双</span>
                <span class="pl" data-plid="8844"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8845"></span>
            </td>
            <td data-name="第三球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8846"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8847"></span>
            </td>
            <td data-name="第三球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8848"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-960">
    第四球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第四球-大">
                <span>大</span>
                <span class="pl" data-plid="8849"></span>
            </td>
            <td data-name="第四球-小">
                <span>小</span>
                <span class="pl" data-plid="8850"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四球-单">
                <span>单</span>
                <span class="pl" data-plid="8851"></span>
            </td>
            <td data-name="第四球-双">
                <span>双</span>
                <span class="pl" data-plid="8852"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8853"></span>
            </td>
            <td data-name="第四球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8854"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8855"></span>
            </td>
            <td data-name="第四球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8856"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-960">
    第五球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第五球-大">
                <span>大</span>
                <span class="pl" data-plid="8857"></span>
            </td>
            <td data-name="第五球-小">
                <span>小</span>
                <span class="pl" data-plid="8858"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五球-单">
                <span>单</span>
                <span class="pl" data-plid="8859"></span>
            </td>
            <td data-name="第五球-双">
                <span>双</span>
                <span class="pl" data-plid="8860"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8861"></span>
            </td>
            <td data-name="第五球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8862"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8863"></span>
            </td>
            <td data-name="第五球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8864"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-960">
    第六球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第六球-大">
                <span>大</span>
                <span class="pl" data-plid="8865"></span>
            </td>
            <td data-name="第六球-小">
                <span>小</span>
                <span class="pl" data-plid="8866"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六球-单">
                <span>单</span>
                <span class="pl" data-plid="8867"></span>
            </td>
            <td data-name="第六球-双">
                <span>双</span>
                <span class="pl" data-plid="8868"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8869"></span>
            </td>
            <td data-name="第六球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8870"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8871"></span>
            </td>
            <td data-name="第六球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8872"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-960">
    第七球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第七球-大">
                <span>大</span>
                <span class="pl" data-plid="8873"></span>
            </td>
            <td data-name="第七球-小">
                <span>小</span>
                <span class="pl" data-plid="8874"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七球-单">
                <span>单</span>
                <span class="pl" data-plid="8875"></span>
            </td>
            <td data-name="第七球-双">
                <span>双</span>
                <span class="pl" data-plid="8876"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8877"></span>
            </td>
            <td data-name="第七球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8878"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8879"></span>
            </td>
            <td data-name="第七球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8880"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-960">
    第八球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第八球-大">
                <span>大</span>
                <span class="pl" data-plid="8881"></span>
            </td>
            <td data-name="第八球-小">
                <span>小</span>
                <span class="pl" data-plid="8882"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八球-单">
                <span>单</span>
                <span class="pl" data-plid="8883"></span>
            </td>
            <td data-name="第八球-双">
                <span>双</span>
                <span class="pl" data-plid="8884"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8885"></span>
            </td>
            <td data-name="第八球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8886"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8887"></span>
            </td>
            <td data-name="第八球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8888"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 10;
    var playId = 294;
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