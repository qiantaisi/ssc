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
            <c:param name="navGroup" value="2"/>
        </c:import>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">万位</th>
                </tr>
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
                    <td><strong class="color-red pl"  data-plid="6923"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-0" data-plid="6923"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl"  data-plid="6928"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-1" data-plid="6928"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl"  data-plid="6933"></strong></td>
                    <td><input type="text" class="table-txt"  data-name="万位-2" data-plid="6933"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl"  data-plid="6938"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-3" data-plid="6938"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl"  data-plid="6943"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-4" data-plid="6943"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="6948"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-5" data-plid="6948"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl"  data-plid="6953"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-6" data-plid="6953"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl"  data-plid="6958"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-7" data-plid="6958"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl"  data-plid="6963"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-8" data-plid="6963"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl"  data-plid="6968"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-9" data-plid="6968"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">千位</th>
                </tr>
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
                    <td><strong class="color-red pl"  data-plid="6924"></strong></td>
                    <td><input type="text" class="table-txt"  data-name="千位-0" data-plid="6924"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl"  data-plid="6929"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-1" data-plid="6929"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl"  data-plid="6934"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-2" data-plid="6934"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl"  data-plid="6939"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-3" data-plid="6939"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl"  data-plid="6944"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-4" data-plid="6944"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl"  data-plid="6949"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-5" data-plid="6949"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl"  data-plid="6954"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-6" data-plid="6954"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl"  data-plid="6959"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-7" data-plid="6959"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl"  data-plid="6964"></strong></td>
                    <td><input type="text" class="table-txt"  data-name="千位-8" data-plid="6964"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl"  data-plid="6969"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-9" data-plid="6969"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">百位</th>
                </tr>
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
                    <td><strong class="color-red pl"  data-plid="6925"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-0" data-plid="6925"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="6930"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-1" data-plid="6930"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl"  data-plid="6935"></strong></td>
                    <td><input type="text" class="table-txt"  data-name="百位-2" data-plid="6935"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl"  data-plid="6940"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-3" data-plid="6940"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl"  data-plid="6945"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-4" data-plid="6945"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="6950"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-5" data-plid="6950"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl"  data-plid="6955"></strong></td>
                    <td><input type="text" class="table-txt"  data-name="百位-6" data-plid="6955"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl"  data-plid="6960"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-7" data-plid="6960"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl"  data-plid="6965"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-8" data-plid="6965"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl"  data-plid="6970"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-9" data-plid="6970"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">十位</th>
                </tr>
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
                    <td><strong class="color-red pl" data-plid="6926"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-0" data-plid="6926"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl"data-plid="6931"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-1" data-plid="6931"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="6936"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-2" data-plid="6936"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl"  data-plid="6941"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-3" data-plid="6941"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl"  data-plid="6946"></strong></td>
                    <td><input type="text" class="table-txt"  data-name="十位-4" data-plid="6946"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl"  data-plid="6951"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-5" data-plid="6951"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="6956"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-6" data-plid="6956"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl"data-plid="6961"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-7" data-plid="6961"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl"  data-plid="6966"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-8" data-plid="6966"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl"  data-plid="6971"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-9" data-plid="6971"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">个位</th>
                </tr>
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
                    <td><strong class="color-red pl"  data-plid="6927"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-0" data-plid="6927"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl"  data-plid="6932"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-1" data-plid="6932"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="6937"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-2" data-plid="6937"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl"  data-plid="6942"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-3" data-plid="6942"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl"  data-plid="6947"></strong></td>
                    <td><input type="text" class="table-txt"  data-name="个位-4" data-plid="6947"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl"  data-plid="6952"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-5" data-plid="6952"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl"  data-plid="6957"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-6" data-plid="6957"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="6962"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-7" data-plid="6962"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl"  data-plid="6967"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-8" data-plid="6967"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl"  data-plid="6972"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-9" data-plid="6972"/></td>
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
    <div class="fr main-right cl-10"></div>
</div>
<c:import url="../common/subPageCommonJs.jsp" />

<script>

var playGroupId = 3;
var playId = 241;
var playGroupName = '数字盘';

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