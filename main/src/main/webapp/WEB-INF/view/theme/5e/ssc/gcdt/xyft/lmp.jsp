<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!-- content -->
<div class="lot-content clearfix">
    <div class="fl main-left">
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

        <div class="table-common">
            <table class="xyft-table" style="width:100%!important;">
                <thead>
                <tr>
                    <th>&nbsp;</th>
                    <th colspan="2">大</th>
                    <th colspan="2">小</th>
                    <th colspan="2">单</th>
                    <th colspan="2">双</th>
                    <th colspan="2">龙</th>
                    <th colspan="2">虎</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>冠军</strong></td>
                    <td><strong class="color-red pl" data-plid="9922"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-大" data-plid="9922"/></td>
                    <td><strong class="color-red pl" data-plid="9923"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-小" data-plid="9923"/></td>
                    <td><strong class="color-red pl" data-plid="9924"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-单" data-plid="9924"/></td>
                    <td><strong class="color-red pl" data-plid="9925"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-双" data-plid="9925"/></td>
                    <td><strong class="color-red pl" data-plid="9926"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-龙" data-plid="9926"/></td>
                    <td><strong class="color-red pl" data-plid="9927"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-虎" data-plid="9927"/></td>
                </tr>

                <tr>
                    <td><strong>亚军</strong></td>
                    <td><strong class="color-red pl" data-plid="9928"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-大" data-plid="9928"/></td>
                    <td><strong class="color-red pl" data-plid="9929"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-小" data-plid="9929"/></td>
                    <td><strong class="color-red pl" data-plid="9930"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-单" data-plid="9930"/></td>
                    <td><strong class="color-red pl" data-plid="9931"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-双" data-plid="9931"/></td>
                    <td><strong class="color-red pl" data-plid="9932"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-龙" data-plid="9932"/></td>
                    <td><strong class="color-red pl" data-plid="9933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-虎" data-plid="9933"/></td>
                </tr>

                <tr>
                    <td><strong>第三名</strong></td>
                    <td><strong class="color-red pl" data-plid="9934"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-大" data-plid="9934"/></td>
                    <td><strong class="color-red pl" data-plid="9935"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-小" data-plid="9935"/></td>
                    <td><strong class="color-red pl" data-plid="9936"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-单" data-plid="9936"/></td>
                    <td><strong class="color-red pl" data-plid="9937"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-双" data-plid="9937"/></td>
                    <td><strong class="color-red pl" data-plid="9938"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-龙" data-plid="9938"/></td>
                    <td><strong class="color-red pl" data-plid="9939"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-虎" data-plid="9939"/></td>
                </tr>

                <tr>
                    <td><strong>第四名</strong></td>
                    <td><strong class="color-red pl" data-plid="9940"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-大" data-plid="9940"/></td>
                    <td><strong class="color-red pl" data-plid="9941"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-小" data-plid="9941"/></td>
                    <td><strong class="color-red pl" data-plid="9942"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-单" data-plid="9942"/></td>
                    <td><strong class="color-red pl" data-plid="9943"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-双" data-plid="9943"/></td>
                    <td><strong class="color-red pl" data-plid="9944"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-龙" data-plid="9944"/></td>
                    <td><strong class="color-red pl" data-plid="9945"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-虎" data-plid="9945"/></td>
                </tr>

                <tr>
                    <td><strong>第五名</strong></td>
                    <td><strong class="color-red pl" data-plid="9946"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-大" data-plid="9946"/></td>
                    <td><strong class="color-red pl" data-plid="9947"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-小" data-plid="9947"/></td>
                    <td><strong class="color-red pl" data-plid="9948"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-单" data-plid="9948"/></td>
                    <td><strong class="color-red pl" data-plid="9949"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-双" data-plid="9949"/></td>
                    <td><strong class="color-red pl" data-plid="9950"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-龙" data-plid="9950"/></td>
                    <td><strong class="color-red pl" data-plid="9951"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-虎" data-plid="9951"/></td>
                </tr>

                <tr>
                    <td><strong>第六名</strong></td>
                    <td><strong class="color-red pl" data-plid="9952"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-大" data-plid="9952"/></td>
                    <td><strong class="color-red pl" data-plid="9953"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-小" data-plid="9953"/></td>
                    <td><strong class="color-red pl" data-plid="9954"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-单" data-plid="9954"/></td>
                    <td><strong class="color-red pl" data-plid="9955"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-双" data-plid="9955"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第七名</strong></td>
                    <td><strong class="color-red pl" data-plid="9958"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-大" data-plid="9958"/></td>
                    <td><strong class="color-red pl" data-plid="9959"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-小" data-plid="9959"/></td>
                    <td><strong class="color-red pl" data-plid="9960"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-单" data-plid="9960"/></td>
                    <td><strong class="color-red pl" data-plid="9961"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-双" data-plid="9961"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第八名</strong></td>
                    <td><strong class="color-red pl" data-plid="9964"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-大" data-plid="9964"/></td>
                    <td><strong class="color-red pl" data-plid="9965"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-小" data-plid="9965"/></td>
                    <td><strong class="color-red pl" data-plid="9966"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-单" data-plid="9966"/></td>
                    <td><strong class="color-red pl" data-plid="9967"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-双" data-plid="9967"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第九名</strong></td>
                    <td><strong class="color-red pl" data-plid="9970"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-大" data-plid="9970"/></td>
                    <td><strong class="color-red pl" data-plid="9971"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-小" data-plid="9971"/></td>
                    <td><strong class="color-red pl" data-plid="9972"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-单" data-plid="9972"/></td>
                    <td><strong class="color-red pl" data-plid="9973"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-双" data-plid="9973"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第十名</strong></td>
                    <td><strong class="color-red pl" data-plid="9976"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-大" data-plid="9976"/></td>
                    <td><strong class="color-red pl" data-plid="9977"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-小" data-plid="9977"/></td>
                    <td><strong class="color-red pl" data-plid="9978"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-单" data-plid="9978"/></td>
                    <td><strong class="color-red pl" data-plid="9979"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-双" data-plid="9979"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>冠亚和</strong></td>
                    <td><strong class="color-red pl" data-plid="10160"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠亚和-大" data-plid="10160"/></td>
                    <td><strong class="color-red pl" data-plid="10161"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠亚和-小" data-plid="10161"/></td>
                    <td><strong class="color-red pl" data-plid="10162"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠亚和-单" data-plid="10162"/></td>
                    <td><strong class="color-red pl" data-plid="10163"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠亚和-双" data-plid="10163"/></td>
                    <td>&nbsp;</td>
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
    </div>

    <div class="fr main-right cl-10">
    </div>
</div>
<c:import url="common/bottom_zs.jsp"/>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 14;
    var playId = 318;
    var playGroupName = '双面';

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