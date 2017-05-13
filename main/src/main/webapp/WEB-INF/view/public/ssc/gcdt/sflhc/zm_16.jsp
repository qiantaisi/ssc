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
    <div class="fl main-left" style="width:auto; min-width: 760px; margin-left:75px;">
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

        <div class="table-common clearfix">
            <table border="1" class="item">
                <thead>
                <tr>
                    <th width="38">...</th>
                </tr>
                <tr>
                    <th width="38">类型</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td>单</td>
                </tr>
                <tr>
                    <td>双</td>
                </tr>
                <tr>
                    <td>大</td>
                </tr>
                <tr>
                    <td>小</td>
                </tr>
                <tr>
                    <td class="redBg">红波</td>
                </tr>
                <tr>
                    <td class="blueBg">蓝波</td>
                </tr>
                <tr>
                    <td class="greenBg">绿波</td>
                </tr>
                <tr>
                    <td>合大</td>
                </tr>
                <tr>
                    <td>合小</td>
                </tr>
                <tr>
                    <td>合单</td>
                </tr>
                <tr>
                    <td>合双</td>
                </tr>
                <tr>
                    <td>尾大</td>
                </tr>
                <tr>
                    <td>尾小</td>
                </tr>
                </tbody>
            </table>

            <table border="1" class="item">
                <thead>
                <tr>
                    <th colspan="2" width="">正一码</th>
                </tr>
                <tr>
                    <th width="48">赔率</th>
                    <th width="64">金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong class="color-red pl" data-plid="13732"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-单" data-plid="13732"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13733"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-双" data-plid="13733"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13738"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-大" data-plid="13738"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13739"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-小" data-plid="13739"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13742"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-红波" data-plid="13742"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13744"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-蓝波" data-plid="13744"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13743"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-绿波" data-plid="13743"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13736"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-合大" data-plid="13736"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13737"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-合小" data-plid="13737"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13734"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-合单" data-plid="13734"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13735"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-合双" data-plid="13735"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13740"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-尾大" data-plid="13740"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13741"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-尾小" data-plid="13741"></td>
                </tr>
                </tbody>
            </table>

            <table border="1" class="item">
                <thead>
                <tr>
                    <th colspan="2" width="">正二码</th>
                </tr>
                <tr>
                    <th width="48">赔率</th>
                    <th width="64">金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong class="color-red pl" data-plid="13745"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-单" data-plid="13745"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13746"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-双" data-plid="13746"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13751"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-大" data-plid="13751"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13752"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-小" data-plid="13752"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13755"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-红波" data-plid="13755"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13757"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-蓝波" data-plid="13757"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13756"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-绿波" data-plid="13756"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13749"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-合大" data-plid="13749"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13750"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-合小" data-plid="13750"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13747"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-合单" data-plid="13747"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13748"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-合双" data-plid="13748"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13753"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-尾大" data-plid="13753"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13754"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-尾小" data-plid="13754"></td>
                </tr>
                </tbody>
            </table>

            <table border="1" class="item">
                <thead>
                <tr>
                    <th colspan="2" width="">正三码</th>
                </tr>
                <tr>
                    <th width="48">赔率</th>
                    <th width="64">金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong class="color-red pl" data-plid="13758"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-单" data-plid="13758"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13759"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-双" data-plid="13759"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13764"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-大" data-plid="13764"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13765"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-小" data-plid="13765"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13768"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-红波" data-plid="13768"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13770"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-蓝波" data-plid="13770"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13769"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-绿波" data-plid="13769"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13762"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-合大" data-plid="13762"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13763"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-合小" data-plid="13763"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13760"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-合单" data-plid="13760"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13761"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-合双" data-plid="13761"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13766"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-尾大" data-plid="13766"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13767"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-尾小" data-plid="13767"></td>
                </tr>
                </tbody>
            </table>

            <table border="1" class="item">
                <thead>
                <tr>
                    <th colspan="2" width="">正四码</th>
                </tr>
                <tr>
                    <th width="48">赔率</th>
                    <th width="64">金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong class="color-red pl" data-plid="13771"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-单" data-plid="13771"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13772"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-双" data-plid="13772"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13777"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-大" data-plid="13777"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13778"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-小" data-plid="13778"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13781"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-红波" data-plid="13781"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13783"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-蓝波" data-plid="13783"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13782"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-绿波" data-plid="13782"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13775"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-合大" data-plid="13775"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13776"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-合小" data-plid="13776"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13773"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-合单" data-plid="13773"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13774"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-合双" data-plid="13774"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13779"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-尾大" data-plid="13779"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13780"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-尾小" data-plid="13780"></td>
                </tr>
                </tbody>
            </table>

            <table border="1" class="item">
                <thead>
                <tr>
                    <th colspan="2" width="">正五码</th>
                </tr>
                <tr>
                    <th width="48">赔率</th>
                    <th width="64">金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong class="color-red pl" data-plid="13784"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-单" data-plid="13784"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13785"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-双" data-plid="13785"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13790"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-大" data-plid="13790"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13791"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-小" data-plid="13791"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13794"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-红波" data-plid="13794"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13796"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-蓝波" data-plid="13796"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13795"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-绿波" data-plid="13795"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13788"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-合大" data-plid="13788"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13789"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-合小" data-plid="13789"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13786"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-合单" data-plid="13786"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13787"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-合双" data-plid="13787"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13792"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-尾大" data-plid="13792"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13793"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-尾小" data-plid="13793"></td>
                </tr>
                </tbody>
            </table>

            <table border="1" class="item">
                <thead>
                <tr>
                    <th colspan="2" width="">正六码</th>
                </tr>
                <tr>
                    <th width="48">赔率</th>
                    <th width="64">金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong class="color-red pl" data-plid="13797"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-单" data-plid="13797"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13798"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-双" data-plid="13798"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13803"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-大" data-plid="13803"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13804"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-小" data-plid="13804"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13807"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-红波" data-plid="13807"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13809"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-蓝波" data-plid="13809"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13808"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-绿波" data-plid="13808"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13801"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-合大" data-plid="13801"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13802"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-合小" data-plid="13802"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13799"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-合单" data-plid="13799"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13800"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-合双" data-plid="13800"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13805"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-尾大" data-plid="13805"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="13806"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-尾小" data-plid="13806"></td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <%--<div class="fr main-right cl-9">--%>
    <%--</div>--%>

</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 22;
    var playId = 480;
    var playGroupName = '正码1-6';

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