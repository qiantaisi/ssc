<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
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
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zyt')">正一特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zet')" class="active">正二特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zst')">正三特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zsit')">正四特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zwt')">正五特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zlt')">正六特</a>
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
                    <td><strong class="color-red pl" data-plid="6331"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-1" data-plid="6331"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="6341"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-11" data-plid="6341"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="6351"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-21" data-plid="6351"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="6361"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-31" data-plid="6361"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="6371"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-41" data-plid="6371"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="6332"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-2" data-plid="6332"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="6342"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-12" data-plid="6342"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="6352"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-22" data-plid="6352"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="6362"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-32" data-plid="6362"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="6372"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-42" data-plid="6372"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="6333"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-3" data-plid="6333"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="6343"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-13" data-plid="6343"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="6353"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-23" data-plid="6353"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="6363"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-33" data-plid="6363"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="6373"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-43" data-plid="6373"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="6334"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-4" data-plid="6334"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="6344"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-14" data-plid="6344"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="6354"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-24" data-plid="6354"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="6364"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-34" data-plid="6364"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="6374"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-44" data-plid="6374"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="6335"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-5" data-plid="6335"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="6345"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-15" data-plid="6345"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="6355"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-25" data-plid="6355"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="6365"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-35" data-plid="6365"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="6375"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-45" data-plid="6375"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="6336"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-6" data-plid="6336"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="6346"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-16" data-plid="6346"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="6356"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-26" data-plid="6356"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="6366"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-36" data-plid="6366"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="6376"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-46" data-plid="6376"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="6337"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-7" data-plid="6337"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="6347"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-17" data-plid="6347"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="6357"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-27" data-plid="6357"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="6367"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-37" data-plid="6367"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="6377"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-47" data-plid="6377"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="6338"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-8" data-plid="6338"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="6348"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-18" data-plid="6348"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="6358"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-28" data-plid="6358"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="6368"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-38" data-plid="6368"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="6378"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-48" data-plid="6378"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="6339"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-9" data-plid="6339"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="6349"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-19" data-plid="6349"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="6359"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-29" data-plid="6359"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="6369"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-39" data-plid="6369"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="6379"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-49" data-plid="6379"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="6340"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-10" data-plid="6340"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="6350"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-20" data-plid="6350"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="6360"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-30" data-plid="6360"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="6370"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-40" data-plid="6370"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="6380"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-单" data-plid="6380"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="6382"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-大" data-plid="6382"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="6388"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-合单" data-plid="6388"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="6390"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-红波" data-plid="6390"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="6391"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-蓝波" data-plid="6391"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="6381"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-双" data-plid="6381"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="6383"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-小" data-plid="6383"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="6389"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-合双" data-plid="6389"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="6392"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二特-绿波" data-plid="6392"/></td>

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
    var playGroupId = 6;
    var playId = 206;
    var playGroupName = '正码特';

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