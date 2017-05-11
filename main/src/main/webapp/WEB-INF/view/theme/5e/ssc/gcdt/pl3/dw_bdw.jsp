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
        <div class="hd clearfix">
            <%--<div class="fl">--%>
                <%--快捷金额：--%>
                <%--<input type="text" class="txt"/>--%>
            <%--</div>--%>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="#" class="active">百定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-dw_sdw')">十定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-dw_gdw')">个定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-dw_bsdw')">百十定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-dw_bgdw')">百个定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-dw_sgdw')">十个定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('pl3-dw_bsgdw')">百十个定位</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
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
                    <td><strong class="color-red pl" data-plid="7814"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-0" data-plid="7814"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="7820"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-1" data-plid="7820"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="7826"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-2" data-plid="7826"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="7832"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-3" data-plid="7832"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="7838"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-4" data-plid="7838"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7844"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-5" data-plid="7844"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7850"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-6" data-plid="7850"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7856"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-7" data-plid="7856"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7862"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-8" data-plid="7862"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7868"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-9" data-plid="7868"/></td>
                </tr>

                <tr>
                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="7874"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-大" data-plid="7874"/></td>

                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="7886"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-单" data-plid="7886"/></td>

                    <td>质</td>
                    <td><strong class="color-red pl" data-plid="7898"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-质" data-plid="7898"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="7888"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-小" data-plid="7880"/></td>

                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="7892"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-双" data-plid="7892"/></td>

                    <td>合</td>
                    <td><strong class="color-red pl" data-plid="7904"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百定位-合" data-plid="7904"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="21">
                        <c:import url="../common/toptouzhu.jsp">
                            <c:param name="flagGroup" value="11"/>
                            <c:param name="navGroup" value="1"/>
                        </c:import>
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
        <c:import url="common/bottom_zs.jsp"/>
    </div>

    <div class="fr main-right cl-10 re-cl-10">
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 4;
    var playId = 287;
    var playGroupName = '定位';

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