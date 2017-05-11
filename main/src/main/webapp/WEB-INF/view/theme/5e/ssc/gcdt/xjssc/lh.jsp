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

        <div class="table-common clearfix">
            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙1</td>
                    <td>和局</td>
                    <td>虎2</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="7721"></span></td>
                    <td><span class="color-red pl" data-plid="7722"></span></td>
                    <td><span class="color-red pl" data-plid="7723"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-龙" data-plid="7721"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-和" data-plid="7722"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-虎" data-plid="7723"></td>
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
                    <td><span class="color-red pl" data-plid="7724"></span></td>
                    <td><span class="color-red pl" data-plid="7725"></span></td>
                    <td><span class="color-red pl" data-plid="7726"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-龙" data-plid="7724"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-和" data-plid="7725"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-虎" data-plid="7726"></td>
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
                    <td><span class="color-red pl" data-plid="7727"></span></td>
                    <td><span class="color-red pl" data-plid="7728"></span></td>
                    <td><span class="color-red pl" data-plid="7729"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-龙" data-plid="7727"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-和" data-plid="7728"></td>
                    <td><input type="text" class="table-txt"  data-name="龙1vs虎4-虎" data-plid="7729"></td>
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
                    <td><span class="color-red pl" data-plid="7730"></span></td>
                    <td><span class="color-red pl" data-plid="7731"></span></td>
                    <td><span class="color-red pl" data-plid="7732"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-龙" data-plid="7730"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-和" data-plid="7731"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-虎" data-plid="7732"></td>
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
                    <td><span class="color-red pl" data-plid="7733"></span></td>
                    <td><span class="color-red pl" data-plid="7734"></span></td>
                    <td><span class="color-red pl" data-plid="7735"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-龙" data-plid="7733"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-和" data-plid="7734"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-虎" data-plid="7735"></td>
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
                    <td><span class="color-red pl" data-plid="7736"></span></td>
                    <td><span class="color-red pl" data-plid="7737"></span></td>
                    <td><span class="color-red pl" data-plid="7738"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-龙" data-plid="7736"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-和" data-plid="7737"></td>
                    <td><input type="text" class="table-txt"  data-name="龙2vs虎4-虎" data-plid="7738"></td>
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
                    <td><span class="color-red pl" data-plid="7739"></span></td>
                    <td><span class="color-red pl" data-plid="7740"></span></td>
                    <td><span class="color-red pl" data-plid="7741"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-龙" data-plid="7739"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-和" data-plid="7740"></td>
                    <td><input type="text" class="table-txt"  data-name="龙2vs虎5-虎" data-plid="7741"></td>
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
                    <td><span class="color-red pl" data-plid="7742"></span></td>
                    <td><span class="color-red pl" data-plid="7743"></span></td>
                    <td><span class="color-red pl" data-plid="7744"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-龙" data-plid="7742"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-和" data-plid="7743"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-虎" data-plid="7744"></td>
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
                    <td><span class="color-red pl" data-plid="7745"></span></td>
                    <td><span class="color-red pl" data-plid="7746"></span></td>
                    <td><span class="color-red pl" data-plid="7747">></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-龙" data-plid="7745"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-和" data-plid="7746"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-虎" data-plid="7747"></td>
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
                    <td><span class="color-red pl" data-plid="7748"></span></td>
                    <td><span class="color-red pl" data-plid="7749"></span></td>
                    <td><span class="color-red pl" data-plid="7750">></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-龙" data-plid="7748"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-和" data-plid="7749"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-虎" data-plid="7750"></td>
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
    <div class="fr main-right cl-10">
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp" />

<script>

    var playGroupId = 3;
    var playId = 251;
    var playGroupName = '龙虎';
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