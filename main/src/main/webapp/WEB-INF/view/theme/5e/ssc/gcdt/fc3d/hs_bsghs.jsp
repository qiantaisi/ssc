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
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix">
                    <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                        <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-hs_bshs')">百十个和数</a>
                        <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-hs_bghs')">百个和数</a>
                        <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-hs_sghs')">十个和数</a>
                        <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-hs_bsghs')" class="active">百十个和数</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">百十个和数</th>
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
                    <td><strong>0~6</strong></td>
                    <td><strong class="color-red pl" data-plid="8107"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-0~6" data-plid="8107"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8109"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-7" data-plid="8109"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8111"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-8" data-plid="8111"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8113"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-9" data-plid="8113"/></td>

                    <td><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="8115"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-10" data-plid="8115"/></td>
                </tr>

                <tr>
                    <td><strong>11</strong></td>
                    <td><strong class="color-red pl" data-plid="8117"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-11" data-plid="8117"/></td>

                    <td><strong>12</strong></td>
                    <td><strong class="color-red pl" data-plid="8119"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-12" data-plid="8119"/></td>

                    <td><strong>13</strong></td>
                    <td><strong class="color-red pl" data-plid="8121"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-13" data-plid="8121"/></td>

                    <td><strong>14</strong></td>
                    <td><strong class="color-red pl" data-plid="8123"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-14" data-plid="8123"/></td>

                    <td><strong>15</strong></td>
                    <td><strong class="color-red pl" data-plid="8125"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-15" data-plid="8125"/></td>
                </tr>

                <tr>
                    <td><strong>16</strong></td>
                    <td><strong class="color-red pl" data-plid="8127"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-16" data-plid="8127"/></td>

                    <td><strong>17</strong></td>
                    <td><strong class="color-red pl" data-plid="8129"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-17" data-plid="8129"/></td>

                    <td><strong>18</strong></td>
                    <td><strong class="color-red pl" data-plid="8131"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-18" data-plid="8131"/></td>

                    <td><strong>19</strong></td>
                    <td><strong class="color-red pl" data-plid="8133"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-19" data-plid="8133"/></td>

                    <td><strong>20</strong></td>
                    <td><strong class="color-red pl" data-plid="8135"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-20" data-plid="8135"/></td>
                </tr>

                <tr>
                    <td><strong>21~27</strong></td>
                    <td><strong class="color-red pl" data-plid="8137"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-21~27" data-plid="8137"/></td>

                    <td colspan="12">&nbsp;</td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">百十个和数尾数</th>
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
                    <td><strong class="color-red pl" data-plid="8139"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-0" data-plid="8139"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8141"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-1" data-plid="8141"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8143"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-2" data-plid="8143"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8145"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-3" data-plid="8145"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8147"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-4" data-plid="8147"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8149"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-5" data-plid="8149"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8151"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-6" data-plid="8151"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8153"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-7" data-plid="8153"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8155"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-8" data-plid="8155"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8157"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-9" data-plid="8157"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">百十个和数双面</th>
                </tr>
                <tr>
                    <th>&nbsp;</th>
                    <th colspan="2">大</th>
                    <th colspan="2">小</th>
                    <th colspan="2">单</th>
                    <th colspan="2">双</th>
                    <th colspan="2">质</th>
                    <th colspan="2">合</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>百十个和数</strong></td>

                    <td><strong class="color-red pl" data-plid="8159"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-大" data-plid="8159"/></td>

                    <td><strong class="color-red pl" data-plid="8161"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-小" data-plid="8161"/></td>

                    <td><strong class="color-red pl" data-plid="8163"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-单" data-plid="8163"/></td>

                    <td><strong class="color-red pl" data-plid="8165"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-双" data-plid="8165"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>百十个和数尾数</strong></td>

                    <td><strong class="color-red pl" data-plid="8167"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-大" data-plid="8167"/></td>

                    <td><strong class="color-red pl" data-plid="8169"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-小" data-plid="8169"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td><strong class="color-red pl" data-plid="8171"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-质" data-plid="8171"/></td>

                    <td><strong class="color-red pl" data-plid="8173"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-合" data-plid="8173"/></td>
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
    var playGroupId = 5;
    var playId = 254;
    var playGroupName = '和数';

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