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
        <div class="hd clearfix">
            <%--<div class="fl">--%>
                <%--快捷金额：--%>
                <%--<input type="text" class="txt"/>--%>
            <%--</div>--%>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_bshs')">百十和数</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_bghs')" class="active">百个和数</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_sghs')">十个和数</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_bsghs')">百十个和数</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">百个和数</th>
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
                    <td><strong class="color-red pl" data-plid="7949"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-0~4" data-plid="7949"/></td>

                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7955"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-5" data-plid="7955"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7961"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-6" data-plid="7961"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7967"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-7" data-plid="7967"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7973"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-8" data-plid="7973"/></td>
                </tr>

                <tr>
                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7979"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-9" data-plid="7979"/></td>

                    <td><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="7985"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-10" data-plid="7985"/></td>

                    <td><strong>11</strong></td>
                    <td><strong class="color-red pl" data-plid="7991"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-11" data-plid="7991"/></td>

                    <td><strong>12</strong></td>
                    <td><strong class="color-red pl" data-plid="7997"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-12" data-plid="7997"/></td>

                    <td><strong>13</strong></td>
                    <td><strong class="color-red pl" data-plid="8003"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-13" data-plid="8003"/></td>
                </tr>

                <tr>
                    <td><strong>14~18</strong></td>
                    <td><strong class="color-red pl" data-plid="8009"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-14~18" data-plid="8009"/></td>

                    <td colspan="12">&nbsp;</td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">百个和数尾数</th>
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
                    <td><strong class="color-red pl" data-plid="8015"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-0" data-plid="8015"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8021"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-1" data-plid="8021"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8027"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-2" data-plid="8027"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8033"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-3" data-plid="8033"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8039"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-4" data-plid="8039"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8045"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-5" data-plid="8045"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8051"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-6" data-plid="8051"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8057"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-7" data-plid="8057"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8063"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-8" data-plid="8063"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8069"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-9" data-plid="8069"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">百个和数双面</th>
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
                    <td><strong>百个和数</strong></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td><strong class="color-red pl" data-plid="8075"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-单" data-plid="8075"/></td>

                    <td><strong class="color-red pl" data-plid="8081"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数-双" data-plid="8081"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>百个和数尾数</strong></td>

                    <td><strong class="color-red pl" data-plid="8087"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-大" data-plid="8087"/></td>

                    <td><strong class="color-red pl" data-plid="8093"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-小" data-plid="8093"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td><strong class="color-red pl" data-plid="8099"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-质" data-plid="8099"/></td>

                    <td><strong class="color-red pl" data-plid="8105"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百个和数尾数-合" data-plid="8105"/></td>
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