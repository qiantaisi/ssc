<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
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
                    <td><strong class="color-red pl" data-plid="11075"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-大" data-plid="11075"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11073"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="11073"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="11071"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-质" data-plid="11071"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11074"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="11074"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11072"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="11072"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="11070"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-合" data-plid="11070"/></td>
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
                    <td><strong class="color-red pl" data-plid="11069"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-大" data-plid="11069"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11067"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-单" data-plid="11067"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="11065"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-质" data-plid="11065"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11068"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-小" data-plid="11068"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11066"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-双" data-plid="11066"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="11064"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-合" data-plid="11064"/></td>
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
                    <td><strong class="color-red pl" data-plid="11063"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-大" data-plid="11063"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11061"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-单" data-plid="11061"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="11059"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-质" data-plid="11059"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11062"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-小" data-plid="11062"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11060"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-双" data-plid="11060"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="11058"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-合" data-plid="11058"/></td>
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
                    <td><strong class="color-red pl" data-plid="11057"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-大" data-plid="11057"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11055"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-单" data-plid="11055"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="11053"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-质" data-plid="11053"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11056"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-小" data-plid="11056"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11054"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-双" data-plid="11054"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="11052"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-合" data-plid="11052"/></td>
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
                    <td><strong class="color-red pl" data-plid="11051"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-大" data-plid="11051"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11049"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-单" data-plid="11049"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="11047"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-质" data-plid="11047"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11050"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-小" data-plid="11050"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11048"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-双" data-plid="11048"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="11046"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-合" data-plid="11046"/></td>
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
                    <td><strong class="color-red pl" data-plid="11041"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-龙" data-plid="11041"/></td>

                    <td><strong>总大</strong></td>
                    <td><strong class="color-red pl" data-plid="11045"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总大" data-plid="11045"/></td>

                    <td><strong>总单</strong></td>
                    <td><strong class="color-red pl" data-plid="11043"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总单" data-plid="11043"/></td>
                </tr>

                <tr>
                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="11040"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-虎" data-plid="11040"/></td>

                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="11044"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总小" data-plid="11044"/></td>

                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl" data-plid="11042"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总双" data-plid="11042"/></td>
                </tr>
                <tr>
                    <td><strong>和</strong></td>
                    <td><strong class="color-red pl" data-plid="11039"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-和" data-plid="11039"/></td>

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
    var playGroupId = 16;
    var playId = 401;
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