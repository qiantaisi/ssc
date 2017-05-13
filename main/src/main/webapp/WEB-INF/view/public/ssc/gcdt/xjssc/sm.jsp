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
                    <td><strong class="color-red pl"  data-plid="6886"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-大" data-plid="6886"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl"  data-plid="6888"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="6888"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl"  data-plid="6890"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-质" data-plid="6890"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl"  data-plid="6887"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="6887"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl"  data-plid="6889"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="6889"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl"  data-plid="6891"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-合" data-plid="6891"/></td>
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
                    <td><strong class="color-red pl"  data-plid="6892"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-大" data-plid="6892"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl"  data-plid="6894"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-单" data-plid="6894"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl"  data-plid="6896"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-质" data-plid="6896"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl"  data-plid="6893"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-小" data-plid="6893"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl"  data-plid="6895"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-双" data-plid="6895"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl"  data-plid="6897"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-合" data-plid="6897"/></td>
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
                    <td><strong class="color-red pl"  data-plid="6898"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-大" data-plid="6898"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl"  data-plid="6900"></strong></td>
                    <td><input type="text" class="table-txt"  data-name="百位-单" data-plid="6900"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl"  data-plid="6902"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-质" data-plid="6902"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl"  data-plid="6899"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-小" data-plid="6899"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl"  data-plid="6901"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-双" data-plid="6901"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl"  data-plid="6903"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-合" data-plid="6903"/></td>
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
                    <td><strong class="color-red pl"  data-plid="6904"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-大" data-plid="6904"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl"  data-plid="6906"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-单" data-plid="6906"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl"  data-plid="6908"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-质" data-plid="6908"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl"  data-plid="6905"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-小" data-plid="6905"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl"  data-plid="6907"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-双" data-plid="6907"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="6909"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-合" data-plid="6909"/></td>
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
                    <td><strong class="color-red pl"  data-plid="6910"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-大" data-plid="6910"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl"  data-plid="6912"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-单" data-plid="6912"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl"  data-plid="6914"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-质" data-plid="6914"/></td>
                </tr>

                <tr>
                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl"  data-plid="6911"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-小" data-plid="6911"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl"  data-plid="6913"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-双" data-plid="6913"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl"  data-plid="6915"></strong></td>
                    <td><input type="text" class="table-txt"  data-name="个位-合" data-plid="6915"/></td>
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
                    <td><strong class="color-red pl"  data-plid="6920"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-龙" data-plid="6920"/></td>

                    <td><strong>总大</strong></td>
                    <td><strong class="color-red pl"  data-plid="6916"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总大" data-plid="6916"/></td>

                    <td><strong>总单</strong></td>
                    <td><strong class="color-red pl" data-plid="6918"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总单" data-plid="6918"/></td>
                </tr>

                <tr>
                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl"  data-plid="6921"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-虎" data-plid="6921"/></td>

                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="6917"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总小" data-plid="6917"/></td>

                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl"  data-plid="6919"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总双" data-plid="6919"/></td>
                </tr>
                <tr>
                    <td><strong>和</strong></td>
                    <td><strong class="color-red pl"  data-plid="6922"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-和" data-plid="6922"/></td>

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

    var playGroupId = 3;
    var playId = 240;
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