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
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zyt')">正一特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zet')">正二特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zst')">正三特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zsit')">正四特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zwt')" class="active">正五特</a>
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
                    <td><strong class="color-red pl" data-plid="6517"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-1" data-plid="6517"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="6527"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-11" data-plid="6527"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="6537"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-21" data-plid="6537"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="6547"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-31" data-plid="6547"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="6557"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-41" data-plid="6557"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="6518"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-2" data-plid="6518"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="6528"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-12" data-plid="6528"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="6538"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-22" data-plid="6538"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="6548"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-32" data-plid="6548"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="6558"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-42" data-plid="6558"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="6519"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-3" data-plid="6519"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="6529"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-13" data-plid="6529"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="6539"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-23" data-plid="6539"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="6549"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-33" data-plid="6549"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="6559"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-43" data-plid="6559"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="6520"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-4" data-plid="6520"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="6530"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-14" data-plid="6530"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="6540"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-24" data-plid="6540"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="6550"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-34" data-plid="6550"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="6560"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-44" data-plid="6560"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="6521"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-5" data-plid="6521"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="6531"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-15" data-plid="6531"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="6541"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-25" data-plid="6541"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="6551"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-35" data-plid="6551"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="6561"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-45" data-plid="6561"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="6522"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-6" data-plid="6522"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="6532"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-16" data-plid="6532"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="6542"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-26" data-plid="6542"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="6552"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-36" data-plid="6552"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="6562"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-46" data-plid="6562"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="6523"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-7" data-plid="6523"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="6533"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-17" data-plid="6533"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="6543"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-27" data-plid="6543"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="6553"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-37" data-plid="6553"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="6563"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-47" data-plid="6563"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="6524"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-8" data-plid="6524"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="6534"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-18" data-plid="6534"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="6544"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-28" data-plid="6544"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="6554"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-38" data-plid="6554"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="6564"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-48" data-plid="6564"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="6525"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-9" data-plid="6525"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="6535"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-19" data-plid="6535"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="6545"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-29" data-plid="6545"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="6555"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-39" data-plid="6555"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="6565"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-49" data-plid="6565"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="6526"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-10" data-plid="6526"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="6536"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-20" data-plid="6536"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="6546"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-30" data-plid="6546"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="6556"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-40" data-plid="6556"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="6566"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-单" data-plid="6566"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="6568"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-大" data-plid="6568"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="6574"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-合单" data-plid="6574"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="6576"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-红波" data-plid="6576"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="6577"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-蓝波" data-plid="6577"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="6567"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-双" data-plid="6567"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="6569"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-小" data-plid="6569"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="6575"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-合双" data-plid="6575"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="6578"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五特-绿波" data-plid="6578"/></td>

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