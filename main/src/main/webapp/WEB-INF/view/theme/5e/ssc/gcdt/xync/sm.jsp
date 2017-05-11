<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">总和、龙虎</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>总单</strong></td>
                    <td><strong class="color-red pl" data-plid="8817"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总单" data-plid="8817"></td>

                    <td><strong>总大</strong></td>
                    <td><strong class="color-red pl" data-plid="8819"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总大" data-plid="8819"></td>

                    <td><strong>总尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8821"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总尾大" data-plid="8821"></td>

                    <td><strong>总龙</strong></td>
                    <td><strong class="color-red pl" data-plid="8823"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总龙" data-plid="8823"></td>
                </tr>

                <tr>
                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl" data-plid="8818"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总双" data-plid="8818"></td>

                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="8820"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总小" data-plid="8820"></td>

                    <td><strong>总尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8822"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总尾小" data-plid="8822"></td>

                    <td><strong>总虎</strong></td>
                    <td><strong class="color-red pl" data-plid="8824"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总虎" data-plid="8824"></td>
                </tr>
                </tbody>

                <thead>
                <tr>
                    <th colspan="3">第一球</th>
                    <th colspan="3">第二球</th>
                    <th colspan="3">第三球</th>
                    <th colspan="3">第四球</th>
                </tr>
                </thead>

                <tbody>

                <tr>
                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8825"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-大" data-plid="8825"></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8833"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-大" data-plid="8833"></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8841"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-大" data-plid="8841"></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8849"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-大" data-plid="8849"></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8826"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-小" data-plid="8826"></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8834"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-小" data-plid="8834"></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8842"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-小" data-plid="8842"></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8850"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-小" data-plid="8850"></td>
                </tr>

                <tr>
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8827"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-单" data-plid="8827"></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8835"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-单" data-plid="8835"></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8843"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-单" data-plid="8843"></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8851"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-单" data-plid="8851"></td>
                </tr>

                <tr>
                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8828"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-双" data-plid="8828"></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8836"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-双" data-plid="8836"></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8844"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-双" data-plid="8844"></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8852"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-双" data-plid="8852"></td>
                </tr>

                <tr>
                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8829"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-尾大" data-plid="8829"></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8837"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-尾大" data-plid="8837"></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8845"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-尾大" data-plid="8845"></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8853"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-尾大" data-plid="8853"></td>
                </tr>

                <tr>
                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8830"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-尾小" data-plid="8830"></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8838"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-尾小" data-plid="8838"></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8846"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-尾小" data-plid="8846"></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8854"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-尾小" data-plid="8854"></td>
                </tr>

                <tr>
                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8831"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-合单" data-plid="8831"></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8839"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-合单" data-plid="8839"></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8847"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-合单" data-plid="8847"></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8855"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-合单" data-plid="8855"></td>
                </tr>

                <tr>
                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8832"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-合双" data-plid="8832"></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8840"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-合双" data-plid="8840"></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8848"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-合双" data-plid="8848"></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8856"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-合双" data-plid="8856"></td>
                </tr>
                </tbody>

                <thead>
                <tr>
                    <th colspan="3">第五球</th>
                    <th colspan="3">第六球</th>
                    <th colspan="3">第七球</th>
                    <th colspan="3">第八球</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8857"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-大" data-plid="8857"></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8865"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-大" data-plid="8865"></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8873"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-大" data-plid="8873"></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8881"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-大" data-plid="8881"></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8858"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-小" data-plid="8858"></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8866"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-小" data-plid="8866"></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8874"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-小" data-plid="8874"></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8882"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-小" data-plid="8882"></td>
                </tr>

                <tr>
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8859"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-单" data-plid="8859"></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8867"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-单" data-plid="8867"></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8875"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-单" data-plid="8875"></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8883"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-单" data-plid="8883"></td>
                </tr>

                <tr>
                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8860"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-双" data-plid="8860"></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8868"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-双" data-plid="8868"></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8876"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-双" data-plid="8876"></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8884"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-双" data-plid="8884"></td>
                </tr>

                <tr>
                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8861"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-尾大" data-plid="8861"></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8869"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-尾大" data-plid="8869"></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8877"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-尾大" data-plid="8877"></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8885"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-尾大" data-plid="8885"></td>
                </tr>

                <tr>
                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8862"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-尾小" data-plid="8862"></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8870"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-尾小" data-plid="8870"></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8878"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-尾小" data-plid="8878"></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8886"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-尾小" data-plid="8886"></td>
                </tr>

                <tr>
                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8863"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-合单" data-plid="8863"></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8871"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-合单" data-plid="8871"></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8879"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-合单" data-plid="8879"></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8887"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-合单" data-plid="8887"></td>
                </tr>

                <tr>
                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8864"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-合双" data-plid="8864"></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8872"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-合双" data-plid="8872"></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8880"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-合双" data-plid="8880"></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8888"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-合双" data-plid="8888"></td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <div class="fr main-right cl-10">
    </div>
</div>
<c:import url="common/bottom_zs.jsp" />
<c:import url="../common/subPageCommonJs.jsp" />
<script>
    var playGroupId = 10;
    var playId = 294;
    var playGroupName = '双面';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common input").each(function() {
            var inputMoney = $(this).val();
            if (typeof inputMoney != 'undefined' && inputMoney != '') {
                betForm.sscBetList.push({
                    playGroupName: playGroupName,
                    playGroupId: playGroupId,
                    number: $("#number").data("number"),
                    playId: playId,
                    zhushu: 1,
                    perMoney: inputMoney,
                    content: $(this).data("name"),
                    playPlId: $(this).data("plid"),
                    playPl: $(this).data("pl")
                });
                betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                betForm.totalZhushu = add(betForm.totalZhushu, 1);
            }
        });
        return betForm;
    }

    function checkZhudan() {
        return true;
    }
</script>