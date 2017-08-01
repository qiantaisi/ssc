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
    总和、龙虎
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="总和、龙虎-总单">
                <span>总单</span>
                <span class="pl" data-plid="8610"></span>
            </td>
            <td data-name="总和、龙虎-总双">
                <span>总双</span>
                <span class="pl" data-plid="8611"></span>
            </td>
        </tr>
        <tr>
            <td data-name="总和、龙虎-总大">
                <span>总大</span>
                <span class="pl" data-plid="8612"></span>
            </td>
            <td data-name="总和、龙虎-总小">
                <span>总小</span>
                <span class="pl" data-plid="8613"></span>
            </td>
        </tr>
        <tr>
            <td data-name="总和、龙虎-总尾大">
                <span>总尾大</span>
                <span class="pl" data-plid="8614"></span>
            </td>
            <td data-name="总和、龙虎-总尾小">
                <span>总尾小</span>
                <span class="pl" data-plid="8615"></span>
            </td>
        </tr>
        <tr>
            <td data-name="总和、龙虎-总龙">
                <span>总龙</span>
                <span class="pl" data-plid="8616"></span>
            </td>
            <td data-name="总和、龙虎-总虎">
                <span>总虎</span>
                <span class="pl" data-plid="8617"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    第一球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第一球-大">
                <span>大</span>
                <span class="pl" data-plid="8618"></span>
            </td>
            <td data-name="第一球-小">
                <span>小</span>
                <span class="pl" data-plid="8619"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第一球-单">
                <span>单</span>
                <span class="pl" data-plid="8620"></span>
            </td>
            <td data-name="第一球-双">
                <span>双</span>
                <span class="pl" data-plid="8621"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第一球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8622"></span>
            </td>
            <td data-name="第一球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8623"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第一球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8624"></span>
            </td>
            <td data-name="第一球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8625"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    第二球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第二球-大">
                <span>大</span>
                <span class="pl" data-plid="8626"></span>
            </td>
            <td data-name="第二球-小">
                <span>小</span>
                <span class="pl" data-plid="8627"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第二球-单">
                <span>单</span>
                <span class="pl" data-plid="8628"></span>
            </td>
            <td data-name="第二球-双">
                <span>双</span>
                <span class="pl" data-plid="8629"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第二球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8630"></span>
            </td>
            <td data-name="第二球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8631"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第二球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8632"></span>
            </td>
            <td data-name="第二球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8633"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    第三球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第三球-大">
                <span>大</span>
                <span class="pl" data-plid="8634"></span>
            </td>
            <td data-name="第三球-小">
                <span>小</span>
                <span class="pl" data-plid="8635"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三球-单">
                <span>单</span>
                <span class="pl" data-plid="8636"></span>
            </td>
            <td data-name="第三球-双">
                <span>双</span>
                <span class="pl" data-plid="8637"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8638"></span>
            </td>
            <td data-name="第三球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8639"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8640"></span>
            </td>
            <td data-name="第三球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8641"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    第四球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第四球-大">
                <span>大</span>
                <span class="pl" data-plid="8642"></span>
            </td>
            <td data-name="第四球-小">
                <span>小</span>
                <span class="pl" data-plid="8643"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四球-单">
                <span>单</span>
                <span class="pl" data-plid="8644"></span>
            </td>
            <td data-name="第四球-双">
                <span>双</span>
                <span class="pl" data-plid="8645"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8646"></span>
            </td>
            <td data-name="第四球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8647"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8648"></span>
            </td>
            <td data-name="第四球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8649"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第五球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第五球-大">
                <span>大</span>
                <span class="pl" data-plid="8650"></span>
            </td>
            <td data-name="第五球-小">
                <span>小</span>
                <span class="pl" data-plid="8651"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五球-单">
                <span>单</span>
                <span class="pl" data-plid="8652"></span>
            </td>
            <td data-name="第五球-双">
                <span>双</span>
                <span class="pl" data-plid="8653"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8654"></span>
            </td>
            <td data-name="第五球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8655"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8656"></span>
            </td>
            <td data-name="第五球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8657"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第六球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第六球-大">
                <span>大</span>
                <span class="pl" data-plid="8658"></span>
            </td>
            <td data-name="第六球-小">
                <span>小</span>
                <span class="pl" data-plid="8659"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六球-单">
                <span>单</span>
                <span class="pl" data-plid="8660"></span>
            </td>
            <td data-name="第六球-双">
                <span>双</span>
                <span class="pl" data-plid="8661"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8662"></span>
            </td>
            <td data-name="第六球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8663"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8664"></span>
            </td>
            <td data-name="第六球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8665"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第七球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第七球-大">
                <span>大</span>
                <span class="pl" data-plid="8666"></span>
            </td>
            <td data-name="第七球-小">
                <span>小</span>
                <span class="pl" data-plid="8667"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七球-单">
                <span>单</span>
                <span class="pl" data-plid="8668"></span>
            </td>
            <td data-name="第七球-双">
                <span>双</span>
                <span class="pl" data-plid="8669"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8670"></span>
            </td>
            <td data-name="第七球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8671"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8672"></span>
            </td>
            <td data-name="第七球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8736"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    第八球
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="第八球-大">
                <span>大</span>
                <span class="pl" data-plid="8737"></span>
            </td>
            <td data-name="第八球-小">
                <span>小</span>
                <span class="pl" data-plid="8738"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八球-单">
                <span>单</span>
                <span class="pl" data-plid="8739"></span>
            </td>
            <td data-name="第八球-双">
                <span>双</span>
                <span class="pl" data-plid="8740"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八球-尾大">
                <span>尾大</span>
                <span class="pl" data-plid="8741"></span>
            </td>
            <td data-name="第八球-尾小">
                <span>尾小</span>
                <span class="pl" data-plid="8742"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八球-合单">
                <span>合单</span>
                <span class="pl" data-plid="8743"></span>
            </td>
            <td data-name="第八球-合双">
                <span>合双</span>
                <span class="pl" data-plid="8744"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var playGroupId = 11;
    var playId = 277;
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