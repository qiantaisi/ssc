<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-zh_yzzh')" class="active">一字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-zh_ezzh')">二字组合</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-zh_szzh')">三字组合</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
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
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>0</strong></td>
                    <td><strong class="color-red pl" data-plid="7925"></strong></td>
                    <td><input type="text" class="table-txt" data-name="一字组合-0" data-plid="7925"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="7926"></strong></td>
                    <td><input type="text" class="table-txt" data-name="一字组合-1" data-plid="7926"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="7927"></strong></td>
                    <td><input type="text" class="table-txt" data-name="一字组合-2" data-plid="7927"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="7928"></strong></td>
                    <td><input type="text" class="table-txt" data-name="一字组合-3" data-plid="7928"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="7929"></strong></td>
                    <td><input type="text" class="table-txt" data-name="一字组合-4" data-plid="7929"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7930"></strong></td>
                    <td><input type="text" class="table-txt" data-name="一字组合-5" data-plid="7930"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7931"></strong></td>
                    <td><input type="text" class="table-txt" data-name="一字组合-6" data-plid="7931"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7932"></strong></td>
                    <td><input type="text" class="table-txt" data-name="一字组合-7" data-plid="7932"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="一字组合-8" data-plid="7933"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7934"></strong></td>
                    <td><input type="text" class="table-txt" data-name="一字组合-9" data-plid="7934"/></td>
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
    var playGroupId = 4;
    var playId = 288;
    var playGroupName = '组合';

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