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
            <td data-name="冠军-1">
                <span class="pkbg-1">1</span>
                <span class="pl" data-plid="9821"></span>
            </td>
            <td data-name="冠军-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9822"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9823"></span>
            </td>
            <td data-name="冠军-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="9824"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9825"></span>
            </td>
            <td data-name="冠军-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9826"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9827"></span>
            </td>
            <td data-name="冠军-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9828"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="9829"></span>
            </td>
            <td data-name="冠军-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="9830"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-大">
                <span>大</span>
                <span class="pl" data-plid="10164"></span>
            </td>
            <td data-name="冠军-小">
                <span>小</span>
                <span class="pl" data-plid="10165"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-单">
                <span>单</span>
                <span class="pl" data-plid="10166"></span>
            </td>
            <td data-name="冠军-双">
                <span>双</span>
                <span class="pl" data-plid="10167"></span>
            </td>
        </tr>
        <tr>
            <td data-name="冠军-龙">
                <span>龙</span>
                <span class="pl" data-plid="10168"></span>
            </td>
            <td data-name="冠军-虎">
                <span>虎</span>
                <span class="pl" data-plid="10169"></span>
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
                <span class="pl" data-plid="9831"></span>
            </td>
            <td data-name="亚军-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9832"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9833"></span>
            </td>
            <td data-name="亚军-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="9834"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9835"></span>
            </td>
            <td data-name="亚军-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9836"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9837"></span>
            </td>
            <td data-name="亚军-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9838"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="9839"></span>
            </td>
            <td data-name="亚军-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="9840"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-大">
                <span>大</span>
                <span class="pl" data-plid="10177"></span>
            </td>
            <td data-name="亚军-小">
                <span>小</span>
                <span class="pl" data-plid="10180"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-单">
                <span>单</span>
                <span class="pl" data-plid="10178"></span>
            </td>
            <td data-name="亚军-双">
                <span>双</span>
                <span class="pl" data-plid="10181"></span>
            </td>
        </tr>
        <tr>
            <td data-name="亚军-龙">
                <span>龙</span>
                <span class="pl" data-plid="10179"></span>
            </td>
            <td data-name="亚军-虎">
                <span>虎</span>
                <span class="pl" data-plid="10176"></span>
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
                <span class="pl" data-plid="9841"></span>
            </td>
            <td data-name="第三名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9842"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9843"></span>
            </td>
            <td data-name="第三名-4">
                <span class="pkbg-2">4</span>
                <span class="pl" data-plid="9844"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9845"></span>
            </td>
            <td data-name="第三名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9846"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9847"></span>
            </td>
            <td data-name="第三名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9848"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="9849"></span>
            </td>
            <td data-name="第三名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="9850"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-大">
                <span>大</span>
                <span class="pl" data-plid="10183"></span>
            </td>
            <td data-name="第三名-小">
                <span>小</span>
                <span class="pl" data-plid="10186"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-单">
                <span>单</span>
                <span class="pl" data-plid="10184"></span>
            </td>
            <td data-name="第三名-双">
                <span>双</span>
                <span class="pl" data-plid="10187"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第三名-龙">
                <span>龙</span>
                <span class="pl" data-plid="10185"></span>
            </td>
            <td data-name="第三名-虎">
                <span>虎</span>
                <span class="pl" data-plid="10182"></span>
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
                <span class="pl" data-plid="9851"></span>
            </td>
            <td data-name="第四名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9852"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9853"></span>
            </td>
            <td data-name="第四名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="9854"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9855"></span>
            </td>
            <td data-name="第四名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9856"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9857"></span>
            </td>
            <td data-name="第四名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9858"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="9859"></span>
            </td>
            <td data-name="第四名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="9860"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-大">
                <span>大</span>
                <span class="pl" data-plid="10189"></span>
            </td>
            <td data-name="第四名-小">
                <span>小</span>
                <span class="pl" data-plid="10192"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-单">
                <span>单</span>
                <span class="pl" data-plid="10190"></span>
            </td>
            <td data-name="第四名-双">
                <span>双</span>
                <span class="pl" data-plid="10193"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第四名-龙">
                <span>龙</span>
                <span class="pl" data-plid="10191"></span>
            </td>
            <td data-name="第四名-虎">
                <span>虎</span>
                <span class="pl" data-plid="10188"></span>
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
                <span class="pl" data-plid="9861"></span>
            </td>
            <td data-name="第五名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9862"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9863"></span>
            </td>
            <td data-name="第五名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="9864"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9865"></span>
            </td>
            <td data-name="第五名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9866"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9867"></span>
            </td>
            <td data-name="第五名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9868"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="9869"></span>
            </td>
            <td data-name="第五名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="9870"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-大">
                <span>大</span>
                <span class="pl" data-plid="10195"></span>
            </td>
            <td data-name="第五名-小">
                <span>小</span>
                <span class="pl" data-plid="10198"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-单">
                <span>单</span>
                <span class="pl" data-plid="10196"></span>
            </td>
            <td data-name="第五名-双">
                <span>双</span>
                <span class="pl" data-plid="10199"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第五名-龙">
                <span>龙</span>
                <span class="pl" data-plid="10197"></span>
            </td>
            <td data-name="第五名-虎">
                <span>虎</span>
                <span class="pl" data-plid="10194"></span>
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
                <span class="pl" data-plid="9871"></span>
            </td>
            <td data-name="第六名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9872"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9873"></span>
            </td>
            <td data-name="第六名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="9874"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9875"></span>
            </td>
            <td data-name="第六名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9876"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9877"></span>
            </td>
            <td data-name="第六名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9878"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="9879"></span>
            </td>
            <td data-name="第六名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="9880"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-大">
                <span>大</span>
                <span class="pl" data-plid="10218"></span>
            </td>
            <td data-name="第六名-小">
                <span>小</span>
                <span class="pl" data-plid="10220"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第六名-单">
                <span>单</span>
                <span class="pl" data-plid="10208"></span>
            </td>
            <td data-name="第六名-双">
                <span>双</span>
                <span class="pl" data-plid="10207"></span>
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
                <span class="pl" data-plid="9881"></span>
            </td>
            <td data-name="第七名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9882"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9883"></span>
            </td>
            <td data-name="第七名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="9884"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9885"></span>
            </td>
            <td data-name="第七名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9886"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9887"></span>
            </td>
            <td data-name="第七名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9888"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="9889"></span>
            </td>
            <td data-name="第七名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="9890"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-大">
                <span>大</span>
                <span class="pl" data-plid="10210"></span>
            </td>
            <td data-name="第七名-小">
                <span>小</span>
                <span class="pl" data-plid="10211"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第七名-单">
                <span>单</span>
                <span class="pl" data-plid="10204"></span>
            </td>
            <td data-name="第七名-双">
                <span>双</span>
                <span class="pl" data-plid="10203"></span>
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
                <span class="pl" data-plid="9891"></span>
            </td>
            <td data-name="第八名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9892"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9893"></span>
            </td>
            <td data-name="第八名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="9894"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9895"></span>
            </td>
            <td data-name="第八名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9896"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9897"></span>
            </td>
            <td data-name="第八名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9898"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="9899"></span>
            </td>
            <td data-name="第八名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="9900"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-大">
                <span>大</span>
                <span class="pl" data-plid="10219"></span>
            </td>
            <td data-name="第八名-小">
                <span>小</span>
                <span class="pl" data-plid="10205"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第八名-单">
                <span>单</span>
                <span class="pl" data-plid="10214"></span>
            </td>
            <td data-name="第八名-双">
                <span>双</span>
                <span class="pl" data-plid="10212"></span>
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
                <span class="pl" data-plid="9901"></span>
            </td>
            <td data-name="第九名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9902"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9903"></span>
            </td>
            <td data-name="第九名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="9904"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9905"></span>
            </td>
            <td data-name="第九名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9906"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9907"></span>
            </td>
            <td data-name="第九名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9908"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="9909"></span>
            </td>
            <td data-name="第九名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="9910"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-大">
                <span>大</span>
                <span class="pl" data-plid="10215"></span>
            </td>
            <td data-name="第九名-小">
                <span>小</span>
                <span class="pl" data-plid="10206"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第九名-单">
                <span>单</span>
                <span class="pl" data-plid="10217"></span>
            </td>
            <td data-name="第九名-双">
                <span>双</span>
                <span class="pl" data-plid="10222"></span>
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
                <span class="pl" data-plid="9911"></span>
            </td>
            <td data-name="第十名-2">
                <span class="pkbg-2">2</span>
                <span class="pl" data-plid="9912"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-3">
                <span class="pkbg-3">3</span>
                <span class="pl" data-plid="9913"></span>
            </td>
            <td data-name="第十名-4">
                <span class="pkbg-4">4</span>
                <span class="pl" data-plid="9914"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-5">
                <span class="pkbg-5">5</span>
                <span class="pl" data-plid="9915"></span>
            </td>
            <td data-name="第十名-6">
                <span class="pkbg-6">6</span>
                <span class="pl" data-plid="9916"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-7">
                <span class="pkbg-7">7</span>
                <span class="pl" data-plid="9917"></span>
            </td>
            <td data-name="第十名-8">
                <span class="pkbg-8">8</span>
                <span class="pl" data-plid="9918"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-9">
                <span class="pkbg-9">9</span>
                <span class="pl" data-plid="9919"></span>
            </td>
            <td data-name="第十名-10">
                <span class="pkbg-10">10</span>
                <span class="pl" data-plid="9920"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-大">
                <span>大</span>
                <span class="pl" data-plid="10213"></span>
            </td>
            <td data-name="第十名-小">
                <span>小</span>
                <span class="pl" data-plid="10209"></span>
            </td>
        </tr>
        <tr>
            <td data-name="第十名-单">
                <span>单</span>
                <span class="pl" data-plid="10221"></span>
            </td>
            <td data-name="第十名-双">
                <span>双</span>
                <span class="pl" data-plid="10216"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 14;
    var playId = 330;
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