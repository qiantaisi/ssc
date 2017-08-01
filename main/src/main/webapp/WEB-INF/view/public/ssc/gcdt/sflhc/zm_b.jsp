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
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-zm_a')">正码A</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-zm_b')" class="active">正码B</a>
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
                    <td data-num="1"><strong class="color-red pl" data-plid="13331"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-1" data-plid="13331"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td data-num="11"><strong class="color-red pl" data-plid="13333"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-11" data-plid="13333"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td data-num="21"><strong class="color-red pl" data-plid="13344"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-21" data-plid="13344"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td data-num="31"><strong class="color-red pl" data-plid="13355"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-31" data-plid="13355"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td data-num="41"><strong class="color-red pl" data-plid="13366"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-41" data-plid="13366"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td data-num="2"><strong class="color-red pl" data-plid="13342"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-2" data-plid="13342"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td data-num="12"><strong class="color-red pl" data-plid="13334"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-12" data-plid="13334"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td data-num="22"><strong class="color-red pl" data-plid="13345"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-22" data-plid="13345"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td data-num="32"><strong class="color-red pl" data-plid="13356"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-32" data-plid="13356"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td data-num="42"><strong class="color-red pl" data-plid="13367"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-42" data-plid="13367"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td data-num="3"><strong class="color-red pl" data-plid="13353"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-3" data-plid="13353"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td data-num="13"><strong class="color-red pl" data-plid="13335"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-13" data-plid="13335"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td data-num="23"><strong class="color-red pl" data-plid="13346"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-23" data-plid="13346"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td data-num="33"><strong class="color-red pl" data-plid="13357"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-33" data-plid="13357"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td data-num="43"><strong class="color-red pl" data-plid="13368"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-43" data-plid="13368"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td data-num="4"><strong class="color-red pl" data-plid="13364"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-4" data-plid="13364"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td data-num="14"><strong class="color-red pl" data-plid="13336"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-14" data-plid="13336"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td data-num="24"><strong class="color-red pl" data-plid="13347"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-24" data-plid="13347"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td data-num="34"><strong class="color-red pl" data-plid="13358"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-34" data-plid="13358"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td data-num="44"><strong class="color-red pl" data-plid="13369"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-44" data-plid="13369"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td data-num="5"><strong class="color-red pl" data-plid="13375"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-5" data-plid="13375"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td data-num="15"><strong class="color-red pl" data-plid="13337"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-15" data-plid="13337"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td data-num="25"><strong class="color-red pl" data-plid="13348"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-25" data-plid="13348"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td data-num="35"><strong class="color-red pl" data-plid="13359"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-35" data-plid="13359"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td data-num="45"><strong class="color-red pl" data-plid="13370"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-45" data-plid="13370"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td data-num="6"><strong class="color-red pl" data-plid="13376"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-6" data-plid="13376"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td data-num="16"><strong class="color-red pl" data-plid="13338"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-16" data-plid="13338"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td data-num="26"><strong class="color-red pl" data-plid="13349"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-26" data-plid="13349"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td data-num="36"><strong class="color-red pl" data-plid="13360"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-36" data-plid="13360"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td data-num="46"><strong class="color-red pl" data-plid="13371"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-46" data-plid="13371"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td data-num="7"><strong class="color-red pl" data-plid="13377"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-7" data-plid="13377"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td data-num="17"><strong class="color-red pl" data-plid="13339"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-17" data-plid="13339"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td data-num="27"><strong class="color-red pl" data-plid="13350"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-27" data-plid="13350"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td data-num="37"><strong class="color-red pl" data-plid="13361"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-37" data-plid="13361"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td data-num="47"><strong class="color-red pl" data-plid="13372"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-47" data-plid="13372"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td data-num="8"><strong class="color-red pl" data-plid="13378"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-8" data-plid="13378"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td data-num="18"><strong class="color-red pl" data-plid="13340"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-18" data-plid="13340"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td data-num="28"><strong class="color-red pl" data-plid="13351"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-28" data-plid="13351"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td data-num="38"><strong class="color-red pl" data-plid="13362"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-38" data-plid="13362"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td data-num="48"><strong class="color-red pl" data-plid="13373"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-48" data-plid="13373"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td data-num="9"><strong class="color-red pl" data-plid="13379"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-9" data-plid="13379"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td data-num="19"><strong class="color-red pl" data-plid="13341"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-19" data-plid="13341"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td data-num="29"><strong class="color-red pl" data-plid="13352"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-29" data-plid="13352"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td data-num="39"><strong class="color-red pl" data-plid="13363"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-39" data-plid="13363"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td data-num="49"><strong class="color-red pl" data-plid="13374"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-49" data-plid="13374"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td data-num="10"><strong class="color-red pl" data-plid="13332"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-10" data-plid="13332"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td data-num="20"><strong class="color-red pl" data-plid="13343"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-20" data-plid="13343"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td data-num="30"><strong class="color-red pl" data-plid="13354"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-30" data-plid="13354"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td data-num="40"><strong class="color-red pl" data-plid="13365"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-40" data-plid="13365"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>总大</td>
                    <td><strong class="color-red pl" data-plid="13382"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-总大" data-plid="13382"/></td>

                    <td>总小</td>
                    <td><strong class="color-red pl" data-plid="13383"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-总小" data-plid="13383"/></td>

                    <td>总单</td>
                    <td><strong class="color-red pl" data-plid="13380"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-总单" data-plid="13380"/></td>

                    <td>总双</td>
                    <td><strong class="color-red pl" data-plid="13381"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-总双" data-plid="13381"/></td>

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
<c:import url="common/commonJs.jsp"/>
<script>
    var playGroupId = 22;
    var playId = 479;
    var playGroupName = '正码B';

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