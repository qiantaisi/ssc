<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="cl-603">
   和值
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="和值-单">
                <span>单</span>
                <span class="pl" data-plid="8582"></span>
            </td>
            <td data-name="和值-双">
                <span>双</span>
                <span class="pl" data-plid="8583"></span>
            </td>
            <td data-name="和值-大">
                <span>大</span>
                <span class="pl" data-plid="8584"></span>
            </td>
        </tr>
        <tr>
            <td data-name="和值-小">
                <span>小</span>
                <span class="pl" data-plid="8585"></span>
            </td>
            <td data-name="和值-810">
                <span>810</span>
                <span class="pl" data-plid="8586"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    上中下盘
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="上中下盘-上">
                <span>上</span>
                <span class="pl" data-plid="8587"></span>
            </td>
            <td data-name="上中下盘-中">
                <span>中</span>
                <span class="pl" data-plid="8588"></span>
            </td>
            <td data-name="上中下盘-下">
                <span>下</span>
                <span class="pl" data-plid="8589"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    奇偶和盘
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="奇偶和盘-奇">
                <span>奇</span>
                <span class="pl" data-plid="8590"></span>
            </td>
            <td data-name="奇偶和盘-和">
                <span>和</span>
                <span class="pl" data-plid="8591"></span>
            </td>
            <td data-name="奇偶和盘-偶">
                <span>偶</span>
                <span class="pl" data-plid="8592"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="cl-603">
    五行
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="五行-金">
                <span>金</span>
                <span class="pl" data-plid="8593"></span>
            </td>
            <td data-name="五行-木">
                <span>木</span>
                <span class="pl" data-plid="8594"></span>
            </td>
            <td data-name="五行-水">
                <span>水</span>
                <span class="pl" data-plid="8595"></span>
            </td>
        </tr>
        <tr>
            <td data-name="五行-火">
                <span>火</span>
                <span class="pl" data-plid="8596"></span>
            </td>
            <td data-name="五行-土">
                <span>土</span>
                <span class="pl" data-plid="8597"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 8;
    var playId = 276;
    var playGroupName = '其他';

    function getZhudan(inputMoney, number) {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".cl-604 table tbody tr td.active").each(function() {
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: number,
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: $(this).data("name"),
                playPlId: $(this).find(".pl").data("plid"),
                playPl: $(this).find(".pl").data("pl")
            });
            betForm.totalMoney = add(betForm.totalMoney, inputMoney);
            betForm.totalZhushu = add(betForm.totalZhushu, 1);
        });
        return betForm;
    }

    function getZhushu() {
        return $(".cl-604 table tbody tr td.active").length;
    }
</script>