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
                    <th colspan="12">冠亚军和</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td colspan="3"><strong>3,4,18,19</strong></td>
                    <td colspan="2"><strong class="color-red pl" data-plid="8563"></strong></td>
                    <td><input type="text" class="table-txt" data-name="3,4,18,19" data-plid="8563"/></td>

                    <td colspan="3"><strong>9,10,12,13</strong></td>
                    <td colspan="2"><strong class="color-red pl" data-plid="8564"></strong></td>
                    <td><input type="text" class="table-txt" data-name="9,10,12,13" data-plid="8564"/></td>
                </tr>

                <tr>
                    <td colspan="3"><strong>5,6,16,17</strong></td>
                    <td colspan="2"><strong class="color-red pl" data-plid="8565"></strong></td>
                    <td><input type="text" class="table-txt" data-name="5,6,16,17" data-plid="8565"/></td>

                    <td colspan="3"><strong>11</strong></td>
                    <td colspan="2"><strong class="color-red pl" data-plid="8566"></strong></td>
                    <td><input type="text" class="table-txt" data-name="11" data-plid="8566"/></td>
                </tr>

                <tr>
                    <td colspan="3"><strong>7,8,14,15</strong></td>
                    <td colspan="2"><strong class="color-red pl" data-plid="8567"></strong></td>
                    <td><input type="text" class="table-txt" data-name="7,8,14,15" data-plid="8567"/></td>

                    <td colspan="3">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>和大</strong></td>
                    <td><strong class="color-red pl" data-plid="8568"></strong></td>
                    <td><input type="text" class="table-txt" data-name="和大" data-plid="8568"/></td>

                    <td><strong>和小</strong></td>
                    <td><strong class="color-red pl" data-plid="8569"></strong></td>
                    <td><input type="text" class="table-txt" data-name="和小" data-plid="8569"/></td>

                    <td><strong>和单</strong></td>
                    <td><strong class="color-red pl" data-plid="8570"></strong></td>
                    <td><input type="text" class="table-txt" data-name="和单" data-plid="8570"/></td>

                    <td><strong>和双</strong></td>
                    <td><strong class="color-red pl" data-plid="8571"></strong></td>
                    <td><input type="text" class="table-txt" data-name="和双" data-plid="8571"/></td>
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
<c:import url="common/bottom_zs.jsp"/>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 9;
    var playId = 270;
    var playGroupName = '冠亚和';

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