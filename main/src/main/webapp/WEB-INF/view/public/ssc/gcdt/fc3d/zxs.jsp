<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="lot-content clearfix">
    <div class="fl main-left re-main-left">
        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="10"><strong>组选三@<span id="pl" class="pl red"></span></strong></strong> (请选择5个及以上号码)
                    </th>
                </tr>
                <tr>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>0</strong></td>
                    <td><input type="checkbox" data-name="0"/></td>

                    <td><strong>1</strong></td>
                    <td><input type="checkbox" data-name="1"/></td>

                    <td><strong>2</strong></td>
                    <td><input type="checkbox" data-name="2"/></td>

                    <td><strong>3</strong></td>
                    <td><input type="checkbox" data-name="3"/></td>

                    <td><strong>4</strong></td>
                    <td><input type="checkbox" data-name="4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><input type="checkbox" data-name="5"/></td>

                    <td><strong>6</strong></td>
                    <td><input type="checkbox" data-name="6"/></td>

                    <td><strong>7</strong></td>
                    <td><input type="checkbox" data-name="7"/></td>

                    <td><strong>8</strong></td>
                    <td><input type="checkbox" data-name="8"/></td>

                    <td><strong>9</strong></td>
                    <td><input type="checkbox" data-name="9"/></td>
                </tr>
                </tbody>

                <tfoot>
                <tr>
                    <td colspan="10">
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

    <div class="fr main-right">
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<input type="hidden" data-plid="8175" id="pl5"/>
<input type="hidden" data-plid="8176" id="pl6"/>
<input type="hidden" data-plid="8177" id="pl7"/>
<input type="hidden" data-plid="8178" id="pl8"/>
<input type="hidden" data-plid="8179" id="pl9"/>
<input type="hidden" data-plid="8180" id="pl10"/>
<script>
    var playGroupId = 5;
    var playId = 255;
    var playGroupName = '组选三';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        var arr = [];
        $(".main-left .table-common input").each(function () {
            if ($(this).is(":checked")) {
                arr.push($(this).data('name'));
            }
        });

        if (arr.length < 5) {
            Tools.error('请选择5个及以上号码');
            return;
        }

        var inputMoney = $("#inputMoney").val();
        if (typeof inputMoney == 'undefined' || !inputMoney) {
            Tools.toast("请输入正确的金额");
            return;
        }
        betForm.sscBetList.push({
            playGroupName: playGroupName,
            playGroupId: playGroupId,
            number: $("#number").data("number"),
            playId: playId,
            zhushu: 1,
            perMoney: inputMoney,
            content: arr.join(","),
            playPlId: $('#pl' + arr.length).data("plid"),
            playPl: $('#pl' + arr.length).data("pl")
        });
        betForm.totalMoney = add(betForm.totalMoney, inputMoney);
        betForm.totalZhushu = add(betForm.totalZhushu, 1);
        return betForm;
    }

    function checkZhudan() {
        var arr = [];
        $(".main-left .table-common input").each(function () {
            if ($(this).is(":checked")) {
                arr.push($(this).data('name'));
            }
        });

        if (arr.length >= 5) {
            $("#pl").html($('#pl' + arr.length).data("pl"));
        } else {
            $("#pl").html('');
        }
        return true;
    }

    $(function () {
        $(".table-common input[type='checkbox']").change(function () {
            checkZhudan();
        });
    });
</script>