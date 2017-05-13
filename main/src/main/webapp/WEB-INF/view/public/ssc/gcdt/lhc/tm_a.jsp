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
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-tm_a')" class="active">特A</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-tm_b')">特B</a>
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
                    <td data-num="1"><strong class="color-red pl" data-plid="5968"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-1" data-plid="5968"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td data-num="11"><strong class="color-red pl" data-plid="5978"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-11" data-plid="5978"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td data-num="21"><strong class="color-red pl" data-plid="5988"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-21" data-plid="5988"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td data-num="31"><strong class="color-red pl" data-plid="5998"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-31" data-plid="5998"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td data-num="41"><strong class="color-red pl" data-plid="6008"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-41" data-plid="6008"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td data-num="2"><strong class="color-red pl" data-plid="5969"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-2" data-plid="5969"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td data-num="12"><strong class="color-red pl" data-plid="5979"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-12" data-plid="5979"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td data-num="22"><strong class="color-red pl" data-plid="5989"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-22" data-plid="5989"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td data-num="32"><strong class="color-red pl" data-plid="5999"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-32" data-plid="5999"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td data-num="42"><strong class="color-red pl" data-plid="6009"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-42" data-plid="6009"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td data-num="3"><strong class="color-red pl" data-plid="5970"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-3" data-plid="5970"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td data-num="13"><strong class="color-red pl" data-plid="5980"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-13" data-plid="5980"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td data-num="23"><strong class="color-red pl" data-plid="5990"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-23" data-plid="5990"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td data-num="33"><strong class="color-red pl" data-plid="6000"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-33" data-plid="6000"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td data-num="43"><strong class="color-red pl" data-plid="6010"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-43" data-plid="6010"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td data-num="4"><strong class="color-red pl" data-plid="5971"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-4" data-plid="5971"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td data-num="14"><strong class="color-red pl" data-plid="5981"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-14" data-plid="5981"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td data-num="24"><strong class="color-red pl" data-plid="5991"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-24" data-plid="5991"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td data-num="34"><strong class="color-red pl" data-plid="6001"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-34" data-plid="6001"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td data-num="44"><strong class="color-red pl" data-plid="6011"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-44" data-plid="6011"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td data-num="5"><strong class="color-red pl" data-plid="5972"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-5" data-plid="5972"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td data-num="15"><strong class="color-red pl" data-plid="5982"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-15" data-plid="5982"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td data-num="25"><strong class="color-red pl" data-plid="5992"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-25" data-plid="5992"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td data-num="35"><strong class="color-red pl" data-plid="6002"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-35" data-plid="6002"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td data-num="45"><strong class="color-red pl" data-plid="6012"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-45" data-plid="6012"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td data-num="6"><strong class="color-red pl" data-plid="5973"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-6" data-plid="5973"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td data-num="16"><strong class="color-red pl" data-plid="5983"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-16" data-plid="5983"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td data-num="26"><strong class="color-red pl" data-plid="5993"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-26" data-plid="5993"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td data-num="36"><strong class="color-red pl" data-plid="6003"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-36" data-plid="6003"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td data-num="46"><strong class="color-red pl" data-plid="6013"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-46" data-plid="6013"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td data-num="7"><strong class="color-red pl" data-plid="5974"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-7" data-plid="5974"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td data-num="17"><strong class="color-red pl" data-plid="5984"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-17" data-plid="5984"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td data-num="27"><strong class="color-red pl" data-plid="5994"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-27" data-plid="5994"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td data-num="37"><strong class="color-red pl" data-plid="6004"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-37" data-plid="6004"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td data-num="47"><strong class="color-red pl" data-plid="6014"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-47" data-plid="6014"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td data-num="8"><strong class="color-red pl" data-plid="5975"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-8" data-plid="5975"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td data-num="18"><strong class="color-red pl" data-plid="5985"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-18" data-plid="5985"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td data-num="28"><strong class="color-red pl" data-plid="5995"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-28" data-plid="5995"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td data-num="38"><strong class="color-red pl" data-plid="6005"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-38" data-plid="6005"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td data-num="48"><strong class="color-red pl" data-plid="6015"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-48" data-plid="6015"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td data-num="9"><strong class="color-red pl" data-plid="5976"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-9" data-plid="5976"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td data-num="19"><strong class="color-red pl" data-plid="5986"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-19" data-plid="5986"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td data-num="29"><strong class="color-red pl" data-plid="5996"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-29" data-plid="5996"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td data-num="39"><strong class="color-red pl" data-plid="6006"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-39" data-plid="6006"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td data-num="49"><strong class="color-red pl" data-plid="6016"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-49" data-plid="6016"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td data-num="10"><strong class="color-red pl" data-plid="5977"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-10" data-plid="5977"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td data-num="20"><strong class="color-red pl" data-plid="5987"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-20" data-plid="5987"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td data-num="30"><strong class="color-red pl" data-plid="5997"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-30" data-plid="5997"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td data-num="40"><strong class="color-red pl" data-plid="6007"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-40" data-plid="6007"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="6017"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-单" data-plid="6017"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="6019"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-大" data-plid="6019"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="6021"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-合单" data-plid="6021"/></td>

                    <td>尾大</td>
                    <td><strong class="color-red pl" data-plid="6023"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-尾大" data-plid="6023"/></td>

                    <td>家禽</td>
                    <td><strong class="color-red pl" data-plid="6025"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-家禽" data-plid="6025"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="6018"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-双" data-plid="6018"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="6020"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-小" data-plid="6020"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="6022"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-合双" data-plid="6022"/></td>

                    <td>尾小</td>
                    <td><strong class="color-red pl" data-plid="6024"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-尾小" data-plid="6024"/></td>

                    <td>野兽</td>
                    <td><strong class="color-red pl" data-plid="6026"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-野兽" data-plid="6026"/></td>
                </tr>

                <tr>
                    <td>大单</td>
                    <td><strong class="color-red pl" data-plid="6027"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-大单" data-plid="6027"/></td>

                    <td>大双</td>
                    <td><strong class="color-red pl" data-plid="6028"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-大双" data-plid="6028"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="6031"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-红波" data-plid="6031"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="6033"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-绿波" data-plid="6033"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>小单</td>
                    <td><strong class="color-red pl" data-plid="6029"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-小单" data-plid="6029"/></td>

                    <td>小双</td>
                    <td><strong class="color-red pl" data-plid="6030"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-小双" data-plid="6030"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="6032"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码A-蓝波" data-plid="6032"/></td>

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

    <div class="fr main-right">
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<c:import url="common/commonJs.jsp"/>
<script>
    var playGroupId = 6;
    var playId = 204;
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