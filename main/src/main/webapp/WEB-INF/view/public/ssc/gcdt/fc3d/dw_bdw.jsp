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
        <div class="hd clearfix">
            <%--<div class="fl">--%>
                <%--快捷金额：--%>
                <%--<input type="text" class="txt"/>--%>
            <%--</div>--%>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_bdw')" class="active">百定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_sdw')">十定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_gdw')">个定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_bsdw')">百十定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_bgdw')">百个定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_sgdw')">十个定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_bsgdw')">百十个定位</a>
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
                    <td><strong class="color-red pl" data-plid="7811"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-0" data-plid="7811"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="7817"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-1" data-plid="7817"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="7823"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-2" data-plid="7823"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="7829"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-3" data-plid="7829"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="7835"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-4" data-plid="7835"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7841"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-5" data-plid="7841"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7847"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-6" data-plid="7847"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7853"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-7" data-plid="7853"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7859"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-8" data-plid="7859"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7865"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-9" data-plid="7865"/></td>
                </tr>

                <tr>
                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="7871"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-大" data-plid="7871"/></td>

                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="7883"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-单" data-plid="7883"/></td>

                    <td>质</td>
                    <td><strong class="color-red pl" data-plid="7895"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-质" data-plid="7895"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="7877"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-小" data-plid="7877"/></td>

                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="7889"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-双" data-plid="7889"/></td>

                    <td>合</td>
                    <td><strong class="color-red pl" data-plid="7901"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-合" data-plid="7901"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="21">
                        <c:import url="../common/toptouzhu.jsp">
                            <c:param name="flagGroup" value="11"/>
                            <c:param name="navGroup" value="1"/>
                        </c:import>
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
        <c:import url="common/bottom_zs.jsp"/>
    </div>

    <div class="fr main-right cl-10 re-cl-10">
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 5;
    var playId = 252;
    var playGroupName = '定位';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common tbody input").each(function () {
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