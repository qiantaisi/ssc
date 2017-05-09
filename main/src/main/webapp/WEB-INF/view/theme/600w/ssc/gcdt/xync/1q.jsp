<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
                    <td><strong class="color-red pl" data-plid="9049"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-1" data-plid="9049"></td>

                    <td><strong>02</strong></td>
                    <td><strong class="color-red pl" data-plid="9050"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-2" data-plid="9050"></td>

                    <td><strong>03</strong></td>
                    <td><strong class="color-red pl" data-plid="9051"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-3" data-plid="9051"></td>

                    <td><strong>04</strong></td>
                    <td><strong class="color-red pl" data-plid="9052"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-4" data-plid="9052"></td>

                    <td><strong>05</strong></td>
                    <td><strong class="color-red pl" data-plid="9053"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-5" data-plid="9053"></td>
                </tr>

                <tr>
                    <td><strong>06</strong></td>
                    <td><strong class="color-red pl" data-plid="9054"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-6" data-plid="9054"></td>

                    <td><strong>07</strong></td>
                    <td><strong class="color-red pl" data-plid="9055"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-7" data-plid="9055"></td>

                    <td><strong>08</strong></td>
                    <td><strong class="color-red pl" data-plid="9056"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-8" data-plid="9056"></td>

                    <td><strong>09</strong></td>
                    <td><strong class="color-red pl" data-plid="9057"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-9" data-plid="9057"></td>

                    <td><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="9058"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-10" data-plid="9058"></td>
                </tr>

                <tr>
                    <td><strong>11</strong></td>
                    <td><strong class="color-red pl" data-plid="9059"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-11" data-plid="9059"></td>

                    <td><strong>12</strong></td>
                    <td><strong class="color-red pl" data-plid="9060"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-12" data-plid="9060"></td>

                    <td><strong>13</strong></td>
                    <td><strong class="color-red pl" data-plid="9061"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-13" data-plid="9061"></td>

                    <td><strong>14</strong></td>
                    <td><strong class="color-red pl" data-plid="9062"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-14" data-plid="9062"></td>

                    <td><strong>15</strong></td>
                    <td><strong class="color-red pl" data-plid="9063"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-15" data-plid="9063"></td>
                </tr>

                <tr>
                    <td><strong>16</strong></td>
                    <td><strong class="color-red pl" data-plid="9064"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-16" data-plid="9064"></td>

                    <td><strong>17</strong></td>
                    <td><strong class="color-red pl" data-plid="9065"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-17" data-plid="9065"></td>

                    <td><strong>18</strong></td>
                    <td><strong class="color-red pl" data-plid="9066"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-18" data-plid="9066"></td>

                    <td><strong>19</strong></td>
                    <td><strong class="color-red pl" data-plid="9067"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-19" data-plid="9067"></td>

                    <td><strong>20</strong></td>
                    <td><strong class="color-red pl" data-plid="9068"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第一球-20" data-plid="9068"></td>
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
    var playId = 295;
    var playGroupName = '第一球';

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