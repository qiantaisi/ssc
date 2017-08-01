<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
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
                    <td><strong class="color-red pl" data-plid="11457"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11457" data-name="万位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11456"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11456" data-name="万位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11455"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11455" data-name="万位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11454"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11454" data-name="万位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11453"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11453" data-name="万位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11452"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11452" data-name="万位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11451"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11451" data-name="万位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11450"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11450" data-name="万位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11449"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11449" data-name="万位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11448"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11448" data-name="万位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="11447"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11447" data-name="千位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11446"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11446" data-name="千位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11445"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11445" data-name="千位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11444"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11444" data-name="千位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11443"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11443" data-name="千位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11442"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11442" data-name="千位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11441"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11441" data-name="千位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11440"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11440" data-name="千位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11439"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11439" data-name="千位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11438"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11438" data-name="千位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="11437"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11437" data-name="百位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11436"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11436" data-name="百位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11435"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11435" data-name="百位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11434"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11434" data-name="百位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11433"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11433" data-name="百位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11432"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11432" data-name="百位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11431"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11431" data-name="百位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11430"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11430" data-name="百位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11429"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11429" data-name="百位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11428"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11428" data-name="百位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="11427"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11427" data-name="十位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11426"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11426" data-name="十位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11425"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11425" data-name="十位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11424"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11424" data-name="十位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11423"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11423" data-name="十位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11422"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11422" data-name="十位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11421"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11421" data-name="十位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11420"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11420" data-name="十位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11419"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11419" data-name="十位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11418"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11418" data-name="十位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="11417"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11417" data-name="个位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11416"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11416" data-name="个位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11415"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11415" data-name="个位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11414"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11414" data-name="个位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11413"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11413" data-name="个位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11412"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11412" data-name="个位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11411"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11411" data-name="个位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11410"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11410" data-name="个位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11409"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11409" data-name="个位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11408"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11408" data-name="个位-9"/></td>
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
    var playGroupId = 17;
    var playId = 404;
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
