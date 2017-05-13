<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="9">万位</th>
                </tr>
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
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="10743"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-大" data-plid="10743"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10741"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="10741"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10739"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-质" data-plid="10739"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10742"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="10742"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10740"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="10740"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10738"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-合" data-plid="10738"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="9">千位</th>
                </tr>
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
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="10737"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-大" data-plid="10737"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10735"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-单" data-plid="10735"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10733"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-质" data-plid="10733"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10736"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-小" data-plid="10736"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10734"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-双" data-plid="10734"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10732"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-合" data-plid="10732"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="9">百位</th>
                </tr>
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
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="10731"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-大" data-plid="10731"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10729"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-单" data-plid="10729"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10727"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-质" data-plid="10727"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10730"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-小" data-plid="10730"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10728"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-双" data-plid="10728"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10726"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-合" data-plid="10726"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="9">十位</th>
                </tr>
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
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="10725"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-大" data-plid="10725"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10723"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-单" data-plid="10723"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10721"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-质" data-plid="10721"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10724"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-小" data-plid="10724"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10722"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-双" data-plid="10722"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10720"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-合" data-plid="10720"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="9">个位</th>
                </tr>
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
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="10719"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-大" data-plid="10719"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10717"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-单" data-plid="10717"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10715"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-质" data-plid="10715"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10718"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-小" data-plid="10718"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10716"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-双" data-plid="10716"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10714"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-合" data-plid="10714"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="9">总和、龙虎和</th>
                </tr>
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
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>龙</strong></td>
                    <td><strong class="color-red pl" data-plid="10709"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-龙" data-plid="10709"/></td>

                    <td><strong>总大</strong></td>
                    <td><strong class="color-red pl" data-plid="10713"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总大" data-plid="10713"/></td>

                    <td><strong>总单</strong></td>
                    <td><strong class="color-red pl" data-plid="10711"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总单" data-plid="10711"/></td>
                </tr>

                <tr>
                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="10708"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-虎" data-plid="10708"/></td>

                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="10712"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总小" data-plid="10712"/></td>

                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl" data-plid="10710"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总双" data-plid="10710"/></td>
                </tr>
                <tr>
                    <td><strong>和</strong></td>
                    <td><strong class="color-red pl" data-plid="10707"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-和" data-plid="10707"/></td>

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

        <c:import url="common/bottom_zs.jsp"/>
    </div>

    <div class="fr main-right cl-10"></div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 15;
    var playId = 389;
    var playGroupName = '双面';

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