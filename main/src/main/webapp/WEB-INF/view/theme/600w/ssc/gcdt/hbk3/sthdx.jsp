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
                    <th colspan="9">三同号单选</th>
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
                    <td><strong>111</strong></td>
                    <td><strong class="color-red pl" data-plid="11721"></strong></td>
                    <td><input type="text" class="table-txt" data-name="111" data-plid="11721"/></td>

                    <td><strong>222</strong></td>
                    <td><strong class="color-red pl" data-plid="11720"></strong></td>
                    <td><input type="text" class="table-txt" data-name="222" data-plid="11720"/></td>

                    <td><strong>333</strong></td>
                    <td><strong class="color-red pl" data-plid="11719"></strong></td>
                    <td><input type="text" class="table-txt" data-name="333" data-plid="11719"/></td>
                </tr>

                <tr>
                    <td><strong>444</strong></td>
                    <td><strong class="color-red pl" data-plid="11718"></strong></td>
                    <td><input type="text" class="table-txt" data-name="444" data-plid="11718"/></td>

                    <td><strong>555</strong></td>
                    <td><strong class="color-red pl" data-plid="11717"></strong></td>
                    <td><input type="text" class="table-txt" data-name="555" data-plid="11717"/></td>

                    <td><strong>666</strong></td>
                    <td><strong class="color-red pl" data-plid="11716"></strong></td>
                    <td><input type="text" class="table-txt" data-name="666" data-plid="11716"/></td>
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
    var playGroupId = 19;
    var playId = 446;
    var playGroupName = '三同号单选';

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