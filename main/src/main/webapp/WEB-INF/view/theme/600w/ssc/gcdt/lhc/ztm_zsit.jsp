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
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zsit')" class="active">正四特</a>
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
                    <td><strong class="color-red pl" data-plid="6455"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-1" data-plid="6455"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="6465"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-11" data-plid="6465"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="6475"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-21" data-plid="6475"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="6485"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-31" data-plid="6485"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="6495"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-41" data-plid="6495"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="6456"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-2" data-plid="6456"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="6466"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-12" data-plid="6466"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="6476"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-22" data-plid="6476"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="6486"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-32" data-plid="6486"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="6496"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-42" data-plid="6496"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="6457"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-3" data-plid="6457"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="6467"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-13" data-plid="6467"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="6477"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-23" data-plid="6477"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="6487"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-33" data-plid="6487"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="6497"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-43" data-plid="6497"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="6458"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-4" data-plid="6458"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="6468"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-14" data-plid="6468"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="6478"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-24" data-plid="6478"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="6488"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-34" data-plid="6488"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="6498"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-44" data-plid="6498"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="6459"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-5" data-plid="6459"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="6469"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-15" data-plid="6469"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="6479"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-25" data-plid="6479"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="6489"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-35" data-plid="6489"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="6499"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-45" data-plid="6499"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="6460"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-6" data-plid="6460"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="6470"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-16" data-plid="6470"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="6480"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-26" data-plid="6480"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="6490"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-36" data-plid="6490"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="6500"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-46" data-plid="6500"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="6461"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-7" data-plid="6461"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="6471"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-17" data-plid="6471"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="6481"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-27" data-plid="6481"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="6491"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-37" data-plid="6491"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="6501"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-47" data-plid="6501"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="6462"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-8" data-plid="6462"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="6472"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-18" data-plid="6472"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="6482"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-28" data-plid="6482"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="6492"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-38" data-plid="6492"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="6502"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-48" data-plid="6502"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="6463"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-9" data-plid="6463"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="6473"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-19" data-plid="6473"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="6483"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-29" data-plid="6483"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="6493"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-39" data-plid="6493"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="6503"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-49" data-plid="6503"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="6464"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-10" data-plid="6464"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="6474"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-20" data-plid="6474"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="6484"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-30" data-plid="6484"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="6494"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-40" data-plid="6494"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="6504"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-单" data-plid="6504"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="6506"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-大" data-plid="6506"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="6512"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-合单" data-plid="6512"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="6514"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-红波" data-plid="6514"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="6515"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-蓝波" data-plid="6515"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="6505"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-双" data-plid="6505"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="6507"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-小" data-plid="6507"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="6513"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-合双" data-plid="6513"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="6516"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-绿波" data-plid="6516"/></td>

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