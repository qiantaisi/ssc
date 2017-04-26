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
                    <td><strong class="color-red pl" data-plid="6641"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-单" data-plid="6641"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6642"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-双" data-plid="6642"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6643"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-大" data-plid="6643"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6644"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-小" data-plid="6644"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6651"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-红波" data-plid="6651"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6652"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-蓝波" data-plid="6652"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6653"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-绿波" data-plid="6653"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6645"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-合大" data-plid="6645"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6646"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-合小" data-plid="6646"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6647"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-合单" data-plid="6647"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6648"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-合双" data-plid="6648"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6649"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-尾大" data-plid="6649"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6650"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正一码-尾小" data-plid="6650"></td>
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
                    <td><strong class="color-red pl" data-plid="6654"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-单" data-plid="6654"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6655"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-双" data-plid="6655"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6656"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-大" data-plid="6656"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6657"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-小" data-plid="6657"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6664"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-红波" data-plid="6664"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6665"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-蓝波" data-plid="6665"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6666"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-绿波" data-plid="6666"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6658"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-合大" data-plid="6658"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6659"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-合小" data-plid="6659"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6660"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-合单" data-plid="6660"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6661"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-合双" data-plid="6661"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6662"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-尾大" data-plid="6662"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6663"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正二码-尾小" data-plid="6663"></td>
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
                    <td><strong class="color-red pl" data-plid="6667"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-单" data-plid="6667"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6668"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-双" data-plid="6668"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6669"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-大" data-plid="6669"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6670"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-小" data-plid="6670"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6677"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-红波" data-plid="6677"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6678"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-蓝波" data-plid="6678"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6679"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-绿波" data-plid="6679"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6671"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-合大" data-plid="6671"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6672"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-合小" data-plid="6672"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6673"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-合单" data-plid="6673"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6674"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-合双" data-plid="6674"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6675"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-尾大" data-plid="6675"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6676"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三码-尾小" data-plid="6676"></td>
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
                    <td><strong class="color-red pl" data-plid="6680"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-单" data-plid="6680"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6681"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-双" data-plid="6681"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6682"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-大" data-plid="6682"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6683"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-小" data-plid="6683"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6690"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-红波" data-plid="6690"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6691"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-蓝波" data-plid="6691"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6692"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-绿波" data-plid="6692"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6684"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-合大" data-plid="6684"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6685"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-合小" data-plid="6685"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6686"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-合单" data-plid="6686"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6687"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-合双" data-plid="6687"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6688"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-尾大" data-plid="6688"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6689"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正四码-尾小" data-plid="6689"></td>
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
                    <td><strong class="color-red pl" data-plid="6693"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-单" data-plid="6693"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6694"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-双" data-plid="6694"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6695"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-大" data-plid="6695"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6696"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-小" data-plid="6696"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6703"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-红波" data-plid="6703"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6704"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-蓝波" data-plid="6704"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6705"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-绿波" data-plid="6705"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6697"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-合大" data-plid="6697"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6698"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-合小" data-plid="6698"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6699"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-合单" data-plid="6699"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6700"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-合双" data-plid="6700"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6701"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-尾大" data-plid="6701"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6702"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正五码-尾小" data-plid="6702"></td>
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
                    <td><strong class="color-red pl" data-plid="6706"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-单" data-plid="6706"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6707"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-双" data-plid="6707"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6708"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-大" data-plid="6708"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6709"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-小" data-plid="6709"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6716"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-红波" data-plid="6716"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6717"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-蓝波" data-plid="6717"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6718"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-绿波" data-plid="6718"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6710"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-合大" data-plid="6710"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6711"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-合小" data-plid="6711"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6712"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-合单" data-plid="6712"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6713"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-合双" data-plid="6713"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6714"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-尾大" data-plid="6714"></td>
                </tr>
                <tr>
                    <td><strong class="color-red pl" data-plid="6715"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六码-尾小" data-plid="6715"></td>
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
    var playGroupId = 6;
    var playId = 207;
    var playGroupName = '正码1到6 ';

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