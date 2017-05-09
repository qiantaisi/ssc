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
        <div class="table-common clearfix">
            <table width="180" border="1" class="item">
                <tbody>
                <tr>
                    <td>龙1</td>
                    <td>和局</td>
                    <td>虎2</td>
                </tr>

                <tr>
                    <td><span class="color-red pl" data-plid="11550"></span></td>
                    <td><span class="color-red pl" data-plid="11549"></span></td>
                    <td><span class="color-red pl" data-plid="11548"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-龙" data-plid="11550"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-和" data-plid="11549"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-虎" data-plid="11548"></td>
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
                    <td><span class="color-red pl" data-plid="11547"></span></td>
                    <td><span class="color-red pl" data-plid="11546"></span></td>
                    <td><span class="color-red pl" data-plid="11545"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-龙" data-plid="11547"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-和" data-plid="11546"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-虎" data-plid="11545"></td>
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
                    <td><span class="color-red pl" data-plid="11544"></span></td>
                    <td><span class="color-red pl" data-plid="11543"></span></td>
                    <td><span class="color-red pl" data-plid="11542"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-龙" data-plid="11544"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-和" data-plid="11543"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-虎" data-plid="11542"></td>
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
                    <td><span class="color-red pl" data-plid="11541"></span></td>
                    <td><span class="color-red pl" data-plid="11540"></span></td>
                    <td><span class="color-red pl" data-plid="11539"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-龙" data-plid="11541"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-和" data-plid="11540"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-虎" data-plid="11539"></td>
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
                    <td><span class="color-red pl" data-plid="11538"></span></td>
                    <td><span class="color-red pl" data-plid="11537"></span></td>
                    <td><span class="color-red pl" data-plid="11536"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-龙" data-plid="11538"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-和" data-plid="11537"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-虎" data-plid="11536"></td>
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
                    <td><span class="color-red pl" data-plid="11535"></span></td>
                    <td><span class="color-red pl" data-plid="11534"></span></td>
                    <td><span class="color-red pl" data-plid="11533"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-龙" data-plid="11535"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-和" data-plid="11534"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-虎" data-plid="11533"></td>
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
                    <td><span class="color-red pl" data-plid="11532"></span></td>
                    <td><span class="color-red pl" data-plid="11531"></span></td>
                    <td><span class="color-red pl" data-plid="11530"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-龙" data-plid="11532"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-和" data-plid="11531"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-虎" data-plid="11530"></td>
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
                    <td><span class="color-red pl" data-plid="11529"></span></td>
                    <td><span class="color-red pl" data-plid="11528"></span></td>
                    <td><span class="color-red pl" data-plid="11527"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-龙" data-plid="11529"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-和" data-plid="11528"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-虎" data-plid="11527"></td>
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
                    <td><span class="color-red pl" data-plid="11526"></span></td>
                    <td><span class="color-red pl" data-plid="11525"></span></td>
                    <td><span class="color-red pl" data-plid="11524"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-龙" data-plid="11526"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-和" data-plid="11525"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-虎" data-plid="11524"></td>
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
                    <td><span class="color-red pl" data-plid="11523"></span></td>
                    <td><span class="color-red pl" data-plid="11522"></span></td>
                    <td><span class="color-red pl" data-plid="11521"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-龙" data-plid="11523"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-和" data-plid="11522"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-虎" data-plid="11521"></td>
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
    var playGroupId = 17;
    var playId = 414;
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