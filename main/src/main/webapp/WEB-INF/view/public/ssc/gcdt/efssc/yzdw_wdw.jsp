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
                    <a href="javascript:void(0)" onclick="getSscSubPage('efssc-yzdw_wdw')" class="active">万定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('efssc-yzdw_qdw')">千定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('efssc-yzdw_bdw')">百定位</a>
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
                    <td><strong class="color-red pl" data-plid="10973"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-0" data-plid="10973"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10972"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-1" data-plid="10972"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10971"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-2" data-plid="10971"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10970"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-3" data-plid="10970"/></td>
                </tr>

                <tr>
                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10969"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-4" data-plid="10969"/></td>

                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10968"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-5" data-plid="10968"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10967"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-6" data-plid="10967"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10966"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-7" data-plid="10966"/></td>
                </tr>
                <tr>
                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10965"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-8" data-plid="10965"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10964"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-9" data-plid="10964"/></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="10963"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-大" data-plid="10963"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10962"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-小" data-plid="10962"/></td>
                </tr>
                <tr>
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10961"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-单" data-plid="10961"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10960"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-双" data-plid="10960"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10959"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-质" data-plid="10959"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10958"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-合" data-plid="10958"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">总和、龙虎和</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td style="width: 47px"><strong>总大</strong></td>
                    <td style="width: 55px"><strong class="color-red pl" data-plid="10893"></strong></td>
                    <td style="width: 70px"><input type="text" class="table-txt" data-name="总和、龙虎和-总大"
                                                   data-plid="10893"/></td>

                    <td style="width: 48px"><strong>总单</strong></td>
                    <td style="width: 57px"><strong class="color-red pl" data-plid="10891"></strong></td>
                    <td style="width: 69px"><input type="text" class="table-txt" data-name="总和、龙虎和-总单"
                                                   data-plid="10891"/></td>

                    <td style="width: 48px"><strong>龙</strong></td>
                    <td style="width: 54px"><strong class="color-red pl" data-plid="10889"></strong></td>
                    <td style="width: 72px"><input type="text" class="table-txt" data-name="总和、龙虎和-龙"
                                                   data-plid="10889"/></td>

                    <td style="width: 46px"><strong>和</strong></td>
                    <td><strong class="color-red pl" data-plid="10887"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-和" data-plid="10887"/></td>
                </tr>

                <tr>
                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="10892"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总小" data-plid="10892"/></td>

                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl" data-plid="10890"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总双" data-plid="10890"/></td>

                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="10888"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-虎" data-plid="10888"/></td>

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