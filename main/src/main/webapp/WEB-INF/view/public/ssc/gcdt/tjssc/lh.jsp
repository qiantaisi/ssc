<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
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
                    <td><span class="color-red pl" data-plid="7751"></span></td>
                    <td><span class="color-red pl" data-plid="7752"></span></td>
                    <td><span class="color-red pl" data-plid="7753"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-龙" data-plid="7751"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-和" data-plid="7752"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎2-虎" data-plid="7753"></td>
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
                    <td><span class="color-red pl" data-plid="7754"></span></td>
                    <td><span class="color-red pl" data-plid="7755"></span></td>
                    <td><span class="color-red pl" data-plid="7756"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-龙" data-plid="7754"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-和" data-plid="7755"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎3-虎" data-plid="7756"></td>
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
                    <td><span class="color-red pl" data-plid="7757"></span></td>
                    <td><span class="color-red pl" data-plid="7758"></span></td>
                    <td><span class="color-red pl" data-plid="7759"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-龙" data-plid="7757"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-和" data-plid="7758"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎4-虎" data-plid="7759"></td>
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
                    <td><span class="color-red pl" data-plid="7760"></span></td>
                    <td><span class="color-red pl" data-plid="7761"></span></td>
                    <td><span class="color-red pl" data-plid="7762"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-龙" data-plid="7760"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-和" data-plid="7761"></td>
                    <td><input type="text" class="table-txt" data-name="龙1vs虎5-虎" data-plid="7762"></td>
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
                    <td><span class="color-red pl" data-plid="7763"></span></td>
                    <td><span class="color-red pl" data-plid="7764"></span></td>
                    <td><span class="color-red pl" data-plid="7765"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-龙" data-plid="7763"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-和" data-plid="7764"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎3-虎" data-plid="7765"></td>
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
                    <td><span class="color-red pl" data-plid="7766"></span></td>
                    <td><span class="color-red pl" data-plid="7767"></span></td>
                    <td><span class="color-red pl" data-plid="7768"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-龙" data-plid="7766"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-和" data-plid="7767"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎4-虎" data-plid="7768"></td>
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
                    <td><span class="color-red pl" data-plid="7769"></span></td>
                    <td><span class="color-red pl" data-plid="7770"></span></td>
                    <td><span class="color-red pl" data-plid="7771"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-龙" data-plid="7769"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-和" data-plid="7770"></td>
                    <td><input type="text" class="table-txt" data-name="龙2vs虎5-虎" data-plid="7771"></td>
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
                    <td><span class="color-red pl" data-plid="7772"></span></td>
                    <td><span class="color-red pl" data-plid="7773"></span></td>
                    <td><span class="color-red pl" data-plid="7774"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-龙" data-plid="7772"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-和" data-plid="7773"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎4-虎" data-plid="7774"></td>
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
                    <td><span class="color-red pl" data-plid="7775"></span></td>
                    <td><span class="color-red pl" data-plid="7776"></span></td>
                    <td><span class="color-red pl" data-plid="7777"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-龙" data-plid="7775"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-和" data-plid="7776"></td>
                    <td><input type="text" class="table-txt" data-name="龙3vs虎5-虎" data-plid="7777"></td>
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
                    <td><span class="color-red pl" data-plid="7778"></span></td>
                    <td><span class="color-red pl" data-plid="7779"></span></td>
                    <td><span class="color-red pl" data-plid="7780"></span></td>
                </tr>

                <tr>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-龙" data-plid="7778"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-和" data-plid="7779"></td>
                    <td><input type="text" class="table-txt" data-name="龙4vs虎5-虎" data-plid="7780"></td>
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
<c:import url="../common/subPageCommonJs.jsp"/>

<script>
    var playGroupId = 2;
    var playId = 239;
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