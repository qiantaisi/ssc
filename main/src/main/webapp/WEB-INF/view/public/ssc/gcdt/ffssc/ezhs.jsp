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
                    <th width="33">&nbsp;</th>
                    <th colspan="2">万千和数</th>
                    <th colspan="2">万百和数</th>
                    <th colspan="2">万十和数</th>
                    <th colspan="2">万个和数</th>
                    <th colspan="2">千百和数</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10702"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万千和数-单" data-plid="10702"/></td>
                    <td><strong class="color-red pl" data-plid="10700"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万百和数-单" data-plid="10700"/></td>
                    <td><strong class="color-red pl" data-plid="10684"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万十和数-单" data-plid="10684"/></td>
                    <td><strong class="color-red pl" data-plid="10698"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万个和数-单" data-plid="10698"/></td>
                    <td><strong class="color-red pl" data-plid="10696"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千百和数-单" data-plid="10696"/></td>
                </tr>

                <tr>
                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10701"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万千和数-双" data-plid="10701"/></td>
                    <td><strong class="color-red pl" data-plid="10699"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万百和数-双" data-plid="10699"/></td>
                    <td><strong class="color-red pl" data-plid="10683"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万十和数-双" data-plid="10683"/></td>
                    <td><strong class="color-red pl" data-plid="10697"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万个和数-双" data-plid="10697"/></td>
                    <td><strong class="color-red pl" data-plid="10695"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千百和数-双" data-plid="10695"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="33">&nbsp;</th>
                    <th colspan="2">千十和数</th>
                    <th colspan="2">千个和数</th>
                    <th colspan="2">百十和数</th>
                    <th colspan="2">百个和数</th>
                    <th colspan="2">十个和数</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10694"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千十和数-单" data-plid="10694"/></td>
                    <td><strong class="color-red pl" data-plid="10692"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千个和数-单" data-plid="10692"/></td>
                    <td><strong class="color-red pl" data-plid="10690"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-单" data-plid="10690"/></td>
                    <td><strong class="color-red pl" data-plid="10688"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-单" data-plid="10688"/></td>
                    <td><strong class="color-red pl" data-plid="10686"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-单" data-plid="10686"/></td>
                </tr>

                <tr>
                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10693"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千十和数-双" data-plid="10693"/></td>
                    <td><strong class="color-red pl" data-plid="10691"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千个和数-双" data-plid="10691"/></td>
                    <td><strong class="color-red pl" data-plid="10689"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-双" data-plid="10689"/></td>
                    <td><strong class="color-red pl" data-plid="10687"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-双" data-plid="10687"/></td>
                    <td><strong class="color-red pl" data-plid="10685"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-双" data-plid="10685"/></td>
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
    var playId = 382;
    var playGroupName = '二字和数';

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