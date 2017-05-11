<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <td><strong class="color-red pl" data-plid="7493"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万千和数-单" data-plid="7493"/></td>
                    <td><strong class="color-red pl" data-plid="7495"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万百和数-单" data-plid="7495"/></td>
                    <td><strong class="color-red pl" data-plid="9458"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万十和数-单" data-plid="9458"/></td>
                    <td><strong class="color-red pl" data-plid="7497"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万个和数-单" data-plid="7497"/></td>
                    <td><strong class="color-red pl" data-plid="7499"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千百和数-单" data-plid="7499"/></td>
                </tr>

                <tr>
                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="7494"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万千和数-双" data-plid="7494"/></td>
                    <td><strong class="color-red pl" data-plid="7496"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万百和数-双" data-plid="7496"/></td>
                    <td><strong class="color-red pl" data-plid="9459"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万十和数-双" data-plid="9459"/></td>
                    <td><strong class="color-red pl" data-plid="7498"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万个和数-双" data-plid="7498"/></td>
                    <td><strong class="color-red pl" data-plid="7500"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千百和数-双" data-plid="7500"/></td>
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
                    <td><strong class="color-red pl" data-plid="7501"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千十和数-单" data-plid="7501"/></td>
                    <td><strong class="color-red pl" data-plid="7503"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千个和数-单" data-plid="7503"/></td>
                    <td><strong class="color-red pl" data-plid="7505"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-单" data-plid="7505"/></td>
                    <td><strong class="color-red pl" data-plid="7507"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-单" data-plid="7507"/></td>
                    <td><strong class="color-red pl" data-plid="7509"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-单" data-plid="7509"/></td>
                </tr>

                <tr>
                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="7502"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千十和数-双" data-plid="7502"/></td>
                    <td><strong class="color-red pl" data-plid="7504"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千个和数-双" data-plid="7504"/></td>
                    <td><strong class="color-red pl" data-plid="7506"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-双" data-plid="7506"/></td>
                    <td><strong class="color-red pl" data-plid="7508"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-双" data-plid="7508"/></td>
                    <td><strong class="color-red pl" data-plid="7510"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-双" data-plid="7510"/></td>
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

    <div class="fr main-right cl-10">
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>

<script>
    var playGroupId = 2;
    var playId = 235;
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