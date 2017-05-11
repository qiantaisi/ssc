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
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="9">和值</th>
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
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11847"></strong></td>
                    <td><input type="text" class="table-txt" data-name="3" data-plid="11847"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11846"></strong></td>
                    <td><input type="text" class="table-txt" data-name="4" data-plid="11846"/></td>

                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11845"></strong></td>
                    <td><input type="text" class="table-txt" data-name="5" data-plid="11845"/></td>
                </tr>

                <tr>
                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11844"></strong></td>
                    <td><input type="text" class="table-txt" data-name="6" data-plid="11844"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11843"></strong></td>
                    <td><input type="text" class="table-txt" data-name="7" data-plid="11843"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11842"></strong></td>
                    <td><input type="text" class="table-txt" data-name="8" data-plid="11842"/></td>
                </tr>
                <tr>
                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11841"></strong></td>
                    <td><input type="text" class="table-txt" data-name="9" data-plid="11841"/></td>

                    <td><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="11840"></strong></td>
                    <td><input type="text" class="table-txt" data-name="10" data-plid="11840"/></td>

                    <td><strong>11</strong></td>
                    <td><strong class="color-red pl" data-plid="11839"></strong></td>
                    <td><input type="text" class="table-txt" data-name="11" data-plid="11839"/></td>
                </tr>

                <tr>
                    <td><strong>12</strong></td>
                    <td><strong class="color-red pl" data-plid="11838"></strong></td>
                    <td><input type="text" class="table-txt" data-name="12" data-plid="11838"/></td>

                    <td><strong>13</strong></td>
                    <td><strong class="color-red pl" data-plid="11837"></strong></td>
                    <td><input type="text" class="table-txt" data-name="13" data-plid="11837"/></td>

                    <td><strong>14</strong></td>
                    <td><strong class="color-red pl" data-plid="11836"></strong></td>
                    <td><input type="text" class="table-txt" data-name="14" data-plid="11836"/></td>
                </tr>
                <tr>
                    <td><strong>15</strong></td>
                    <td><strong class="color-red pl" data-plid="11835"></strong></td>
                    <td><input type="text" class="table-txt" data-name="15" data-plid="11835"/></td>

                    <td><strong>16</strong></td>
                    <td><strong class="color-red pl" data-plid="11834"></strong></td>
                    <td><input type="text" class="table-txt" data-name="16" data-plid="11834"/></td>

                    <td><strong>17</strong></td>
                    <td><strong class="color-red pl" data-plid="11833"></strong></td>
                    <td><input type="text" class="table-txt" data-name="17" data-plid="11833"/></td>
                </tr>

                <tr>
                    <td><strong>18</strong></td>
                    <td><strong class="color-red pl" data-plid="11832"></strong></td>
                    <td><input type="text" class="table-txt" data-name="18" data-plid="11832"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11830"></strong></td>
                    <td><input type="text" class="table-txt" data-name="单" data-plid="11830"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11829"></strong></td>
                    <td><input type="text" class="table-txt" data-name="双" data-plid="11829"/></td>
                </tr>

                <tr>
                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="11832"></strong></td>
                    <td><input type="text" class="table-txt" data-name="大" data-plid="11832"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11831"></strong></td>
                    <td><input type="text" class="table-txt" data-name="小" data-plid="11831"/></td>

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
    var playGroupId = 21;
    var playId = 472;
    var playGroupName = '和值';

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