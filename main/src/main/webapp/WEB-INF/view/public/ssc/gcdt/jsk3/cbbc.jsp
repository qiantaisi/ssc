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
                <th colspan="9">猜必不出</th>
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
                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11689"></strong></td>
                    <td><input type="text" class="table-txt" data-name="1" data-plid="11689"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11690"></strong></td>
                    <td><input type="text" class="table-txt" data-name="2" data-plid="11690"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11691"></strong></td>
                    <td><input type="text" class="table-txt" data-name="3" data-plid="11691"/></td>
                </tr>

                <tr>
                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11692"></strong></td>
                    <td><input type="text" class="table-txt" data-name="4" data-plid="11692"/></td>

                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11693"></strong></td>
                    <td><input type="text" class="table-txt" data-name="5" data-plid="11693"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11694"></strong></td>
                    <td><input type="text" class="table-txt" data-name="6" data-plid="11694"/></td>
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
    var playGroupId = 18;
    var playId = 445;
    var playGroupName = '猜必不出';

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