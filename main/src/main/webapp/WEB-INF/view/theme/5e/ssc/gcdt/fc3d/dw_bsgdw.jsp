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
        <div class="hd clearfix">
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_bdw')">百定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_sdw')">十定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_gdw')">个定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_bsdw')">百十定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_bgdw')">百个定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_sgdw')">十个定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('fc3d-dw_bsgdw')" class="active">百十个定位</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="21">百十个定位（中3@<span class="pl red" data-plid="7910"></span>)</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><strong>百位</strong></td>
                    <td><strong class="pl">0</strong></td>
                    <td><input type="checkbox" data-name="0" data-group="百"></td>
                    <td><strong class="pl">1</strong></td>
                    <td><input type="checkbox" data-name="1" data-group="百"></td>
                    <td><strong class="pl">2</strong></td>
                    <td><input type="checkbox" data-name="2" data-group="百"></td>
                    <td><strong class="pl">3</strong></td>
                    <td><input type="checkbox" data-name="3" data-group="百"></td>
                    <td><strong class="pl">4</strong></td>
                    <td><input type="checkbox" data-name="4" data-group="百"></td>
                    <td><strong class="pl">5</strong></td>
                    <td><input type="checkbox" data-name="5" data-group="百"></td>
                    <td><strong class="pl">6</strong></td>
                    <td><input type="checkbox" data-name="6" data-group="百"></td>
                    <td><strong class="pl">7</strong></td>
                    <td><input type="checkbox" data-name="7" data-group="百"></td>
                    <td><strong class="pl">8</strong></td>
                    <td><input type="checkbox" data-name="8" data-group="百"></td>
                    <td><strong class="pl">9</strong></td>
                    <td><input type="checkbox" data-name="9" data-group="百"></td>
                </tr>
                <tr>
                    <td><strong>十位</strong></td>
                    <td><strong class="pl">0</strong></td>
                    <td><input type="checkbox" data-name="0" data-group="十"></td>
                    <td><strong class="pl">1</strong></td>
                    <td><input type="checkbox" data-name="1" data-group="十"></td>
                    <td><strong class="pl">2</strong></td>
                    <td><input type="checkbox" data-name="2" data-group="十"></td>
                    <td><strong class="pl">3</strong></td>
                    <td><input type="checkbox" data-name="3" data-group="十"></td>
                    <td><strong class="pl">4</strong></td>
                    <td><input type="checkbox" data-name="4" data-group="十"></td>
                    <td><strong class="pl">5</strong></td>
                    <td><input type="checkbox" data-name="5" data-group="十"></td>
                    <td><strong class="pl">6</strong></td>
                    <td><input type="checkbox" data-name="6" data-group="十"></td>
                    <td><strong class="pl">7</strong></td>
                    <td><input type="checkbox" data-name="7" data-group="十"></td>
                    <td><strong class="pl">8</strong></td>
                    <td><input type="checkbox" data-name="8" data-group="十"></td>
                    <td><strong class="pl">9</strong></td>
                    <td><input type="checkbox" data-name="9" data-group="十"></td>
                </tr>
                <tr>
                    <td><strong>个位</strong></td>
                    <td><strong class="pl">0</strong></td>
                    <td><input type="checkbox" data-name="0" data-group="个"></td>
                    <td><strong class="pl">1</strong></td>
                    <td><input type="checkbox" data-name="1" data-group="个"></td>
                    <td><strong class="pl">2</strong></td>
                    <td><input type="checkbox" data-name="2" data-group="个"></td>
                    <td><strong class="pl">3</strong></td>
                    <td><input type="checkbox" data-name="3" data-group="个"></td>
                    <td><strong class="pl">4</strong></td>
                    <td><input type="checkbox" data-name="4" data-group="个"></td>
                    <td><strong class="pl">5</strong></td>
                    <td><input type="checkbox" data-name="5" data-group="个"></td>
                    <td><strong class="pl">6</strong></td>
                    <td><input type="checkbox" data-name="6" data-group="个"></td>
                    <td><strong class="pl">7</strong></td>
                    <td><input type="checkbox" data-name="7" data-group="个"></td>
                    <td><strong class="pl">8</strong></td>
                    <td><input type="checkbox" data-name="8" data-group="个"></td>
                    <td><strong class="pl">9</strong></td>
                    <td><input type="checkbox" data-name="9" data-group="个"></td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="21">
                        <c:import url="../common/toptouzhu.jsp">
                            <c:param name="flagGroup" value="11"/>
                            <c:param name="navGroup" value="2"/>
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
<input type="hidden" data-plid="7910" id="pl"/>
<script>
    var playGroupId = 5;
    var playId = 252;
    var playGroupName = '定位';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        var bai = [], shi = [], ge = [];
        $("[data-group='百']").each(function () {
            if ($(this).is(":checked")) {
                bai.push($(this).data("name"));
            }
        });
        $("[data-group='十']").each(function () {
            if ($(this).is(":checked")) {
                shi.push($(this).data("name"));
            }
        });
        $("[data-group='个']").each(function () {
            if ($(this).is(":checked")) {
                ge.push($(this).data("name"));
            }
        });

        if (bai.length == 0 || shi.length == 0 || ge.length == 0) {
            Tools.error("至少选择一组号码");
            return;
        }

        var inputMoney = $("#inputMoney").val();
        if (typeof inputMoney == 'undefined' || !inputMoney) {
            Tools.toast("请输入正确的金额");
            return;
        }
        $.each(bai, function (index, value) {
            $.each(shi, function (index2, value2) {
                $.each(ge, function (index3, value3) {
                    betForm.sscBetList.push({
                        playGroupName: playGroupName,
                        playGroupId: playGroupId,
                        number: $("#number").data("number"),
                        playId: playId,
                        zhushu: 1,
                        perMoney: inputMoney,
                        content: '百十个定位-' + value + ',' + value2 + ',' + value3,
                        playPlId: $("#pl").data("plid"),
                        playPl: $("#pl").data("pl")
                    });
                    betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                    betForm.totalZhushu = add(betForm.totalZhushu, 1);
                });
            });
        });
        return betForm;
    }

    function checkZhudan() {
        var bai = [], shi = [], ge = [];
        $("[data-group='百']").each(function () {
            if ($(this).is(":checked")) {
                bai.push($(this).data("name"));
            }
        });
        $("[data-group='十']").each(function () {
            if ($(this).is(":checked")) {
                shi.push($(this).data("name"));
            }
        });
        $("[data-group='个']").each(function () {
            if ($(this).is(":checked")) {
                ge.push($(this).data("name"));
            }
        });

        if (bai.length == 0 || shi.length == 0 || ge.length == 0) {
            return false;
        }
        return true;
    }
</script>