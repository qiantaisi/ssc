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
                    <td><strong class="color-red pl" data-plid="10793"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10793" data-name="万位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10792"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10792" data-name="万位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10791"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10791" data-name="万位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10790"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10790" data-name="万位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10789"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10789" data-name="万位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10788"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10788" data-name="万位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10787"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10787" data-name="万位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10786"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10786" data-name="万位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10785"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10785" data-name="万位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10784"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10784" data-name="万位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="10783"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10783" data-name="千位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10782"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10782" data-name="千位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10781"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10781" data-name="千位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10780"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10780" data-name="千位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10779"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10779" data-name="千位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10778"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10778" data-name="千位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10777"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10777" data-name="千位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10776"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10776" data-name="千位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10775"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10775" data-name="千位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10774"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10774" data-name="千位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="10773"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10773" data-name="百位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10772"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10772" data-name="百位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10771"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10771" data-name="百位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10770"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10770" data-name="百位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10769"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10769" data-name="百位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10768"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10768" data-name="百位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10767"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10767" data-name="百位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10766"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10766" data-name="百位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10765"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10765" data-name="百位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10764"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10764" data-name="百位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="10763"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10763" data-name="十位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10762"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10762" data-name="十位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10761"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10761" data-name="十位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10760"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10760" data-name="十位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10759"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10759" data-name="十位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10758"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10758" data-name="十位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10757"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10757" data-name="十位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10756"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10756" data-name="十位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10755"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10755" data-name="十位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10754"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10754" data-name="十位-9"/></td>
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
                    <td><strong class="color-red pl" data-plid="10753"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10753" data-name="个位-0"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="10752"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10752" data-name="个位-1"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="10751"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10751" data-name="个位-2"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="10750"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10750" data-name="个位-3"/></td>

                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="10749"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10749" data-name="个位-4"/></td>
                </tr>

                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="10748"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10748" data-name="个位-5"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="10747"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10747" data-name="个位-6"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="10746"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10746" data-name="个位-7"/></td>

                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="10745"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10745" data-name="个位-8"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="10744"></strong></td>
                    <td><input type="text" class="table-txt" data-plid="10744" data-name="个位-9"/></td>
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
    var playGroupId = 15;
    var playId = 380;
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
