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
                    <td><strong class="color-red pl" data-plid="6812"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-大" data-plid="6812"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6814"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="6814"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="6816"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-质" data-plid="6816"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6813"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="6813"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6815"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="6815"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="6817"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-合" data-plid="6817"/></td>
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
                    <td><strong class="color-red pl" data-plid="6818"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-大" data-plid="6818"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6820"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-单" data-plid="6820"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="6822"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-质" data-plid="6822"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6819"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-小" data-plid="6819"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6821"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-双" data-plid="6821"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="6823"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-合" data-plid="6823"/></td>
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
                    <td><strong class="color-red pl" data-plid="6824"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-大" data-plid="6824"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6826"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-单" data-plid="6826"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="6828"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-质" data-plid="6828"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6825"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-小" data-plid="6825"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6827"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-双" data-plid="6827"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="6829"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-合" data-plid="6829"/></td>
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
                    <td><strong class="color-red pl" data-plid="6830"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-大" data-plid="6830"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6832"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-单" data-plid="6832"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="6834"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-质" data-plid="6834"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6831"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-小" data-plid="6831"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6833"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-双" data-plid="6833"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="6835"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-合" data-plid="6835"/></td>
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
                    <td><strong class="color-red pl" data-plid="6836"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-大" data-plid="6836"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6838"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-单" data-plid="6838"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="6840"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-质" data-plid="6840"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6837"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-小" data-plid="6837"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6839"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-双" data-plid="6839"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="6841"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-合" data-plid="6841"/></td>
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
                    <td><strong class="color-red pl" data-plid="6846"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-龙" data-plid="6846"/></td>

                    <td><strong>总大</strong></td>
                    <td><strong class="color-red pl" data-plid="6842"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总大" data-plid="6842"/></td>

                    <td><strong>总单</strong></td>
                    <td><strong class="color-red pl" data-plid="6844"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总单" data-plid="6844"/></td>
                </tr>

                <tr>
                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="6847"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-虎" data-plid="6847"/></td>

                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="6843"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总小" data-plid="6843"/></td>

                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl" data-plid="6845"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总双" data-plid="6845"/></td>
                </tr>
                <tr>
                    <td><strong>和</strong></td>
                    <td><strong class="color-red pl" data-plid="6848"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-和" data-plid="6848"/></td>

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
<c:import url="../common/subPageCommonJs.jsp" />
<script>
    var playGroupId = 1;
    var playId = 216;
    var playGroupName = '双面';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common input").each(function() {
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