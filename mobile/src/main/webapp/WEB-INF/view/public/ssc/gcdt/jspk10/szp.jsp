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

<div class="cl-603">
    冠军
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="冠军-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="14140"></span>
            </td>
            <td data-name="冠军-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="14089"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="14077"></span>
            </td>
            <td data-name="冠军-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="14098"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="14101"></span>
            </td>
            <td data-name="冠军-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="14011"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="13996"></span>
            </td>
            <td data-name="冠军-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="14018"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="14015"></span>
            </td>
            <td data-name="冠军-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="14128"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-大">
                <span>大</span>
                <span class="pl" data-plid="14034"></span>
            </td>
            <td data-name="冠军-小">
                <span>小</span>
                <span class="pl" data-plid="14109"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-单">
                <span>单</span>
                <span class="pl" data-plid="14105"></span>
            </td>
            <td data-name="冠军-双">
                <span>双</span>
                <span class="pl" data-plid="13988"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-龙">
                <span>龙</span>
                <span class="pl" data-plid="14028"></span>
            </td>
            <td data-name="冠军-虎">
                <span>虎</span>
                <span class="pl" data-plid="13995"></span>
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
            <td data-name="亚军-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="14096"></span>
            </td>
            <td data-name="亚军-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="14173"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="14179"></span>
            </td>
            <td data-name="亚军-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="14148"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="14137"></span>
            </td>
            <td data-name="亚军-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="14059"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="14067"></span>
            </td>
            <td data-name="亚军-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="14064"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="14061"></span>
            </td>
            <td data-name="亚军-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="14097"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-大">
                <span>大</span>
                <span class="pl" data-plid="14068"></span>
            </td>
            <td data-name="亚军-小">
                <span>小</span>
                <span class="pl" data-plid="14147"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-单">
                <span>单</span>
                <span class="pl" data-plid="14073"></span>
            </td>
            <td data-name="亚军-双">
                <span>双</span>
                <span class="pl" data-plid="14136"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-龙">
                <span>龙</span>
                <span class="pl" data-plid="14153"></span>
            </td>
            <td data-name="亚军-虎">
                <span>虎</span>
                <span class="pl" data-plid="14058"></span>
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
            <td data-name="第三名-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="14048"></span>
            </td>
            <td data-name="第三名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="13991"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="13979"></span>
            </td>
            <td data-name="第三名-4">
                <span class="pkbg-2">4</span>
                <span class="pl" data-plid="13982"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="13987"></span>
            </td>
            <td data-name="第三名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="14112"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="14041"></span>
            </td>
            <td data-name="第三名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="14106"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="14129"></span>
            </td>
            <td data-name="第三名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="14050"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-大">
                <span>大</span>
                <span class="pl" data-plid="14022"></span>
            </td>
            <td data-name="第三名-小">
                <span>小</span>
                <span class="pl" data-plid="14166"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-单">
                <span>单</span>
                <span class="pl" data-plid="14005"></span>
            </td>
            <td data-name="第三名-双">
                <span>双</span>
                <span class="pl" data-plid="14078"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-龙">
                <span>龙</span>
                <span class="pl" data-plid="14084"></span>
            </td>
            <td data-name="第三名-虎">
                <span>虎</span>
                <span class="pl" data-plid="14001"></span>
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
            <td data-name="第四名-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="13998"></span>
            </td>
            <td data-name="第四名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="14049"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="14038"></span>
            </td>
            <td data-name="第四名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="14030"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="14035"></span>
            </td>
            <td data-name="第四名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="13997"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="13993"></span>
            </td>
            <td data-name="第四名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="14163"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="14172"></span>
            </td>
            <td data-name="第四名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="14010"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-大">
                <span>大</span>
                <span class="pl" data-plid="14154"></span>
            </td>
            <td data-name="第四名-小">
                <span>小</span>
                <span class="pl" data-plid="14021"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-单">
                <span>单</span>
                <span class="pl" data-plid="14164"></span>
            </td>
            <td data-name="第四名-双">
                <span>双</span>
                <span class="pl" data-plid="14042"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-龙">
                <span>龙</span>
                <span class="pl" data-plid="14027"></span>
            </td>
            <td data-name="第四名-虎">
                <span>虎</span>
                <span class="pl" data-plid="14008"></span>
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
            <td data-name="第五名-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="14083"></span>
            </td>
            <td data-name="第五名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="14118"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="14108"></span>
            </td>
            <td data-name="第五名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="14123"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="14127"></span>
            </td>
            <td data-name="第五名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="14139"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="14149"></span>
            </td>
            <td data-name="第五名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="14144"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="14013"></span>
            </td>
            <td data-name="第五名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="14176"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-大">
                <span>大</span>
                <span class="pl" data-plid="14158"></span>
            </td>
            <td data-name="第五名-小">
                <span>小</span>
                <span class="pl" data-plid="14074"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-单">
                <span>单</span>
                <span class="pl" data-plid="14107"></span>
            </td>
            <td data-name="第五名-双">
                <span>双</span>
                <span class="pl" data-plid="14070"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-龙">
                <span>龙</span>
                <span class="pl" data-plid="14062"></span>
            </td>
            <td data-name="第五名-虎">
                <span>虎</span>
                <span class="pl" data-plid="14161"></span>
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
            <td data-name="第六名-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="14178"></span>
            </td>
            <td data-name="第六名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="14167"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="14135"></span>
            </td>
            <td data-name="第六名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="14080"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="14121"></span>
            </td>
            <td data-name="第六名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="14119"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="14117"></span>
            </td>
            <td data-name="第六名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="14085"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="14081"></span>
            </td>
            <td data-name="第六名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="14092"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-大">
                <span>大</span>
                <span class="pl" data-plid="14090"></span>
            </td>
            <td data-name="第六名-小">
                <span>小</span>
                <span class="pl" data-plid="14079"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-单">
                <span>单</span>
                <span class="pl" data-plid="14102"></span>
            </td>
            <td data-name="第六名-双">
                <span>双</span>
                <span class="pl" data-plid="14104"></span>
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
            <td data-name="第七名-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="13986"></span>
            </td>
            <td data-name="第七名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="14037"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="14044"></span>
            </td>
            <td data-name="第七名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="14057"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="13992"></span>
            </td>
            <td data-name="第七名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="14054"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="14051"></span>
            </td>
            <td data-name="第七名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="14043"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="14056"></span>
            </td>
            <td data-name="第七名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="14113"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-大">
                <span>大</span>
                <span class="pl" data-plid="14023"></span>
            </td>
            <td data-name="第七名-小">
                <span>小</span>
                <span class="pl" data-plid="14174"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-单">
                <span>单</span>
                <span class="pl" data-plid="14133"></span>
            </td>
            <td data-name="第七名-双">
                <span>双</span>
                <span class="pl" data-plid="14142"></span>
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
            <td data-name="第八名-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="13994"></span>
            </td>
            <td data-name="第八名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="14039"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="14052"></span>
            </td>
            <td data-name="第八名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="13989"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="13983"></span>
            </td>
            <td data-name="第八名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="14007"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="14017"></span>
            </td>
            <td data-name="第八名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="14177"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="14168"></span>
            </td>
            <td data-name="第八名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="14171"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-大">
                <span>大</span>
                <span class="pl" data-plid="13981"></span>
            </td>
            <td data-name="第八名-小">
                <span>小</span>
                <span class="pl" data-plid="14175"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-单">
                <span>单</span>
                <span class="pl" data-plid="14004"></span>
            </td>
            <td data-name="第八名-双">
                <span>双</span>
                <span class="pl" data-plid="14014"></span>
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
            <td data-name="第九名-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="14091"></span>
            </td>
            <td data-name="第九名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="14181"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="14141"></span>
            </td>
            <td data-name="第九名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="14159"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="14157"></span>
            </td>
            <td data-name="第九名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="14138"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="14024"></span>
            </td>
            <td data-name="第九名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="14146"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="14125"></span>
            </td>
            <td data-name="第九名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="14047"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-大">
                <span>大</span>
                <span class="pl" data-plid="14029"></span>
            </td>
            <td data-name="第九名-小">
                <span>小</span>
                <span class="pl" data-plid="14065"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-单">
                <span>单</span>
                <span class="pl" data-plid="14033"></span>
            </td>
            <td data-name="第九名-双">
                <span>双</span>
                <span class="pl" data-plid="13999"></span>
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
            <td data-name="第十名-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="14111"></span>
            </td>
            <td data-name="第十名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="14122"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="14130"></span>
            </td>
            <td data-name="第十名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="14103"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="14093"></span>
            </td>
            <td data-name="第十名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="14082"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="14086"></span>
            </td>
            <td data-name="第十名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="14087"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="14076"></span>
            </td>
            <td data-name="第十名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="14094"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-大">
                <span>大</span>
                <span class="pl" data-plid="14115"></span>
            </td>
            <td data-name="第十名-小">
                <span>小</span>
                <span class="pl" data-plid="14099"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-单">
                <span>单</span>
                <span class="pl" data-plid="14124"></span>
            </td>
            <td data-name="第十名-双">
                <span>双</span>
                <span class="pl" data-plid="14150"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 23;
    var playId = 496;
    var playGroupName = '排名1~10';

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