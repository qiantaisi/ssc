<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
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
                    <th colspan="16"><strong>其他</strong></th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>和值</strong></td>
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl" data-plid="8582"></strong></td>
                    <td><input type="text" class="table-txt" data-name="和值-单" data-plid="8582"></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="8583"></strong></td>
                    <td><input type="text" class="table-txt" data-name="和值-双" data-plid="8583"></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl" data-plid="8584"></strong></td>
                    <td><input type="text" class="table-txt" data-name="和值-大" data-plid="8584"></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl" data-plid="8585"></strong></td>
                    <td><input type="text" class="table-txt" data-name="和值-小" data-plid="8585"></td>

                    <td><strong>810</strong></td>
                    <td><strong class="color-red pl" data-plid="8586"></strong></td>
                    <td><input type="text" class="table-txt" data-name="和值-810" data-plid="8586"></td>
                </tr>

                <tr>
                    <td><strong>上中下盘</strong></td>
                    <td><strong>上</strong></td>
                    <td><strong class="color-red pl" data-plid="8587"></strong></td>
                    <td><input type="text" class="table-txt" data-name="上中下盘-上" data-plid="8587"></td>

                    <td><strong>中</strong></td>
                    <td><strong class="color-red pl" data-plid="8588"></strong></td>
                    <td><input type="text" class="table-txt" data-name="上中下盘-中" data-plid="8588"></td>

                    <td><strong>下</strong></td>
                    <td><strong class="color-red pl" data-plid="8589"></strong></td>
                    <td><input type="text" class="table-txt" data-name="上中下盘-下" data-plid="8589"></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>奇偶和盘</strong></td>
                    <td><strong>奇</strong></td>
                    <td><strong class="color-red pl" data-plid="8590"></strong></td>
                    <td><input type="text" class="table-txt" data-name="奇偶和盘-奇" data-plid="8590"></td>

                    <td><strong>和</strong></td>
                    <td><strong class="color-red pl" data-plid="8591"></strong></td>
                    <td><input type="text" class="table-txt" data-name="奇偶和盘-和" data-plid="8591"></td>

                    <td><strong>偶</strong></td>
                    <td><strong class="color-red pl" data-plid="8592"></strong></td>
                    <td><input type="text" class="table-txt" data-name="奇偶和盘-偶" data-plid="8592"></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>五行</strong></td>
                    <td><strong>金</strong></td>
                    <td><strong class="color-red pl" data-plid="8593"></strong></td>
                    <td><input type="text" class="table-txt" data-name="五行-金" data-plid="8593"></td>

                    <td><strong>木</strong></td>
                    <td><strong class="color-red pl" data-plid="8594"></strong></td>
                    <td><input type="text" class="table-txt" data-name="五行-木" data-plid="8594"></td>

                    <td><strong>水</strong></td>
                    <td><strong class="color-red pl" data-plid="8595"></strong></td>
                    <td><input type="text" class="table-txt" data-name="五行-水" data-plid="8595"></td>

                    <td><strong>火</strong></td>
                    <td><strong class="color-red pl" data-plid="8596"></strong></td>
                    <td><input type="text" class="table-txt" data-name="五行-火" data-plid="8596"></td>

                    <td><strong>土</strong></td>
                    <td><strong class="color-red pl" data-plid="8597"></strong></td>
                    <td><input type="text" class="table-txt" data-name="五行-土" data-plid="8597"></td>
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
    var playGroupId = 8;
    var playId = 276;
    var playGroupName = '其他';

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