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
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('efssc-yzdw_wdw')">万定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('efssc-yzdw_qdw')">千定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('efssc-yzdw_bdw')" class="active">百定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('efssc-yzdw_sdw')">十定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('efssc-yzdw_gdw')">个定位</a>
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
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>0</strong></td>
                    <td><strong class="color-red pl" data-plid="10941"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-0" data-plid="10941"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10940"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-1" data-plid="10940"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10939"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-2" data-plid="10939"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10938"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-3" data-plid="10938"/></td>
                </tr>

                <tr>
                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10937"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-4" data-plid="10937"/></td>

                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10936"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-5" data-plid="10936"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10935"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-6" data-plid="10935"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10934"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-7" data-plid="10934"/></td>
                </tr>
                <tr>
                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-8" data-plid="10933"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10932"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-9" data-plid="10932"/></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="10931"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-大" data-plid="10931"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10930"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-小" data-plid="10930"/></td>
                </tr>
                <tr>
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10929"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-单" data-plid="10929"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10928"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-双" data-plid="10928"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10927"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-质" data-plid="10927"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10926"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-合" data-plid="10926"/></td>
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
    var playGroupId = 16;
    var playId = 395;
    var playGroupName = '一字定位';

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