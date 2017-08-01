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
                    <a href="javascript:void(0)" onclick="getSscSubPage('ffssc-yzdw_wdw')" class="active">万定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('ffssc-yzdw_qdw')">千定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('ffssc-yzdw_bdw')">百定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('ffssc-yzdw_sdw')">十定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('ffssc-yzdw_gdw')">个定位</a>
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
                    <td><strong class="color-red pl" data-plid="10641"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-0" data-plid="10641"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10640"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-1" data-plid="10640"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10639"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-2" data-plid="10639"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10638"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-3" data-plid="10638"/></td>
                </tr>

                <tr>
                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10637"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-4" data-plid="10637"/></td>

                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10636"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-5" data-plid="10636"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10635"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-6" data-plid="10635"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10634"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-7" data-plid="10634"/></td>
                </tr>
                <tr>
                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10633"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-8" data-plid="10633"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10632"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-9" data-plid="10632"/></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="10631"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-大" data-plid="10631"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="10630"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-小" data-plid="10630"/></td>
                </tr>
                <tr>
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="10629"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-单" data-plid="10629"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="10628"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-双" data-plid="10628"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl" data-plid="10627"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-质" data-plid="10627"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl" data-plid="10626"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-合" data-plid="10626"/></td>
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
                    <td style="width: 55px"><strong class="color-red pl" data-plid="10561"></strong></td>
                    <td style="width: 70px"><input type="text" class="table-txt" data-name="总和、龙虎和-总大"
                                                   data-plid="10561"/></td>

                    <td style="width: 48px"><strong>总单</strong></td>
                    <td style="width: 57px"><strong class="color-red pl" data-plid="10559"></strong></td>
                    <td style="width: 69px"><input type="text" class="table-txt" data-name="总和、龙虎和-总单"
                                                   data-plid="10559"/></td>

                    <td style="width: 48px"><strong>龙</strong></td>
                    <td style="width: 54px"><strong class="color-red pl" data-plid="10557"></strong></td>
                    <td style="width: 72px"><input type="text" class="table-txt" data-name="总和、龙虎和-龙"
                                                   data-plid="10557"/></td>

                    <td style="width: 46px"><strong>和</strong></td>
                    <td><strong class="color-red pl" data-plid="10555"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-和" data-plid="10555"/></td>
                </tr>

                <tr>
                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="10560"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总小" data-plid="10560"/></td>

                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl" data-plid="10558"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总双" data-plid="10558"/></td>

                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="10556"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-虎" data-plid="10556"/></td>

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
    var playGroupId = 15;
    var playId = 383;
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