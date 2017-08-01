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
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_bghs')">百个和数</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_sghs')">十个和数</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_bsghs')" class="active">百十个和数</a>
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
                    <td><strong class="color-red pl" data-plid="8108"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-0~6" data-plid="8108"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8110"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-7" data-plid="8110"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8112"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-8" data-plid="8112"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8114"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-9" data-plid="8114"/></td>

                    <td><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="8116"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-10" data-plid="8116"/></td>
                </tr>

                <tr>
                    <td><strong>11</strong></td>
                    <td><strong class="color-red pl" data-plid="8118"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-11" data-plid="8118"/></td>

                    <td><strong>12</strong></td>
                    <td><strong class="color-red pl" data-plid="8120"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-12" data-plid="8120"/></td>

                    <td><strong>13</strong></td>
                    <td><strong class="color-red pl" data-plid="8122"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-13" data-plid="8122"/></td>

                    <td><strong>14</strong></td>
                    <td><strong class="color-red pl" data-plid="8124"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-14" data-plid="8124"/></td>

                    <td><strong>15</strong></td>
                    <td><strong class="color-red pl" data-plid="8126"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-15" data-plid="8126"/></td>
                </tr>

                <tr>
                    <td><strong>16</strong></td>
                    <td><strong class="color-red pl" data-plid="8128"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-16" data-plid="8128"/></td>

                    <td><strong>17</strong></td>
                    <td><strong class="color-red pl" data-plid="8130"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-17" data-plid="8130"/></td>

                    <td><strong>18</strong></td>
                    <td><strong class="color-red pl" data-plid="8132"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-18" data-plid="8132"/></td>

                    <td><strong>19</strong></td>
                    <td><strong class="color-red pl" data-plid="8134"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-19" data-plid="8134"/></td>

                    <td><strong>20</strong></td>
                    <td><strong class="color-red pl" data-plid="8136"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-20" data-plid="8136"/></td>
                </tr>

                <tr>
                    <td><strong>21~27</strong></td>
                    <td><strong class="color-red pl" data-plid="8138"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-21~27" data-plid="8138"/></td>

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
                    <td><strong class="color-red pl" data-plid="8140"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-0" data-plid="8140"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8142"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-1" data-plid="8142"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8144"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-2" data-plid="8144"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8146"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-3" data-plid="8146"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8148"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-4" data-plid="8148"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8150"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-5" data-plid="8150"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8152"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-6" data-plid="8152"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8154"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-7" data-plid="8154"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8156"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-8" data-plid="8156"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8158"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-9" data-plid="8158"/></td>
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

                    <td><strong class="color-red pl" data-plid="8160"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-大" data-plid="8160"/></td>

                    <td><strong class="color-red pl" data-plid="8162"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-小" data-plid="8162"/></td>

                    <td><strong class="color-red pl" data-plid="8164"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-单" data-plid="8164"/></td>

                    <td><strong class="color-red pl" data-plid="8166"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数-双" data-plid="8166"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>百十个和数尾数</strong></td>

                    <td><strong class="color-red pl" data-plid="8168"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-大" data-plid="8168"/></td>

                    <td><strong class="color-red pl" data-plid="8170"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-小" data-plid="8170"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td><strong class="color-red pl" data-plid="8172"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-质" data-plid="8172"/></td>

                    <td><strong class="color-red pl" data-plid="8174"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百十个和数尾数-合" data-plid="8174"/></td>
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