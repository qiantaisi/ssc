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
                    <td><strong class="color-red pl" data-plid="6973"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-0" data-plid="6973"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="6978"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-1" data-plid="6978"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="6983"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-2" data-plid="6983"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="6988"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-3" data-plid="6988"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="6993"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-4" data-plid="6993"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="6998"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-5" data-plid="6998"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7003"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-6" data-plid="7003"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7008"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-7" data-plid="7008"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7013"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-8" data-plid="7013"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7018"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万位-9" data-plid="7018"/></td>
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
                    <td><strong class="color-red pl" data-plid="6974"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-0" data-plid="6974"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="6979"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-1" data-plid="6979"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="6984"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-2" data-plid="6984"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="6989"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-3" data-plid="6989"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="6994"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-4" data-plid="6994"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="6999"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-5" data-plid="6999"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7004"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-6" data-plid="7004"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7009"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-7" data-plid="7009"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7014"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-8" data-plid="7014"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7019"></strong></td>
                    <td><input type="text" class="table-txt" data-name="千位-9" data-plid="7019"/></td>
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
                    <td><strong class="color-red pl" data-plid="6975"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-0" data-plid="6975"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="6980"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-1" data-plid="6980"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="6985"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-2" data-plid="6985"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="6990"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-3" data-plid="6990"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="6995"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-4" data-plid="6995"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7000"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-5" data-plid="7000"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7005"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-6" data-plid="7005"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7010"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-7" data-plid="7010"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7015"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-8" data-plid="7015"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7020"></strong></td>
                    <td><input type="text" class="table-txt" data-name="百位-9" data-plid="7020"/></td>
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
                    <td><strong class="color-red pl" data-plid="6976"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-0" data-plid="6976"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="6981"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-1" data-plid="6981"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="6986"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-2" data-plid="6986"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="6991"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-3" data-plid="6991"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="6996"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-4" data-plid="6996"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7001"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-5" data-plid="7001"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7006"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-6" data-plid="7006"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7011"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-7" data-plid="7011"></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7016"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-8" data-plid="7016"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7021"></strong></td>
                    <td><input type="text" class="table-txt" data-name="十位-9" data-plid="7021"/></td>
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
                    <td><strong class="color-red pl" data-plid="6977"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-0" data-plid="6977"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="6982"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-1" data-plid="6982"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="6987"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-2" data-plid="6987"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="6992"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-3" data-plid="6992"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="6997"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-4" data-plid="6997"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7002"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-5" data-plid="7002"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="7007"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-6" data-plid="7007"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="7012"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-7" data-plid="7012"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="7017"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-8" data-plid="7017"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="7022"></strong></td>
                    <td><input type="text" class="table-txt" data-name="个位-9" data-plid="7022"/></td>
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
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 2;
    var playId = 229;
    var playGroupName = '数字盘';

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