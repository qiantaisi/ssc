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
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_bshs')" class="active">百十和数</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_bghs')">百个和数</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_sghs')">十个和数</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_bsghs')">百十个和数</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">百十和数</th>
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
                    <td><strong class="color-red pl" data-plid="7948"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-0~4" data-plid="7948"/></td>

                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7954"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-5" data-plid="7954"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7960"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-6" data-plid="7960"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7966"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-7" data-plid="7966"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7972"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-8" data-plid="7972"/></td>
                </tr>

                <tr>
                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7978"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-9" data-plid="7978"/></td>

                    <td><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="7984"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-10" data-plid="7984"/></td>

                    <td><strong>11</strong></td>
                    <td><strong class="color-red pl" data-plid="7990"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-11" data-plid="7990"/></td>

                    <td><strong>12</strong></td>
                    <td><strong class="color-red pl" data-plid="7996"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-12" data-plid="7996"/></td>

                    <td><strong>13</strong></td>
                    <td><strong class="color-red pl" data-plid="8002"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-13" data-plid="8002"/></td>
                </tr>

                <tr>
                    <td><strong>14~18</strong></td>
                    <td><strong class="color-red pl" data-plid="8008"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-14~18" data-plid="8008"/></td>

                    <td colspan="12">&nbsp;</td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">百十和数尾数</th>
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
                    <td><strong class="color-red pl" data-plid="8014"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-0" data-plid="8014"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8020"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-1" data-plid="8020"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8026"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-2" data-plid="8026"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8032"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-3" data-plid="8032"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8038"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-4" data-plid="8038"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8044"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-5" data-plid="8044"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8050"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-6" data-plid="8050"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8056"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-7" data-plid="8056"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8062"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-8" data-plid="8062"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8068"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-9" data-plid="8068"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">百十和数双面</th>
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
                    <td><strong>百十和数</strong></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td><strong class="color-red pl" data-plid="8074"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-单" data-plid="8074"/></td>

                    <td><strong class="color-red pl" data-plid="8080"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数-双" data-plid="8080"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>百十和数尾数</strong></td>

                    <td><strong class="color-red pl" data-plid="8086"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-大" data-plid="8086"/></td>

                    <td><strong class="color-red pl" data-plid="8092"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-小" data-plid="8092"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td><strong class="color-red pl" data-plid="8098"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-质" data-plid="8098"/></td>

                    <td><strong class="color-red pl" data-plid="8104"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十和数尾数-合" data-plid="8104"/></td>
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
    var playId = 289;
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