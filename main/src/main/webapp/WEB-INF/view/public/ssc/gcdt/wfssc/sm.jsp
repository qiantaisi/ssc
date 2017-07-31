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
                    <td><strong class="color-red pl" data-plid="11407"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-大" data-plid="11407"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11405"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="11405"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="11403"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-质" data-plid="11403"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11406"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="11406"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11404"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="11404"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="11402"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-合" data-plid="11402"/></td>
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
                    <td><strong class="color-red pl" data-plid="11401"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-大" data-plid="11401"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11399"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-单" data-plid="11399"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="11397"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-质" data-plid="11397"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11400"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-小" data-plid="11400"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11398"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-双" data-plid="11398"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="11396"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-合" data-plid="11396"/></td>
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
                    <td><strong class="color-red pl" data-plid="11395"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-大" data-plid="11395"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11393"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-单" data-plid="11393"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="11391"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-质" data-plid="11391"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11394"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-小" data-plid="11394"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11392"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-双" data-plid="11392"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="11390"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-合" data-plid="11390"/></td>
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
                    <td><strong class="color-red pl" data-plid="11389"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-大" data-plid="11389"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11387"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-单" data-plid="11387"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="11385"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-质" data-plid="11385"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11388"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-小" data-plid="11388"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11386"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-双" data-plid="11386"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="11384"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-合" data-plid="11384"/></td>
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
                    <td><strong class="color-red pl" data-plid="11383"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-大" data-plid="11383"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11381"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-单" data-plid="11381"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="11379"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-质" data-plid="11379"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11382"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-小" data-plid="11382"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11380"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-双" data-plid="11380"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="11378"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-合" data-plid="11378"/></td>
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
                    <td><strong class="color-red pl" data-plid="11373"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-龙" data-plid="11373"/></td>

                    <td><strong>总大</strong></td>
                    <td><strong class="color-red pl" data-plid="11377"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总大" data-plid="11377"/></td>

                    <td><strong>总单</strong></td>
                    <td><strong class="color-red pl" data-plid="11375"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总单" data-plid="11375"/></td>
                </tr>

                <tr>
                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="11372"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-虎" data-plid="11372"/></td>

                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="11376"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总小" data-plid="11376"/></td>

                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl" data-plid="11374"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总双" data-plid="11374"/></td>
                </tr>
                <tr>
                    <td><strong>和</strong></td>
                    <td><strong class="color-red pl" data-plid="11371"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-和" data-plid="11371"/></td>

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
    var playGroupId = 17;
    var playId = 413;
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