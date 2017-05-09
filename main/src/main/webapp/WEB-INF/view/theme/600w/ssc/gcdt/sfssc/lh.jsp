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
                    <td><span class="color-red pl" data-plid="10256"></span></td>
                    <td><span class="color-red pl" data-plid="10255"></span></td>
                    <td><span class="color-red pl" data-plid="10254"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-龙" data-plid="10256"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-和" data-plid="10255"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-虎" data-plid="10254"></td>
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
                    <td><span class="color-red pl" data-plid="10253"></span></td>
                    <td><span class="color-red pl" data-plid="10252"></span></td>
                    <td><span class="color-red pl" data-plid="10251"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-龙" data-plid="10253"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-和" data-plid="10252"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-虎" data-plid="10251"></td>
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
                    <td><span class="color-red pl" data-plid="10250"></span></td>
                    <td><span class="color-red pl" data-plid="10249"></span></td>
                    <td><span class="color-red pl" data-plid="10248"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-龙" data-plid="10250"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-和" data-plid="10249"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-虎" data-plid="10248"></td>
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
                    <td><span class="color-red pl" data-plid="10247"></span></td>
                    <td><span class="color-red pl" data-plid="10246"></span></td>
                    <td><span class="color-red pl" data-plid="10245"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-龙" data-plid="10247"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-和" data-plid="10246"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-虎" data-plid="10245"></td>
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
                    <td><span class="color-red pl" data-plid="10244"></span></td>
                    <td><span class="color-red pl" data-plid="10243"></span></td>
                    <td><span class="color-red pl" data-plid="10242"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-龙" data-plid="10244"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-和" data-plid="10243"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-虎" data-plid="10242"></td>
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
                    <td><span class="color-red pl" data-plid="10241"></span></td>
                    <td><span class="color-red pl" data-plid="10240"></span></td>
                    <td><span class="color-red pl" data-plid="10239"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-龙" data-plid="10241"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-和" data-plid="10240"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-虎" data-plid="10239"></td>
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
                    <td><span class="color-red pl" data-plid="10238"></span></td>
                    <td><span class="color-red pl" data-plid="10237"></span></td>
                    <td><span class="color-red pl" data-plid="10236"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-龙" data-plid="10238"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-和" data-plid="10237"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-虎" data-plid="10236"></td>
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
                    <td><span class="color-red pl" data-plid="10235"></span></td>
                    <td><span class="color-red pl" data-plid="10234"></span></td>
                    <td><span class="color-red pl" data-plid="10233"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-龙" data-plid="10235"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-和" data-plid="10234"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-虎" data-plid="10233"></td>
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
                    <td><span class="color-red pl" data-plid="10232"></span></td>
                    <td><span class="color-red pl" data-plid="10231"></span></td>
                    <td><span class="color-red pl" data-plid="10230"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-龙" data-plid="10232"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-和" data-plid="10231"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-虎" data-plid="10230"></td>
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
                    <td><span class="color-red pl" data-plid="10229"></span></td>
                    <td><span class="color-red pl" data-plid="10228"></span></td>
                    <td><span class="color-red pl" data-plid="10227"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-龙" data-plid="10229"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-和" data-plid="10228"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-虎" data-plid="10227"></td>
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
    var playGroupId = 13;
    var playId = 336;
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