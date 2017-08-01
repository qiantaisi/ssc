<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<!-- content -->
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix rehd retoptz" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
        </div>
        <div class="table-common clearfix reclearfix">
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
                    <td><strong>01</strong></td>
                    <td><strong class="color-red pl" data-plid="8889"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-1" data-plid="8889"/></td>

                    <td><strong>02</strong></td>
                    <td><strong class="color-red pl" data-plid="8890"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-2" data-plid="8890"/></td>

                    <td><strong>03</strong></td>
                    <td><strong class="color-red pl" data-plid="8891"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-3" data-plid="8891"/></td>

                    <td><strong>04</strong></td>
                    <td><strong class="color-red pl" data-plid="8892"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-4" data-plid="8892"/></td>

                    <td><strong>05</strong></td>
                    <td><strong class="color-red pl" data-plid="8893"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-5" data-plid="8893"/></td>
                </tr>

                <tr>
                    <td><strong>06</strong></td>
                    <td><strong class="color-red pl" data-plid="8894"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-6" data-plid="8894"/></td>

                    <td><strong>07</strong></td>
                    <td><strong class="color-red pl" data-plid="8895"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-7" data-plid="8895"/></td>

                    <td><strong>08</strong></td>
                    <td><strong class="color-red pl" data-plid="8896"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-8" data-plid="8896"/></td>

                    <td><strong>09</strong></td>
                    <td><strong class="color-red pl" data-plid="8897"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-9" data-plid="8897"/></td>

                    <td><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="8898"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-10" data-plid="8898"/></td>
                </tr>

                <tr>
                    <td><strong>11</strong></td>
                    <td><strong class="color-red pl" data-plid="8899"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-11" data-plid="8899"/></td>

                    <td><strong>12</strong></td>
                    <td><strong class="color-red pl" data-plid="8900"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-12" data-plid="8900"/></td>

                    <td><strong>13</strong></td>
                    <td><strong class="color-red pl" data-plid="8901"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-13" data-plid="8901"/></td>

                    <td><strong>14</strong></td>
                    <td><strong class="color-red pl" data-plid="8902"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-14" data-plid="8902"/></td>

                    <td><strong>15</strong></td>
                    <td><strong class="color-red pl" data-plid="8903"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-15" data-plid="8903"/></td>
                </tr>

                <tr>
                    <td><strong>16</strong></td>
                    <td><strong class="color-red pl" data-plid="8904"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-16" data-plid="8904"/></td>

                    <td><strong>17</strong></td>
                    <td><strong class="color-red pl" data-plid="8905"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-17" data-plid="8905"/></td>

                    <td><strong>18</strong></td>
                    <td><strong class="color-red pl" data-plid="8906"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-18" data-plid="8906"/></td>

                    <td><strong>19</strong></td>
                    <td><strong class="color-red pl" data-plid="8907"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-19" data-plid="8907"/></td>

                    <td><strong>20</strong></td>
                    <td><strong class="color-red pl" data-plid="8908"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-20" data-plid="8908"/></td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <div class="fr main-right cl-10">
    </div>
</div>
<c:import url="common/bottom_zs.jsp"/>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 11;
    var playId = 278;
    var playGroupName = '第一球';

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