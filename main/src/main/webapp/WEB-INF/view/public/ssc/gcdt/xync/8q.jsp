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
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

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
                    <td><strong>01</strong></td>
                    <td><strong class="color-red pl" data-plid="9189"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-1" data-plid="9189"></td>

                    <td><strong>02</strong></td>
                    <td><strong class="color-red pl" data-plid="9190"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-2" data-plid="9190"></td>

                    <td><strong>03</strong></td>
                    <td><strong class="color-red pl" data-plid="9191"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-3" data-plid="9191"></td>

                    <td><strong>04</strong></td>
                    <td><strong class="color-red pl" data-plid="9192"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-4" data-plid="9192"></td>

                    <td><strong>05</strong></td>
                    <td><strong class="color-red pl" data-plid="9193"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-5" data-plid="9193"></td>
                </tr>

                <tr>
                    <td><strong>06</strong></td>
                    <td><strong class="color-red pl" data-plid="9194"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-6" data-plid="9194"></td>

                    <td><strong>07</strong></td>
                    <td><strong class="color-red pl" data-plid="9195"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-7" data-plid="9195"></td>

                    <td><strong>08</strong></td>
                    <td><strong class="color-red pl" data-plid="9196"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-8" data-plid="9196"></td>

                    <td><strong>09</strong></td>
                    <td><strong class="color-red pl" data-plid="9197"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-9" data-plid="9197"></td>

                    <td><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="9198"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-10" data-plid="9198"></td>
                </tr>

                <tr>
                    <td><strong>11</strong></td>
                    <td><strong class="color-red pl" data-plid="9199"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-11" data-plid="9199"></td>

                    <td><strong>12</strong></td>
                    <td><strong class="color-red pl" data-plid="9200"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-12" data-plid="9200"></td>

                    <td><strong>13</strong></td>
                    <td><strong class="color-red pl" data-plid="9201"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-13" data-plid="9201"></td>

                    <td><strong>14</strong></td>
                    <td><strong class="color-red pl" data-plid="9202"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-14" data-plid="9202"></td>

                    <td><strong>15</strong></td>
                    <td><strong class="color-red pl" data-plid="9203"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-15" data-plid="9203"></td>
                </tr>

                <tr>
                    <td><strong>16</strong></td>
                    <td><strong class="color-red pl" data-plid="9204"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-16" data-plid="9204"></td>

                    <td><strong>17</strong></td>
                    <td><strong class="color-red pl" data-plid="9205"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-17" data-plid="9205"></td>

                    <td><strong>18</strong></td>
                    <td><strong class="color-red pl" data-plid="9206"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-18" data-plid="9206"></td>

                    <td><strong>19</strong></td>
                    <td><strong class="color-red pl" data-plid="9207"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-19" data-plid="9207"></td>

                    <td><strong>20</strong></td>
                    <td><strong class="color-red pl" data-plid="9208"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八球-20" data-plid="9208"></td>
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
<c:import url="common/bottom_zs.jsp" />
<c:import url="../common/subPageCommonJs.jsp" />
<script>
    var playGroupId = 10;
    var playId = 302;
    var playGroupName = '第八球';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common input").each(function() {
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