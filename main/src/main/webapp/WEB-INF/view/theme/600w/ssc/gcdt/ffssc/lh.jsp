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
        <div class="hd clearfix rehd retoptz" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
        </div>
        <div class="table-common clearfix reclearfix">
            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙1</td>
                    <td>和局</td>
                    <td>虎2</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="10886"></span></td>
                    <td><span class="color-red pl" data-plid="10885"></span></td>
                    <td><span class="color-red pl" data-plid="10884"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-龙" data-plid="10886"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-和" data-plid="10885"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-虎" data-plid="10884"></td>
                </tr>
                </tbody>
            </table>

            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙1</td>
                    <td>和局</td>
                    <td>虎3</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="10883"></span></td>
                    <td><span class="color-red pl" data-plid="10882"></span></td>
                    <td><span class="color-red pl" data-plid="10881"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-龙" data-plid="10883"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-和" data-plid="10882"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-虎" data-plid="10881"></td>
                </tr>
                </tbody>
            </table>

            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙1</td>
                    <td>和局</td>
                    <td>虎4</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="10880"></span></td>
                    <td><span class="color-red pl" data-plid="10879"></span></td>
                    <td><span class="color-red pl" data-plid="10878"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-龙" data-plid="10880"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-和" data-plid="10879"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-虎" data-plid="10878"></td>
                </tr>
                </tbody>
            </table>

            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙1</td>
                    <td>和局</td>
                    <td>虎5</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="10877"></span></td>
                    <td><span class="color-red pl" data-plid="10876"></span></td>
                    <td><span class="color-red pl" data-plid="10875"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-龙" data-plid="10877"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-和" data-plid="10876"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-虎" data-plid="10875"></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="table-common clearfix">
            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙2</td>
                    <td>和局</td>
                    <td>虎3</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="10874"></span></td>
                    <td><span class="color-red pl" data-plid="10873"></span></td>
                    <td><span class="color-red pl" data-plid="10872"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-龙" data-plid="10874"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-和" data-plid="10873"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-虎" data-plid="10872"></td>
                </tr>
                </tbody>
            </table>

            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙2</td>
                    <td>和局</td>
                    <td>虎4</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="10871"></span></td>
                    <td><span class="color-red pl" data-plid="10870"></span></td>
                    <td><span class="color-red pl" data-plid="10869"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-龙" data-plid="10871"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-和" data-plid="10870"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-虎" data-plid="10869"></td>
                </tr>
                </tbody>
            </table>

            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙2</td>
                    <td>和局</td>
                    <td>虎5</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="10868"></span></td>
                    <td><span class="color-red pl" data-plid="10867"></span></td>
                    <td><span class="color-red pl" data-plid="10866"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-龙" data-plid="10868"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-和" data-plid="10867"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-虎" data-plid="10866"></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="table-common clearfix">
            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙3</td>
                    <td>和局</td>
                    <td>虎4</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="10865"></span></td>
                    <td><span class="color-red pl" data-plid="10864"></span></td>
                    <td><span class="color-red pl" data-plid="10863"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-龙" data-plid="10865"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-和" data-plid="10864"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-虎" data-plid="10863"></td>
                </tr>
                </tbody>
            </table>

            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙3</td>
                    <td>和局</td>
                    <td>虎5</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="10862"></span></td>
                    <td><span class="color-red pl" data-plid="10861"></span></td>
                    <td><span class="color-red pl" data-plid="10860"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-龙" data-plid="10862"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-和" data-plid="10861"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-虎" data-plid="10860"></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="table-common clearfix">
            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙4</td>
                    <td>和局</td>
                    <td>虎5</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="10859"></span></td>
                    <td><span class="color-red pl" data-plid="10858"></span></td>
                    <td><span class="color-red pl" data-plid="10857"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-龙" data-plid="10859"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-和" data-plid="10858"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-虎" data-plid="10857"></td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns clean">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>


        <c:import url="common/bottom_zs.jsp"/>
    </div>
    <div class="fr main-right cl-10"></div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>


<script>
    var playGroupId = 15;
    var playId = 390;
    var playGroupName = '龙虎';

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