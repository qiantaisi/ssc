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
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zsit')" class="active">正四特</a>
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
                    <td><strong class="color-red pl" data-plid="13558"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-1" data-plid="13558"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="13560"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-11" data-plid="13560"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="13571"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-21" data-plid="13571"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="13582"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-31" data-plid="13582"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="13593"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-41" data-plid="13593"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="13569"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-2" data-plid="13569"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="13561"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-12" data-plid="13561"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="13572"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-22" data-plid="13572"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="13583"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-32" data-plid="13583"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="13594"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-42" data-plid="13594"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="13580"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-3" data-plid="13580"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="13562"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-13" data-plid="13562"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="13573"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-23" data-plid="13573"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="13584"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-33" data-plid="13584"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="13595"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-43" data-plid="13595"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="13591"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-4" data-plid="13591"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="13563"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-14" data-plid="13563"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="13574"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-24" data-plid="13574"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="13585"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-34" data-plid="13585"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="13596"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-44" data-plid="13596"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="13602"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-5" data-plid="13602"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="13564"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-15" data-plid="13564"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="13575"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-25" data-plid="13575"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="13586"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-35" data-plid="13586"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="13597"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-45" data-plid="13597"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="13603"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-6" data-plid="13603"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="13565"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-16" data-plid="13565"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="13576"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-26" data-plid="13576"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="13587"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-36" data-plid="13587"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="13598"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-46" data-plid="13598"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="13604"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-7" data-plid="13604"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="13566"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-17" data-plid="13566"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="13577"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-27" data-plid="13577"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="13588"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-37" data-plid="13588"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="13599"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-47" data-plid="13599"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="13605"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-8" data-plid="13605"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="13567"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-18" data-plid="13567"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="13578"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-28" data-plid="13578"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="13589"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-38" data-plid="13589"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="13600"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-48" data-plid="13600"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="13606"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-9" data-plid="13606"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="13568"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-19" data-plid="13568"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="13579"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-29" data-plid="13579"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="13590"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-39" data-plid="13590"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="13601"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-49" data-plid="13601"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="13559"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-10" data-plid="13559"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="13570"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-20" data-plid="13570"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="13581"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-30" data-plid="13581"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="13592"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-40" data-plid="13592"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="13607"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-单" data-plid="13607"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="13611"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-大" data-plid="13611"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="13609"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-合单" data-plid="13609"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="13613"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-红波" data-plid="13613"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="13615"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-蓝波" data-plid="13615"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="13608"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-双" data-plid="13608"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="13612"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-小" data-plid="13612"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="13610"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-合双" data-plid="13610"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="13614"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四特-绿波" data-plid="13614"/></td>

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