<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!-- content -->
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix rehd retoptz" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
        </div>
        <div class="table-common clearfix reclearfix">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">总和、龙虎</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>总单</strong></td>
                    <td><strong class="color-red pl" data-plid="8610"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总单" data-plid="8610"/></td>

                    <td><strong>总大</strong></td>
                    <td><strong class="color-red pl" data-plid="8612"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总大" data-plid="8612"/></td>

                    <td><strong>总尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8614"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总尾大" data-plid="8614"/></td>

                    <td><strong>总龙</strong></td>
                    <td><strong class="color-red pl" data-plid="8616"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总龙" data-plid="8616"/></td>
                </tr>

                <tr>
                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl" data-plid="8611"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总双" data-plid="8611"/></td>

                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="8613"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总小" data-plid="8613"/></td>

                    <td><strong>总尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8615"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总尾小" data-plid="8615"/></td>

                    <td><strong>总虎</strong></td>
                    <td><strong class="color-red pl" data-plid="8617"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎-总虎" data-plid="8617"/></td>
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
                    <td><strong class="color-red pl" data-plid="8618"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-大" data-plid="8618"/></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8626"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-大" data-plid="8626"/></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8634"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-大" data-plid="8634"/></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8642"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-大" data-plid="8642"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8619"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-小" data-plid="8619"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8627"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-小" data-plid="8627"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8635"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-小" data-plid="8635"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8643"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-小" data-plid="8643"/></td>
                </tr>

                <tr>
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8620"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-单" data-plid="8620"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8628"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-单" data-plid="8628"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8636"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-单" data-plid="8636"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8644"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-单" data-plid="8644"/></td>
                </tr>

                <tr>
                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8621"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-双" data-plid="8621"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8629"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-双" data-plid="8629"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8637"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-双" data-plid="8637"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8645"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-双" data-plid="8645"/></td>
                </tr>

                <tr>
                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8622"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-尾大" data-plid="8622"/></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8630"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-尾大" data-plid="8630"/></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8638"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-尾大" data-plid="8638"/></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8646"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-尾大" data-plid="8646"/></td>
                </tr>

                <tr>
                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8623"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-尾小" data-plid="8623"/></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8631"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-尾小" data-plid="8631"/></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8639"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-尾小" data-plid="8639"/></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8647"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-尾小" data-plid="8647"/></td>
                </tr>

                <tr>
                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8624"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-合单" data-plid="8624"/></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8632"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-合单" data-plid="8632"/></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8640"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-合单" data-plid="8640"/></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8648"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-合单" data-plid="8648"/></td>
                </tr>

                <tr>
                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8625"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-合双" data-plid="8625"/></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8633"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第二球-合双" data-plid="8633"/></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8641"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三球-合双" data-plid="8641"/></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8649"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四球-合双" data-plid="8649"/></td>
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
                    <td><strong class="color-red pl" data-plid="8650"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-大" data-plid="8650"/></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8658"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-大" data-plid="8658"/></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8666"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-大" data-plid="8666"/></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8737"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-大" data-plid="8737"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8651"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-小" data-plid="8651"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8659"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-小" data-plid="8659"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8667"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-小" data-plid="8667"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8738"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-小" data-plid="8738"/></td>
                </tr>

                <tr>
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8652"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-单" data-plid="8652"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8660"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-单" data-plid="8660"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8668"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-单" data-plid="8668"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8739"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-单" data-plid="8739"/></td>
                </tr>

                <tr>
                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8653"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-双" data-plid="8653"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8661"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-双" data-plid="8661"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8669"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-双" data-plid="8669"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8740"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-双" data-plid="8740"/></td>
                </tr>

                <tr>
                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8654"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-尾大" data-plid="8654"/></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8662"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-尾大" data-plid="8662"/></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8670"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-尾大" data-plid="8670"/></td>

                    <td><strong>尾大</strong></td>
                    <td><strong class="color-red pl" data-plid="8741"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-尾大" data-plid="8741"/></td>
                </tr>

                <tr>
                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8655"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-尾小" data-plid="8655"/></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8663"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-尾小" data-plid="8663"/></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8671"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-尾小" data-plid="8671"/></td>

                    <td><strong>尾小</strong></td>
                    <td><strong class="color-red pl" data-plid="8742"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-尾小" data-plid="8742"/></td>
                </tr>

                <tr>
                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8656"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-合单" data-plid="8656"/></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8664"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-合单" data-plid="8664"/></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8672"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-合单" data-plid="8672"/></td>

                    <td><strong>合单</strong></td>
                    <td><strong class="color-red pl" data-plid="8672"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-合单" data-plid="8743"/></td>
                </tr>

                <tr>
                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8657"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五球-合双" data-plid="8657"/></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8665"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六球-合双" data-plid="8665"/></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8736"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七球-合双" data-plid="8736"/></td>

                    <td><strong>合双</strong></td>
                    <td><strong class="color-red pl" data-plid="8744"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-合双" data-plid="8744"/></td>
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
<c:import url="common/bottom_zs.jsp"/>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 11;
    var playId = 277;
    var playGroupName = '双面';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common input").each(function () {
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
