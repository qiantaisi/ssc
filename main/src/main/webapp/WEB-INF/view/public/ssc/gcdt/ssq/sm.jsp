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
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="9">第一位</th>
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
                    <td><strong class="color-red pl" data-plid="6849"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-大" data-plid="6849"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6851"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="6851"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="6853"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-质" data-plid="6853"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6850"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="6850"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6852"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="6852"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="6854"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-合" data-plid="6854"/></td>
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
                    <td><strong class="color-red pl" data-plid="6855"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-大" data-plid="6855"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6857"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-单" data-plid="6857"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="6859"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-质" data-plid="6859"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6856"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-小" data-plid="6856"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6858"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-双" data-plid="6858"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="6860"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-合" data-plid="6860"/></td>
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
                    <td><strong class="color-red pl" data-plid="6861"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-大" data-plid="6861"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6863"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-单" data-plid="6863"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="6865"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-质" data-plid="6865"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6862"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-小" data-plid="6862"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6864"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-双" data-plid="6864"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="6866"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-合" data-plid="6866"/></td>
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
                    <td><strong class="color-red pl" data-plid="6867"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-大" data-plid="6867"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6869"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-单" data-plid="6869"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="6871"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-质" data-plid="6871"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6868"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-小" data-plid="6868"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6870"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-双" data-plid="6870"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="6872"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-合" data-plid="6872"/></td>
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
                    <td><strong class="color-red pl" data-plid="6873"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-大" data-plid="6873"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6875"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-单" data-plid="6875"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="6877"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-质" data-plid="6877"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6874"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-小" data-plid="6874"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6876"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-双" data-plid="6876"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="6878"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-合" data-plid="6878"/></td>
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
                    <td><strong class="color-red pl" data-plid="6883"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-龙" data-plid="6883"/></td>

                    <td><strong>总大</strong></td>
                    <td><strong class="color-red pl" data-plid="6879"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总大" data-plid="6879"/></td>

                    <td><strong>总单</strong></td>
                    <td><strong class="color-red pl" data-plid="6881"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总单" data-plid="6881"/></td>
                </tr>

                <tr>
                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="6884"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-虎" data-plid="6884"/></td>

                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="6880"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总小" data-plid="6880"/></td>

                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl" data-plid="6882"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总双" data-plid="6882"/></td>
                </tr>
                <tr>
                    <td><strong>和</strong></td>
                    <td><strong class="color-red pl" data-plid="6885"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-和" data-plid="6885"/></td>

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
    var playGroupId = 2;
    var playId = 228;
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
