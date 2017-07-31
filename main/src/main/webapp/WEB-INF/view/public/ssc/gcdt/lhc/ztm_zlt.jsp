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
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zet')">正二特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zst')">正三特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zsit')">正四特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zwt')">正五特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zlt')" class="active">正六特</a>
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
                    <td><strong class="color-red pl" data-plid="6579"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-1" data-plid="6579"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="6589"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-11" data-plid="6589"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="6599"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-21" data-plid="6599"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="6609"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-31" data-plid="6609"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="6619"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-41" data-plid="6619"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="6580"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-2" data-plid="6580"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="6590"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-12" data-plid="6590"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="6600"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-22" data-plid="6600"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="6610"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-32" data-plid="6610"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="6620"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-42" data-plid="6620"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="6581"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-3" data-plid="6581"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="6591"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-13" data-plid="6591"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="6601"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-23" data-plid="6601"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="6611"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-33" data-plid="6611"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="6621"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-43" data-plid="6621"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="6582"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-4" data-plid="6582"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="6592"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-14" data-plid="6592"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="6602"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-24" data-plid="6602"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="6612"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-34" data-plid="6612"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="6622"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-44" data-plid="6622"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="6583"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-5" data-plid="6583"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="6593"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-15" data-plid="6593"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="6603"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-25" data-plid="6603"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="6613"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-35" data-plid="6613"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="6623"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-45" data-plid="6623"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="6584"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-6" data-plid="6584"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="6594"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-16" data-plid="6594"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="6604"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-26" data-plid="6604"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="6614"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-36" data-plid="6614"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="6624"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-46" data-plid="6624"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="6585"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-7" data-plid="6585"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="6595"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-17" data-plid="6595"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="6605"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-27" data-plid="6605"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="6615"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-37" data-plid="6615"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="6625"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-47" data-plid="6625"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="6586"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-8" data-plid="6586"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="6596"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-18" data-plid="6596"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="6606"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-28" data-plid="6606"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="6616"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-38" data-plid="6616"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="6626"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-48" data-plid="6626"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="6587"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-9" data-plid="6587"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="6597"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-19" data-plid="6597"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="6607"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-29" data-plid="6607"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="6617"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-39" data-plid="6617"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="6627"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-49" data-plid="6627"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="6588"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-10" data-plid="6588"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="6598"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-20" data-plid="6598"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="6608"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-30" data-plid="6608"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="6618"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-40" data-plid="6618"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="6628"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-单" data-plid="6628"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="6630"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-大" data-plid="6630"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="6636"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-合单" data-plid="6636"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="6638"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-红波" data-plid="6638"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="6639"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-蓝波" data-plid="6639"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="6629"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-双" data-plid="6629"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="6631"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-小" data-plid="6631"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="6637"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-合双" data-plid="6637"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="6640"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-绿波" data-plid="6640"/></td>

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