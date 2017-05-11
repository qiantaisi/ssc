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
                    <td><span class="color-red pl" data-plid="11218"></span></td>
                    <td><span class="color-red pl" data-plid="11217"></span></td>
                    <td><span class="color-red pl" data-plid="11216"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-龙" data-plid="11218"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-和" data-plid="11217"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-虎" data-plid="11216"></td>
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
                    <td><span class="color-red pl" data-plid="11215"></span></td>
                    <td><span class="color-red pl" data-plid="11214"></span></td>
                    <td><span class="color-red pl" data-plid="11213"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-龙" data-plid="11215"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-和" data-plid="11214"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-虎" data-plid="11213"></td>
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
                    <td><span class="color-red pl" data-plid="11212"></span></td>
                    <td><span class="color-red pl" data-plid="11211"></span></td>
                    <td><span class="color-red pl" data-plid="11210"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-龙" data-plid="11212"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-和" data-plid="11211"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-虎" data-plid="11210"></td>
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
                    <td><span class="color-red pl" data-plid="11209"></span></td>
                    <td><span class="color-red pl" data-plid="11208"></span></td>
                    <td><span class="color-red pl" data-plid="11207"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-龙" data-plid="11209"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-和" data-plid="11208"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-虎" data-plid="11207"></td>
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
                    <td><span class="color-red pl" data-plid="11206"></span></td>
                    <td><span class="color-red pl" data-plid="11205"></span></td>
                    <td><span class="color-red pl" data-plid="11204"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-龙" data-plid="11206"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-和" data-plid="11205"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-虎" data-plid="11204"></td>
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
                    <td><span class="color-red pl" data-plid="11203"></span></td>
                    <td><span class="color-red pl" data-plid="11202"></span></td>
                    <td><span class="color-red pl" data-plid="11201"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-龙" data-plid="11203"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-和" data-plid="11202"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-虎" data-plid="11201"></td>
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
                    <td><span class="color-red pl" data-plid="11200"></span></td>
                    <td><span class="color-red pl" data-plid="11199"></span></td>
                    <td><span class="color-red pl" data-plid="11198"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-龙" data-plid="11200"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-和" data-plid="11199"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-虎" data-plid="11198"></td>
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
                    <td><span class="color-red pl" data-plid="11197"></span></td>
                    <td><span class="color-red pl" data-plid="11196"></span></td>
                    <td><span class="color-red pl" data-plid="11195"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-龙" data-plid="11197"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-和" data-plid="11196"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-虎" data-plid="11195"></td>
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
                    <td><span class="color-red pl" data-plid="11194"></span></td>
                    <td><span class="color-red pl" data-plid="11193"></span></td>
                    <td><span class="color-red pl" data-plid="11192"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-龙" data-plid="11194"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-和" data-plid="11193"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-虎" data-plid="11192"></td>
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
                    <td><span class="color-red pl" data-plid="11191"></span></td>
                    <td><span class="color-red pl" data-plid="11190"></span></td>
                    <td><span class="color-red pl" data-plid="11189"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-龙" data-plid="11191"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-和" data-plid="11190"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-虎" data-plid="11189"></td>
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
    var playGroupId = 16;
    var playId = 402;
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