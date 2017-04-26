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
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zyt')" class="active">正一特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zet')">正二特</a>
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
                    <td><strong class="color-red pl" data-plid="13384"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-1" data-plid="13384"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="13386"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-11" data-plid="13386"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="13397"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-21" data-plid="13397"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="13408"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-31" data-plid="13408"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="13419"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-41" data-plid="13419"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="13395"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-2" data-plid="13395"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="13387"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-12" data-plid="13387"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="13398"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-22" data-plid="13398"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="13409"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-32" data-plid="13409"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="13420"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-42" data-plid="13420"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="13406"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-3" data-plid="13406"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="13388"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-13" data-plid="13388"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="13399"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-23" data-plid="13399"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="13410"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-33" data-plid="13410"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="13421"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-43" data-plid="13421"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="13417"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-4" data-plid="13417"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="13389"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-14" data-plid="13389"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="13400"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-24" data-plid="13400"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="13411"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-34" data-plid="13411"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="13422"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-44" data-plid="13422"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="13428"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-5" data-plid="13428"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="13390"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-15" data-plid="13390"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="13401"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-25" data-plid="13401"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="13412"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-35" data-plid="13412"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="13423"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-45" data-plid="13423"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="13429"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-6" data-plid="13429"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="13391"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-16" data-plid="13391"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="13402"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-26" data-plid="13402"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="13413"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-36" data-plid="13413"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="13424"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-46" data-plid="13424"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="13430"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-7" data-plid="13430"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="13392"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-17" data-plid="13392"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="13403"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-27" data-plid="13403"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="13414"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-37" data-plid="13414"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="13425"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-47" data-plid="13425"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="13431"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-8" data-plid="13431"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="13393"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-18" data-plid="13393"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="13404"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-28" data-plid="13404"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="13415"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-38" data-plid="13415"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="13426"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-48" data-plid="13426"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="13432"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-9" data-plid="13432"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="13394"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-19" data-plid="13394"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="13405"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-29" data-plid="13405"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="13416"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-39" data-plid="13416"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="13427"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-49" data-plid="13427"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="13385"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-10" data-plid="13385"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="13396"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-20" data-plid="13396"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="13407"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-30" data-plid="13407"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="13418"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-40" data-plid="13418"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="13433"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-单" data-plid="13433"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="13437"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-大" data-plid="13437"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="13435"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-合单" data-plid="13435"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="13439"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-红波" data-plid="13439"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="13441"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-蓝波" data-plid="13441"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="13434"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-双" data-plid="13434"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="13438"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-小" data-plid="13438"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="13436"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-合双" data-plid="13436"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="13440"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-绿波" data-plid="13440"/></td>

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