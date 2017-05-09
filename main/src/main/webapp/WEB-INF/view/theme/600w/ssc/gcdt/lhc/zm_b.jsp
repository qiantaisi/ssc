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
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-zm_a')">正码A</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-zm_b')" class="active">正码B</a>
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
                    <td data-num="1"><strong class="color-red pl" data-plid="6157"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-1" data-plid="6157"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td data-num="11"><strong class="color-red pl" data-plid="6167"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-11" data-plid="6167"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td data-num="21"><strong class="color-red pl" data-plid="6177"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-21" data-plid="6177"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td data-num="31"><strong class="color-red pl" data-plid="6187"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-31" data-plid="6187"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td data-num="41"><strong class="color-red pl" data-plid="6197"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-41" data-plid="6197"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td data-num="2"><strong class="color-red pl" data-plid="6158"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-2" data-plid="6158"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td data-num="12"><strong class="color-red pl" data-plid="6168"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-12" data-plid="6168"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td data-num="22"><strong class="color-red pl" data-plid="6178"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-22" data-plid="6178"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td data-num="32"><strong class="color-red pl" data-plid="6188"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-32" data-plid="6188"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td data-num="42"><strong class="color-red pl" data-plid="6198"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-42" data-plid="6198"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td data-num="3"><strong class="color-red pl" data-plid="6159"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-3" data-plid="6159"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td data-num="13"><strong class="color-red pl" data-plid="6169"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-13" data-plid="6169"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td data-num="23"><strong class="color-red pl" data-plid="6179"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-23" data-plid="6179"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td data-num="33"><strong class="color-red pl" data-plid="6189"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-33" data-plid="6189"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td data-num="43"><strong class="color-red pl" data-plid="6199"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-43" data-plid="6199"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td data-num="4"><strong class="color-red pl" data-plid="6160"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-4" data-plid="6160"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td data-num="14"><strong class="color-red pl" data-plid="6170"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-14" data-plid="6170"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td data-num="24"><strong class="color-red pl" data-plid="6180"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-24" data-plid="6180"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td data-num="34"><strong class="color-red pl" data-plid="6190"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-34" data-plid="6190"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td data-num="44"><strong class="color-red pl" data-plid="6200"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-44" data-plid="6200"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td data-num="5"><strong class="color-red pl" data-plid="6161"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-5" data-plid="6161"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td data-num="15"><strong class="color-red pl" data-plid="6171"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-15" data-plid="6171"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td data-num="25"><strong class="color-red pl" data-plid="6181"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-25" data-plid="6181"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td data-num="35"><strong class="color-red pl" data-plid="6191"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-35" data-plid="6191"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td data-num="45"><strong class="color-red pl" data-plid="6201"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-45" data-plid="6201"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td data-num="6"><strong class="color-red pl" data-plid="6162"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-6" data-plid="6162"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td data-num="16"><strong class="color-red pl" data-plid="6172"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-16" data-plid="6172"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td data-num="26"><strong class="color-red pl" data-plid="6182"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-26" data-plid="6182"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td data-num="36"><strong class="color-red pl" data-plid="6192"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-36" data-plid="6192"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td data-num="46"><strong class="color-red pl" data-plid="6202"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-46" data-plid="6202"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td data-num="7"><strong class="color-red pl" data-plid="6163"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-7" data-plid="6163"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td data-num="17"><strong class="color-red pl" data-plid="6173"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-17" data-plid="6173"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td data-num="27"><strong class="color-red pl" data-plid="6183"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-27" data-plid="6183"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td data-num="37"><strong class="color-red pl" data-plid="6193"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-37" data-plid="6193"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td data-num="47"><strong class="color-red pl" data-plid="6203"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-47" data-plid="6203"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td data-num="8"><strong class="color-red pl" data-plid="6164"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-8" data-plid="6164"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td data-num="18"><strong class="color-red pl" data-plid="6174"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-18" data-plid="6174"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td data-num="28"><strong class="color-red pl" data-plid="6184"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-28" data-plid="6184"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td data-num="38"><strong class="color-red pl" data-plid="6194"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-38" data-plid="6194"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td data-num="48"><strong class="color-red pl" data-plid="6204"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-48" data-plid="6204"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td data-num="9"><strong class="color-red pl" data-plid="6165"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-9" data-plid="6165"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td data-num="19"><strong class="color-red pl" data-plid="6175"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-19" data-plid="6175"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td data-num="29"><strong class="color-red pl" data-plid="6185"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-29" data-plid="6185"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td data-num="39"><strong class="color-red pl" data-plid="6195"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-39" data-plid="6195"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td data-num="49"><strong class="color-red pl" data-plid="6205"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-49" data-plid="6205"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td data-num="10"><strong class="color-red pl" data-plid="6166"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-10" data-plid="6166"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td data-num="20"><strong class="color-red pl" data-plid="6176"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-20" data-plid="6176"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td data-num="30"><strong class="color-red pl" data-plid="6186"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-30" data-plid="6186"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td data-num="40"><strong class="color-red pl" data-plid="6196"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-40" data-plid="6196"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>总大</td>
                    <td><strong class="color-red pl" data-plid="6210"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-总大" data-plid="6210"/></td>

                    <td>总小</td>
                    <td><strong class="color-red pl" data-plid="6211"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-总小" data-plid="6211"/></td>

                    <td>总单</td>
                    <td><strong class="color-red pl" data-plid="6212"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-总单" data-plid="6212"/></td>

                    <td>总双</td>
                    <td><strong class="color-red pl" data-plid="6213"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码B-总双" data-plid="6213"/></td>

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
    var playGroupId = 6;
    var playId = 205;
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