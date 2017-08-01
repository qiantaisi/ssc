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
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('tjssc-kd_q3')">前三跨度</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('tjssc-kd_z3')" class="active">中三跨度</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('tjssc-kd_h3')">后三跨度</a>
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
                    <td><strong class="color-red pl" data-plid="7635"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三跨度-0" data-plid="7635"></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="7644"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三跨度-1" data-plid="7644"></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="7653"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三跨度-2" data-plid="7653"></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="7662"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三跨度-3" data-plid="7662"></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="7671"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三跨度-4" data-plid="7671"></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7680"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三跨度-5" data-plid="7680"></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7689"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三跨度-6" data-plid="7689"></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7698"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三跨度-7" data-plid="7698"></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7707"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三跨度-8" data-plid="7707"></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7716"></strong></td>
                    <td><input type="text" class="table-txt" data-name="中三跨度-9" data-plid="7716"></td>
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
    var playGroupId = 2;
    var playId = 238;
    var playGroupName = '跨度';

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