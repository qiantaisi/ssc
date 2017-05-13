<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        </td>

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
                    <td><strong class="color-red pl" data-plid="10517"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10517" data-name="万位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10516"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10516" data-name="万位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10515"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10515" data-name="万位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10514"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10514" data-name="万位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10513"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10513" data-name="万位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10512"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10512" data-name="万位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10511"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10511" data-name="万位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10510"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10510" data-name="万位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10509"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10509" data-name="万位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10508"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10508" data-name="万位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="10507"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10507" data-name="千位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10506"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10506" data-name="千位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10505"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10505" data-name="千位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10504"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10504" data-name="千位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10503"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10503" data-name="千位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10502"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10502" data-name="千位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10501"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10501" data-name="千位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10500"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10500" data-name="千位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10499"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10499" data-name="千位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10498"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10498" data-name="千位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="10497"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10497" data-name="百位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10496"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10496" data-name="百位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10495"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10495" data-name="百位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10494"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10494" data-name="百位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10493"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10493" data-name="百位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10492"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10492" data-name="百位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10491"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10491" data-name="百位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10490"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10490" data-name="百位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10489"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10489" data-name="百位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10488"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10488" data-name="百位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="10487"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10487" data-name="十位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10486"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10486" data-name="十位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10485"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10485" data-name="十位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10484"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10484" data-name="十位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10483"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10483" data-name="十位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10482"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10482" data-name="十位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10481"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10481" data-name="十位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10480"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10480" data-name="十位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10479"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10479" data-name="十位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10478"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10478" data-name="十位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="10477"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10477" data-name="个位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10476"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10476" data-name="个位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10475"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10475" data-name="个位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10474"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10474" data-name="个位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10473"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10473" data-name="个位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10472"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10472" data-name="个位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10471"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10471" data-name="个位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10470"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10470" data-name="个位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10469"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10469" data-name="个位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10468"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10468" data-name="个位-9"/></td>
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
    var playGroupId = 13;
    var playId = 337;
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
