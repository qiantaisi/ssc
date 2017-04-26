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
                    <td><strong class="color-red pl" data-plid="11796"></strong></td>
                    <td><input type="text" class="table-txt" data-name="3" data-plid="11796"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11795"></strong></td>
                    <td><input type="text" class="table-txt" data-name="4" data-plid="11795"/></td>

                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11794"></strong></td>
                    <td><input type="text" class="table-txt" data-name="5" data-plid="11794"/></td>
                </tr>

                <tr>
                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11793"></strong></td>
                    <td><input type="text" class="table-txt" data-name="6" data-plid="11793"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11792"></strong></td>
                    <td><input type="text" class="table-txt" data-name="7" data-plid="11792"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11791"></strong></td>
                    <td><input type="text" class="table-txt" data-name="8" data-plid="11791"/></td>
                </tr>
                <tr>
                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11790"></strong></td>
                    <td><input type="text" class="table-txt" data-name="9" data-plid="11790"/></td>

                    <td><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="11789"></strong></td>
                    <td><input type="text" class="table-txt" data-name="10" data-plid="11789"/></td>

                    <td><strong>11</strong></td>
                    <td><strong class="color-red pl" data-plid="11788"></strong></td>
                    <td><input type="text" class="table-txt" data-name="11" data-plid="11788"/></td>
                </tr>

                <tr>
                    <td><strong>12</strong></td>
                    <td><strong class="color-red pl" data-plid="11787"></strong></td>
                    <td><input type="text" class="table-txt" data-name="12" data-plid="11787"/></td>

                    <td><strong>13</strong></td>
                    <td><strong class="color-red pl" data-plid="11786"></strong></td>
                    <td><input type="text" class="table-txt" data-name="13" data-plid="11786"/></td>

                    <td><strong>14</strong></td>
                    <td><strong class="color-red pl" data-plid="11785"></strong></td>
                    <td><input type="text" class="table-txt" data-name="14" data-plid="11785"/></td>
                </tr>
                <tr>
                    <td><strong>15</strong></td>
                    <td><strong class="color-red pl" data-plid="11784"></strong></td>
                    <td><input type="text" class="table-txt" data-name="15" data-plid="11784"/></td>

                    <td><strong>16</strong></td>
                    <td><strong class="color-red pl" data-plid="11783"></strong></td>
                    <td><input type="text" class="table-txt" data-name="16" data-plid="11783"/></td>

                    <td><strong>17</strong></td>
                    <td><strong class="color-red pl" data-plid="11782"></strong></td>
                    <td><input type="text" class="table-txt" data-name="17" data-plid="11782"/></td>
                </tr>

                <tr>
                    <td><strong>18</strong></td>
                    <td><strong class="color-red pl" data-plid="11781"></strong></td>
                    <td><input type="text" class="table-txt" data-name="18" data-plid="11781"/></td>

                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="11778"></strong></td>
                    <td><input type="text" class="table-txt" data-name="单" data-plid="11778"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="11777"></strong></td>
                    <td><input type="text" class="table-txt" data-name="双" data-plid="11777"/></td>
                </tr>

                <tr>
                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="11780"></strong></td>
                    <td><input type="text" class="table-txt" data-name="大" data-plid="11780"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="11779"></strong></td>
                    <td><input type="text" class="table-txt" data-name="小" data-plid="11779"/></td>

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
    var playGroupId = 20;
    var playId = 463;
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