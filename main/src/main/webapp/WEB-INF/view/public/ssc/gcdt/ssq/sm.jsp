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
                    <th colspan="12">第一位</th>
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

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6850"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="6850"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6851"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="6851"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6852"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="6852"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">第二位</th>
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

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6850"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="6850"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6851"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="6851"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6852"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="6852"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">第三位</th>
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

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6850"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="6850"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6851"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="6851"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6852"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="6852"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">第四位</th>
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

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6850"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="6850"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6851"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="6851"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6852"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="6852"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">第五位</th>
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

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6850"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="6850"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6851"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="6851"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6852"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="6852"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">第六位</th>
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

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="6850"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-小" data-plid="6850"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="6851"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-单" data-plid="6851"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="6852"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-双" data-plid="6852"/></td>
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
