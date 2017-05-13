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
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zet')">正二特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zst')">正三特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zsit')">正四特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zwt')" class="active">正五特</a>
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
                    <td><strong class="color-red pl" data-plid="13616"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-1" data-plid="13616"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="13618"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-11" data-plid="13618"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="13629"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-21" data-plid="13629"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="13640"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-31" data-plid="13640"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="13651"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-41" data-plid="13651"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="13627"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-2" data-plid="13627"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="13619"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-12" data-plid="13619"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="13630"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-22" data-plid="13630"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="13641"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-32" data-plid="13641"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="13652"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-42" data-plid="13652"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="13638"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-3" data-plid="13638"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="13620"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-13" data-plid="13620"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="13631"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-23" data-plid="13631"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="13642"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-33" data-plid="13642"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="13653"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-43" data-plid="13653"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="13649"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-4" data-plid="13649"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="13621"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-14" data-plid="13621"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="13632"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-24" data-plid="13632"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="13643"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-34" data-plid="13643"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="13654"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-44" data-plid="13654"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="13660"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-5" data-plid="13660"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="13622"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-15" data-plid="13622"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="13633"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-25" data-plid="13633"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="13644"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-35" data-plid="13644"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="13655"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-45" data-plid="13655"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="13661"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-6" data-plid="13661"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="13623"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-16" data-plid="13623"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="13634"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-26" data-plid="13634"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="13645"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-36" data-plid="13645"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="13656"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-46" data-plid="13656"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="13662"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-7" data-plid="13662"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="13624"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-17" data-plid="13624"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="13635"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-27" data-plid="13635"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="13646"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-37" data-plid="13646"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="13657"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-47" data-plid="13657"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="13663"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-8" data-plid="13663"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="13625"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-18" data-plid="13625"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="13636"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-28" data-plid="13636"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="13647"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-38" data-plid="13647"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="13658"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-48" data-plid="13658"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="13664"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-9" data-plid="13664"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="13626"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-19" data-plid="13626"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="13637"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-29" data-plid="13637"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="13648"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-39" data-plid="13648"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="13659"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-49" data-plid="13659"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="13617"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-10" data-plid="13617"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="13628"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-20" data-plid="13628"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="13639"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-30" data-plid="13639"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="13650"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-40" data-plid="13650"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="13665"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-单" data-plid="13665"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="13669"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-大" data-plid="13669"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="13667"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-合单" data-plid="13667"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="13671"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-红波" data-plid="13671"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="13673"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-蓝波" data-plid="13673"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="13666"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-双" data-plid="13666"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="13670"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-小" data-plid="13670"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="13668"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-合双" data-plid="13668"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="13672"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-绿波" data-plid="13672"/></td>

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