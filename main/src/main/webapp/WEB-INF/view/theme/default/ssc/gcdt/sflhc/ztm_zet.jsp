<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!-- content -->
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px;">
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zyt')">正一特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zet')" class="active">正二特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zst')">正三特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zsit')">正四特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zwt')">正五特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zlt')">正六特</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><span class="ball-icon ball-01"></span></td>
                    <td><strong class="color-red pl" data-plid="13442"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-1" data-plid="13442"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="13444"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-11" data-plid="13444"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="13455"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-21" data-plid="13455"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="13466"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-31" data-plid="13466"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="13477"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-41" data-plid="13477"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="13453"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-2" data-plid="13453"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="13445"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-12" data-plid="13445"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="13456"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-22" data-plid="13456"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="13467"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-32" data-plid="13467"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="13478"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-42" data-plid="13478"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="13464"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-3" data-plid="13464"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="13446"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-13" data-plid="13446"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="13457"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-23" data-plid="13457"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="13468"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-33" data-plid="13468"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="13479"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-43" data-plid="13479"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="13475"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-4" data-plid="13475"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="13447"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-14" data-plid="13447"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="13458"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-24" data-plid="13458"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="13469"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-34" data-plid="13469"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="13480"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-44" data-plid="13480"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="13486"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-5" data-plid="13486"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="13448"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-15" data-plid="13448"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="13459"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-25" data-plid="13459"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="13470"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-35" data-plid="13470"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="13481"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-45" data-plid="13481"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="13487"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-6" data-plid="13487"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="13449"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-16" data-plid="13449"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="13460"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-26" data-plid="13460"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="13471"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-36" data-plid="13471"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="13482"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-46" data-plid="13482"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="13488"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-7" data-plid="13488"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="13450"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-17" data-plid="13450"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="13461"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-27" data-plid="13461"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="13472"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-37" data-plid="13472"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="13483"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-47" data-plid="13483"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="13489"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-8" data-plid="13489"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="13451"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-18" data-plid="13451"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="13462"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-28" data-plid="13462"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="13473"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-38" data-plid="13473"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="13484"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-48" data-plid="13484"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="13490"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-9" data-plid="13490"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="13452"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-19" data-plid="13452"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="13463"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-29" data-plid="13463"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="13474"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-39" data-plid="13474"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="13485"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-49" data-plid="13485"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="13443"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-10" data-plid="13443"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="13454"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-20" data-plid="13454"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="13465"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-30" data-plid="13465"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="13476"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-40" data-plid="13476"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="13491"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-单" data-plid="13491"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="13495"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-大" data-plid="13495"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="13493"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-合单" data-plid="13493"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="13497"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-红波" data-plid="13497"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="13499"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-蓝波" data-plid="13499"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="13492"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-双" data-plid="13492"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="13496"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-小" data-plid="13496"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="13494"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-合双" data-plid="13494"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="13498"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-绿波" data-plid="13498"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
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
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 22;
    var playId = 473;
    var playGroupName = '正特码';

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