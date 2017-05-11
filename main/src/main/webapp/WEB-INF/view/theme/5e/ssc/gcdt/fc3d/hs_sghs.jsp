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
                        <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-hs_bshs')">百十和数</a>
                        <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-hs_bghs')">百个和数</a>
                        <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-hs_sghs')" class="active">十个和数</a>
                        <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-hs_bsghs')">百十个和数</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">十个和数</th>
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
                    <td><strong>0~4</strong></td>
                    <td><strong class="color-red pl" data-plid="7947"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-0~4" data-plid="7947"/></td>

                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7953"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-5" data-plid="7953"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7959"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-6" data-plid="7959"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7965"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-7" data-plid="7965"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7971"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-8" data-plid="7971"/></td>
                </tr>

                <tr>
                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7977"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-9" data-plid="7977"/></td>

                    <td><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="7983"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-10" data-plid="7983"/></td>

                    <td><strong>11</strong></td>
                    <td><strong class="color-red pl" data-plid="7989"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-11" data-plid="7989"/></td>

                    <td><strong>12</strong></td>
                    <td><strong class="color-red pl" data-plid="7995"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-12" data-plid="7995"/></td>

                    <td><strong>13</strong></td>
                    <td><strong class="color-red pl" data-plid="8001"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-13" data-plid="8001"/></td>
                </tr>

                <tr>
                    <td><strong>14~18</strong></td>
                    <td><strong class="color-red pl" data-plid="8007"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-14~18" data-plid="8007"/></td>

                    <td colspan="12">&nbsp;</td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">十个和数尾数</th>
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
                    <td><strong class="color-red pl" data-plid="8013"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-0" data-plid="8013"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8019"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-1" data-plid="8019"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8025"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-2" data-plid="8025"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8031"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-3" data-plid="8031"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8037"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-4" data-plid="8037"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8043"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-5" data-plid="8043"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8049"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-6" data-plid="8049"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8055"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-7" data-plid="8055"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8061"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-8" data-plid="8061"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8067"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-9" data-plid="8067"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">十个和数双面</th>
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
                    <td><strong>十个和数</strong></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td><strong class="color-red pl" data-plid="8073"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-单" data-plid="8073"/></td>

                    <td><strong class="color-red pl" data-plid="8079"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-双" data-plid="8079"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>十个和数尾数</strong></td>

                    <td><strong class="color-red pl" data-plid="8085"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-大" data-plid="8085"/></td>

                    <td><strong class="color-red pl" data-plid="8091"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-小" data-plid="8091"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td><strong class="color-red pl" data-plid="8097"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-质" data-plid="8097"/></td>

                    <td><strong class="color-red pl" data-plid="8103"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-合" data-plid="8103"/></td>
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