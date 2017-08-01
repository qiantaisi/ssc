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
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zyt')" class="active">正一特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zet')">正二特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zst')">正三特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zsit')">正四特</a>
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
                    <td><strong class="color-red pl" data-plid="6215"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-1" data-plid="6215"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="6225"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-11" data-plid="6225"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="6235"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-21" data-plid="6235"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="6245"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-31" data-plid="6245"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="6255"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-41" data-plid="6255"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="6216"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-2" data-plid="6216"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="6226"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-12" data-plid="6226"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="6236"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-22" data-plid="6236"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="6246"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-32" data-plid="6246"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="6256"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-42" data-plid="6256"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="6217"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-3" data-plid="6217"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="6227"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-13" data-plid="6227"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="6237"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-23" data-plid="6237"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="6247"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-33" data-plid="6247"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="6257"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-43" data-plid="6257"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="6218"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-4" data-plid="6218"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="6228"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-14" data-plid="6228"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="6238"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-24" data-plid="6238"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="6248"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-34" data-plid="6248"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="6258"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-44" data-plid="6258"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="6219"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-5" data-plid="6219"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="6229"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-15" data-plid="6229"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="6239"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-25" data-plid="6239"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="6249"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-35" data-plid="6249"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="6259"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-45" data-plid="6259"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="6220"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-6" data-plid="6220"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="6230"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-16" data-plid="6230"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="6240"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-26" data-plid="6240"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="6250"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-36" data-plid="6250"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="6260"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-46" data-plid="6260"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="6221"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-7" data-plid="6221"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="6231"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-17" data-plid="6231"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="6241"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-27" data-plid="6241"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="6251"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-37" data-plid="6251"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="6261"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-47" data-plid="6261"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="6222"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-8" data-plid="6222"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="6232"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-18" data-plid="6232"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="6242"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-28" data-plid="6242"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="6252"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-38" data-plid="6252"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="6262"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-48" data-plid="6262"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="6223"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-9" data-plid="6223"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="6233"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-19" data-plid="6233"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="6243"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-29" data-plid="6243"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="6253"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-39" data-plid="6253"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="6263"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-49" data-plid="6263"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="6224"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-10" data-plid="6224"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="6234"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-20" data-plid="6234"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="6244"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-30" data-plid="6244"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="6254"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-40" data-plid="6254"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="6264"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-单" data-plid="6264"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="6266"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-大" data-plid="6266"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="6326"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-合单" data-plid="6326"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="6328"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-红波" data-plid="6328"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="6329"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-蓝波" data-plid="6329"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="6265"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-双" data-plid="6265"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="6267"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-小" data-plid="6267"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="6327"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-合双" data-plid="6327"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="6330"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一特-绿波" data-plid="6330"/></td>

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