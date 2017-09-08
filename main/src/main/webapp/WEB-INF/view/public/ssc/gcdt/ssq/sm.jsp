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
                    <th colspan="6">第一位</th>
                    <th colspan="6">第二位</th>
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
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="14955"></strong></td>
                    <td><input type="text" class="table-txt" data-name="1/单" data-plid="14955"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="14956"></strong></td>
                    <td><input type="text" class="table-txt" data-name="1/双" data-plid="14956"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="14959"></strong></td>
                    <td><input type="text" class="table-txt" data-name="2/单" data-plid="14959"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="14960"></strong></td>
                    <td><input type="text" class="table-txt" data-name="2/双" data-plid="14960"/></td>
                </tr>
                </tbody>
            </table>


            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="6">第三位</th>
                    <th colspan="6">第四位</th>
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
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="14963"></strong></td>
                    <td><input type="text" class="table-txt" data-name="3/单" data-plid="14963"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="14964"></strong></td>
                    <td><input type="text" class="table-txt" data-name="3/双" data-plid="14964"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="14967"></strong></td>
                    <td><input type="text" class="table-txt" data-name="4/单" data-plid="14967"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="14968"></strong></td>
                    <td><input type="text" class="table-txt" data-name="4/双" data-plid="14968"/></td>
                </tr>
                </tbody>
            </table>


            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="6">第五位</th>
                    <th colspan="6">第六位</th>
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
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="14971"></strong></td>
                    <td><input type="text" class="table-txt" data-name="5/单" data-plid="14971"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="14972"></strong></td>
                    <td><input type="text" class="table-txt" data-name="5/双" data-plid="14972"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="14975"></strong></td>
                    <td><input type="text" class="table-txt" data-name="6/单" data-plid="14975"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="14976"></strong></td>
                    <td><input type="text" class="table-txt" data-name="6/双" data-plid="14976"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">总和</th>
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
                    <td><strong class="color-red pl" data-plid="14977"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和/大" data-plid="14977"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="14978"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和/小" data-plid="14978"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="14979"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和/单" data-plid="14978"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="14980"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和/双" data-plid="14980"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">蓝码</th>
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
                    <td><strong class="color-red pl" data-plid="14981"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蓝/大" data-plid="14981"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="14982"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蓝/小" data-plid="14982"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="14983"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蓝/单" data-plid="14983"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="14984"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蓝/双" data-plid="14984"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">红码</th>
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
                    <td><strong class="color-red pl" data-plid="14985"></strong></td>
                    <td><input type="text" class="table-txt" data-name="红/大" data-plid="14985"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="14986"></strong></td>
                    <td><input type="text" class="table-txt" data-name="红/小" data-plid="14986"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="14987"></strong></td>
                    <td><input type="text" class="table-txt" data-name="红/单" data-plid="14987"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="14988"></strong></td>
                    <td><input type="text" class="table-txt" data-name="红/双" data-plid="14988"/></td>
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
    var playGroupId = 12;
    var playId = 1038;
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
