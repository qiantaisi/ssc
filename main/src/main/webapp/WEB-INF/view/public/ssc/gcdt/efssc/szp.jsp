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
                    <td><strong class="color-red pl" data-plid="11125"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11125" data-name="万位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11124"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11124" data-name="万位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11123"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11123" data-name="万位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11122"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11122" data-name="万位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11121"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11121" data-name="万位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11120"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11120" data-name="万位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11119"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11119" data-name="万位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11118"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11118" data-name="万位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11117"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11117" data-name="万位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11116"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11116" data-name="万位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="11115"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11115" data-name="千位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11114"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11114" data-name="千位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11113"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11113" data-name="千位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11112"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11112" data-name="千位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11111"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11111" data-name="千位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11110"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11110" data-name="千位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11109"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11109" data-name="千位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11108"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11108" data-name="千位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11107"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11107" data-name="千位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11106"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11106" data-name="千位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="11105"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11105" data-name="百位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11104"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11104" data-name="百位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11103"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11103" data-name="百位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11102"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11102" data-name="百位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11101"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11101" data-name="百位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11100"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11100" data-name="百位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11099"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11099" data-name="百位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11098"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11098" data-name="百位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11097"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11097" data-name="百位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11096"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11096" data-name="百位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="11095"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11095" data-name="十位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11094"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11094" data-name="十位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11093"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11093" data-name="十位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11092"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11092" data-name="十位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11091"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11091" data-name="十位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11090"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11090" data-name="十位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11089"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11089" data-name="十位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11088"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11088" data-name="十位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11087"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11087" data-name="十位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11086"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11086" data-name="十位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="11085"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11085" data-name="个位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="11084"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11084" data-name="个位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="11083"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11083" data-name="个位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="11082"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11082" data-name="个位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="11081"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11081" data-name="个位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="11080"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11080" data-name="个位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="11079"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11079" data-name="个位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="11078"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11078" data-name="个位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="11077"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11077" data-name="个位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="11076"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="11076" data-name="个位-9"/></td>
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
    var playGroupId = 16;
    var playId = 392;
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
