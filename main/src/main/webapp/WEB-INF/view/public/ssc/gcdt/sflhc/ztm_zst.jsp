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
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zyt')">正一特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zet')">正二特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zst')" class="active">正三特</a>
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
                    <td><strong class="color-red pl" data-plid="13500"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-1" data-plid="13500"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="13502"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-11" data-plid="13502"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="13513"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-21" data-plid="13513"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="13524"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-31" data-plid="13524"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="13535"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-41" data-plid="13535"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="13511"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-2" data-plid="13511"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="13503"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-12" data-plid="13503"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="13514"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-22" data-plid="13514"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="13525"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-32" data-plid="13525"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="13536"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-42" data-plid="13536"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="13522"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-3" data-plid="13522"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="13504"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-13" data-plid="13504"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="13515"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-23" data-plid="13515"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="13526"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-33" data-plid="13526"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="13537"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-43" data-plid="13537"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="13533"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-4" data-plid="13533"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="13505"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-14" data-plid="13505"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="13516"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-24" data-plid="13516"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="13527"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-34" data-plid="13527"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="13538"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-44" data-plid="13538"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="13544"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-5" data-plid="13544"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="13506"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-15" data-plid="13506"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="13517"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-25" data-plid="13517"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="13528"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-35" data-plid="13528"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="13539"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-45" data-plid="13539"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="13545"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-6" data-plid="13545"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="13507"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-16" data-plid="13507"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="13518"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-26" data-plid="13518"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="13529"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-36" data-plid="13529"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="13540"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-46" data-plid="13540"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="13546"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-7" data-plid="13546"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="13508"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-17" data-plid="13508"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="13519"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-27" data-plid="13519"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="13530"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-37" data-plid="13530"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="13541"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-47" data-plid="13541"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="13547"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-8" data-plid="13547"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="13509"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-18" data-plid="13509"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="13520"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-28" data-plid="13520"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="13531"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-38" data-plid="13531"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="13542"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-48" data-plid="13542"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="13548"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-9" data-plid="13548"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="13510"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-19" data-plid="13510"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="13521"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-29" data-plid="13521"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="13532"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-39" data-plid="13532"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="13543"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-49" data-plid="13543"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="13501"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-10" data-plid="13501"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="13512"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-20" data-plid="13512"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="13523"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-30" data-plid="13523"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="13534"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-40" data-plid="13534"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="13549"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-单" data-plid="13549"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="13553"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-大" data-plid="13553"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="13551"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-合单" data-plid="13551"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="13555"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-红波" data-plid="13555"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="13557"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-蓝波" data-plid="13557"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="13550"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-双" data-plid="13550"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="13554"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-小" data-plid="13554"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="13552"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-合双" data-plid="13552"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="13556"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-绿波" data-plid="13556"/></td>

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