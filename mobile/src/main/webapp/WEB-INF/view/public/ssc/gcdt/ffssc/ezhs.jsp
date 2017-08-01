<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<div class="cl-603">
    万千和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万千和数-单">
                <span>单</span>
                <span class="pl" data-plid="10702"></span>
            </td>
            <td data-name="万千和数-双">
                <span>双</span>
                <span class="pl" data-plid="10701"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    万百和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万百和数-单">
                <span>单</span>
                <span class="pl" data-plid="10700"></span>
            </td>
            <td data-name="万百和数-双">
                <span>双</span>
                <span class="pl" data-plid="10699"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    万十和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万十和数-单">
                <span>单</span>
                <span class="pl" data-plid="10684"></span>
            </td>
            <td data-name="万十和数-双">
                <span>双</span>
                <span class="pl" data-plid="10683"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    万个和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="万个和数-单">
                <span>单</span>
                <span class="pl" data-plid="10698"></span>
            </td>
            <td data-name="万个和数-双">
                <span>双</span>
                <span class="pl" data-plid="10697"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    千百和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="千百和数-单">
                <span>单</span>
                <span class="pl" data-plid="10696"></span>
            </td>
            <td data-name="千百和数-双">
                <span>双</span>
                <span class="pl" data-plid="10695"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    千十和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="千十和数-单">
                <span>单</span>
                <span class="pl" data-plid="10694"></span>
            </td>
            <td data-name="千十和数-双">
                <span>双</span>
                <span class="pl" data-plid="10693"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    千个和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="千个和数-单">
                <span>单</span>
                <span class="pl" data-plid="10692"></span>
            </td>
            <td data-name="千个和数-双">
                <span>双</span>
                <span class="pl" data-plid="10691"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    百十和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="百十和数-单">
                <span>单</span>
                <span class="pl" data-plid="10690"></span>
            </td>
            <td data-name="百十和数-双">
                <span>双</span>
                <span class="pl" data-plid="10689"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    百个和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="百个和数-单">
                <span>单</span>
                <span class="pl" data-plid="10688"></span>
            </td>
            <td data-name="百个和数-双">
                <span>双</span>
                <span class="pl" data-plid="10687"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    十个和数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="十个和数-单">
                <span>单</span>
                <span class="pl" data-plid="10686"></span>
            </td>
            <td data-name="十个和数-双">
                <span>双</span>
                <span class="pl" data-plid="10685"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 15;
    var playId = 382;
    var playGroupName = '二字和数';

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