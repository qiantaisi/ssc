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
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-tm_a')" class="active">特A</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-tm_b')">特B</a>
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
                    <td data-num="1"><strong class="color-red pl" data-plid="13146"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-1" data-plid="13146"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td data-num="11"><strong class="color-red pl" data-plid="13148"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-11" data-plid="13148"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td data-num="21"><strong class="color-red pl" data-plid="13159"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-21" data-plid="13159"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td data-num="31"><strong class="color-red pl" data-plid="13170"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-31" data-plid="13170"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td data-num="41"><strong class="color-red pl" data-plid="13181"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-41" data-plid="13181"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td data-num="2"><strong class="color-red pl" data-plid="13157"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-2" data-plid="13157"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td data-num="12"><strong class="color-red pl" data-plid="13149"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-12" data-plid="13149"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td data-num="22"><strong class="color-red pl" data-plid="13160"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-22" data-plid="13160"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td data-num="32"><strong class="color-red pl" data-plid="13171"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-32" data-plid="13171"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td data-num="42"><strong class="color-red pl" data-plid="13182"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-42" data-plid="13182"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td data-num="3"><strong class="color-red pl" data-plid="13168"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-3" data-plid="13168"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td data-num="13"><strong class="color-red pl" data-plid="13150"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-13" data-plid="13150"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td data-num="23"><strong class="color-red pl" data-plid="13161"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-23" data-plid="13161"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td data-num="33"><strong class="color-red pl" data-plid="13172"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-33" data-plid="13172"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td data-num="43"><strong class="color-red pl" data-plid="13183"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-43" data-plid="13183"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td data-num="4"><strong class="color-red pl" data-plid="13179"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-4" data-plid="13179"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td data-num="14"><strong class="color-red pl" data-plid="13151"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-14" data-plid="13151"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td data-num="24"><strong class="color-red pl" data-plid="13162"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-24" data-plid="13162"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td data-num="34"><strong class="color-red pl" data-plid="13173"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-34" data-plid="13173"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td data-num="44"><strong class="color-red pl" data-plid="13184"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-44" data-plid="13184"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td data-num="5"><strong class="color-red pl" data-plid="13190"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-5" data-plid="13190"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td data-num="15"><strong class="color-red pl" data-plid="13152"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-15" data-plid="13152"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td data-num="25"><strong class="color-red pl" data-plid="13163"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-25" data-plid="13163"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td data-num="35"><strong class="color-red pl" data-plid="13174"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-35" data-plid="13174"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td data-num="45"><strong class="color-red pl" data-plid="13185"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-45" data-plid="13185"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td data-num="6"><strong class="color-red pl" data-plid="13191"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-6" data-plid="13191"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td data-num="16"><strong class="color-red pl" data-plid="13153"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-16" data-plid="13153"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td data-num="26"><strong class="color-red pl" data-plid="13164"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-26" data-plid="13164"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td data-num="36"><strong class="color-red pl" data-plid="13175"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-36" data-plid="13175"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td data-num="46"><strong class="color-red pl" data-plid="13186"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-46" data-plid="13186"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td data-num="7"><strong class="color-red pl" data-plid="13192"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-7" data-plid="13192"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td data-num="17"><strong class="color-red pl" data-plid="13154"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-17" data-plid="13154"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td data-num="27"><strong class="color-red pl" data-plid="13165"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-27" data-plid="13165"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td data-num="37"><strong class="color-red pl" data-plid="13176"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-37" data-plid="13176"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td data-num="47"><strong class="color-red pl" data-plid="13187"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-47" data-plid="13187"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td data-num="8"><strong class="color-red pl" data-plid="13193"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-8" data-plid="13193"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td data-num="18"><strong class="color-red pl" data-plid="13155"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-18" data-plid="13155"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td data-num="28"><strong class="color-red pl" data-plid="13166"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-28" data-plid="13166"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td data-num="38"><strong class="color-red pl" data-plid="13177"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-38" data-plid="13177"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td data-num="48"><strong class="color-red pl" data-plid="13188"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-48" data-plid="13188"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td data-num="9"><strong class="color-red pl" data-plid="13194"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-9" data-plid="13194"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td data-num="19"><strong class="color-red pl" data-plid="13156"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-19" data-plid="13156"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td data-num="29"><strong class="color-red pl" data-plid="13167"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-29" data-plid="13167"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td data-num="39"><strong class="color-red pl" data-plid="13178"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-39" data-plid="13178"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td data-num="49"><strong class="color-red pl" data-plid="13189"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-49" data-plid="13189"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td data-num="10"><strong class="color-red pl" data-plid="13147"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-10" data-plid="13147"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td data-num="20"><strong class="color-red pl" data-plid="13158"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-20" data-plid="13158"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td data-num="30"><strong class="color-red pl" data-plid="13169"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-30" data-plid="13169"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td data-num="40"><strong class="color-red pl" data-plid="13180"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-40" data-plid="13180"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="13195"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-单" data-plid="13195"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="13199"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-大" data-plid="13199"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="13197"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-合单" data-plid="13197"/></td>

                    <td>尾大</td>
                    <td><strong class="color-red pl" data-plid="13206"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-尾大" data-plid="13206"/></td>

                    <td>家禽</td>
                    <td><strong class="color-red pl" data-plid="13202"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-家禽" data-plid="13202"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="13196"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-双" data-plid="13196"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="13203"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-小" data-plid="13203"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="13198"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-合双" data-plid="13198"/></td>

                    <td>尾小</td>
                    <td><strong class="color-red pl" data-plid="13207"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-尾小" data-plid="13207"/></td>

                    <td>野兽</td>
                    <td><strong class="color-red pl" data-plid="13211"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-野兽" data-plid="13211"/></td>
                </tr>

                <tr>
                    <td>大单</td>
                    <td><strong class="color-red pl" data-plid="13200"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-大单" data-plid="13200"/></td>

                    <td>大双</td>
                    <td><strong class="color-red pl" data-plid="13201"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-大双" data-plid="13201"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="13208"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-红波" data-plid="13208"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="13209"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-绿波" data-plid="13209"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>小单</td>
                    <td><strong class="color-red pl" data-plid="13204"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-小单" data-plid="13204"/></td>

                    <td>小双</td>
                    <td><strong class="color-red pl" data-plid="13205"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-小双" data-plid="13205"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="13210"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-蓝波" data-plid="13210"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

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
    var playId = 493;
    var playGroupName = '特码';

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