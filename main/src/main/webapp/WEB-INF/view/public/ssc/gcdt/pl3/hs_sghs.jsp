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
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_bshs')">百十和数</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_bghs')">百个和数</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_sghs')" class="active">十个和数</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-hs_bsghs')">百十个和数</a>
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
                    <td><strong class="color-red pl" data-plid="7950"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-0~4" data-plid="7950"/></td>

                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7956"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-5" data-plid="7956"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7962"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-6" data-plid="7962"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7968"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-7" data-plid="7968"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7974"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-8" data-plid="7974"/></td>
                </tr>

                <tr>
                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7980"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-9" data-plid="7980"/></td>

                    <td><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="7986"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-10" data-plid="7986"/></td>

                    <td><strong>11</strong></td>
                    <td><strong class="color-red pl" data-plid="7992"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-11" data-plid="7992"/></td>

                    <td><strong>12</strong></td>
                    <td><strong class="color-red pl" data-plid="7998"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-12" data-plid="7998"/></td>

                    <td><strong>13</strong></td>
                    <td><strong class="color-red pl" data-plid="8004"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-13" data-plid="8004"/></td>
                </tr>

                <tr>
                    <td><strong>14~18</strong></td>
                    <td><strong class="color-red pl" data-plid="8010"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-14~18" data-plid="8010"/></td>

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
                    <td><strong class="color-red pl" data-plid="8016"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-0" data-plid="8016"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8022"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-1" data-plid="8022"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8028"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-2" data-plid="8028"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8034"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-3" data-plid="8034"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8040"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-4" data-plid="8040"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8046"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-5" data-plid="8046"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8052"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-6" data-plid="8052"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8058"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-7" data-plid="8058"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8064"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-8" data-plid="8064"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8070"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-9" data-plid="8070"/></td>
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

                    <td><strong class="color-red pl" data-plid="8076"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-单" data-plid="8076"/></td>

                    <td><strong class="color-red pl" data-plid="8082"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数-双" data-plid="8082"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>十个和数尾数</strong></td>

                    <td><strong class="color-red pl" data-plid="8088"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-大" data-plid="8088"/></td>

                    <td><strong class="color-red pl" data-plid="8094"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-小" data-plid="8094"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td><strong class="color-red pl" data-plid="8100"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-质" data-plid="8100"/></td>

                    <td><strong class="color-red pl" data-plid="8106"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十个和数尾数-合" data-plid="8106"/></td>
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