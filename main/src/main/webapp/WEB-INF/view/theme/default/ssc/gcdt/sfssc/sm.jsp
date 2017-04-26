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
                    <td><strong class="color-red pl" data-plid="10554"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-大" data-plid="10554"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10552"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="10552"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10550"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-质" data-plid="10550"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10553"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="10553"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10551"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="10551"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10549"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-合" data-plid="10549"/></td>
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
                    <td><strong class="color-red pl" data-plid="10548"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-大" data-plid="10548"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10546"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-单" data-plid="10546"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10544"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-质" data-plid="10544"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10547"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-小" data-plid="10547"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10545"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-双" data-plid="10545"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10543"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-合" data-plid="10543"/></td>
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
                    <td><strong class="color-red pl" data-plid="10542"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-大" data-plid="10542"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10540"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-单" data-plid="10540"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10538"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-质" data-plid="10538"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10541"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-小" data-plid="10541"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10539"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-双" data-plid="10539"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10537"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-合" data-plid="10537"/></td>
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
                    <td><strong class="color-red pl" data-plid="10536"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-大" data-plid="10536"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10534"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-单" data-plid="10534"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10532"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-质" data-plid="10532"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10535"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-小" data-plid="10535"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10533"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-双" data-plid="10533"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10531"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-合" data-plid="10531"/></td>
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
                    <td><strong class="color-red pl" data-plid="10530"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-大" data-plid="10530"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10528"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-单" data-plid="10528"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10526"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-质" data-plid="10526"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10529"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-小" data-plid="10529"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10527"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-双" data-plid="10527"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10525"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-合" data-plid="10525"/></td>
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
                    <td><strong class="color-red pl" data-plid="10520"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-龙" data-plid="10520"/></td>

                    <td><strong>总大</strong></td>
                    <td><strong class="color-red pl" data-plid="10524"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总大" data-plid="10524"/></td>

                    <td><strong>总单</strong></td>
                    <td><strong class="color-red pl" data-plid="10522"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总单" data-plid="10522"/></td>
                </tr>

                <tr>
                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="10519"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-虎" data-plid="10519"/></td>

                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="10523"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总小" data-plid="10523"/></td>

                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl" data-plid="10521"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总双" data-plid="10521"/></td>
                </tr>
                <tr>
                    <td><strong>和</strong></td>
                    <td><strong class="color-red pl" data-plid="10518"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-和" data-plid="10518"/></td>

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
    var playGroupId = 13;
    var playId = 332;
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