<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
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
                    <th width="53">号码</th>
                    <th width="62">赔率</th>
                    <th width="67">金额</th>
                    <th>号码</th>
                    <th width="53">号码</th>
                    <th width="62">赔率</th>
                    <th width="67">金额</th>
                    <th>号码</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>鼠</strong></td>
                    <td><strong class="color-red pl" data-plid="13868"></strong></td>
                    <td><input type="text" class="table-txt" data-name="鼠" data-plid="13868"/></td>
                    <td>
                        <span class="ball-icon ball-10"></span>
                        <span class="ball-icon ball-22"></span>
                        <span class="ball-icon ball-34"></span>
                        <span class="ball-icon ball-46"></span>
                    </td>
                    <td><strong>牛</strong></td>
                    <td><strong class="color-red pl" data-plid="13859"></strong></td>
                    <td><input type="text" class="table-txt" data-name="牛" data-plid="13859"/></td>
                    <td>
                        <span class="ball-icon ball-09"></span>
                        <span class="ball-icon ball-21"></span>
                        <span class="ball-icon ball-33"></span>
                        <span class="ball-icon ball-45"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="13864"></strong></td>
                    <td><input type="text" class="table-txt" data-name="虎" data-plid="13864"/></td>
                    <td>
                        <span class="ball-icon ball-08"></span>
                        <span class="ball-icon ball-20"></span>
                        <span class="ball-icon ball-32"></span>
                        <span class="ball-icon ball-44"></span>
                    </td>
                    <td><strong>兔</strong></td>
                    <td><strong class="color-red pl" data-plid="13858"></strong></td>
                    <td><input type="text" class="table-txt" data-name="兔" data-plid="13858"/></td>
                    <td>
                        <span class="ball-icon ball-07"></span>
                        <span class="ball-icon ball-19"></span>
                        <span class="ball-icon ball-31"></span>
                        <span class="ball-icon ball-43"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>龙</strong></td>
                    <td><strong class="color-red pl" data-plid="13869"></strong></td>
                    <td><input type="text" class="table-txt" data-name="龙" data-plid="13869"/></td>
                    <td>
                        <span class="ball-icon ball-06"></span>
                        <span class="ball-icon ball-18"></span>
                        <span class="ball-icon ball-30"></span>
                        <span class="ball-icon ball-42"></span>
                    </td>
                    <td><strong>蛇</strong></td>
                    <td><strong class="color-red pl" data-plid="13865"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蛇" data-plid="13865"/></td>
                    <td>
                        <span class="ball-icon ball-05"></span>
                        <span class="ball-icon ball-17"></span>
                        <span class="ball-icon ball-29"></span>
                        <span class="ball-icon ball-41"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>马</strong></td>
                    <td><strong class="color-red pl" data-plid="13866"></strong></td>
                    <td><input type="text" class="table-txt" data-name="马" data-plid="13866"/></td>
                    <td>
                        <span class="ball-icon ball-04"></span>
                        <span class="ball-icon ball-16"></span>
                        <span class="ball-icon ball-28"></span>
                        <span class="ball-icon ball-40"></span>
                    </td>
                    <td><strong>羊</strong></td>
                    <td><strong class="color-red pl" data-plid="13863"></strong></td>
                    <td><input type="text" class="table-txt" data-name="羊" data-plid="13863"/></td>
                    <td>
                        <span class="ball-icon ball-03"></span>
                        <span class="ball-icon ball-15"></span>
                        <span class="ball-icon ball-27"></span>
                        <span class="ball-icon ball-39"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>猴</strong></td>
                    <td><strong class="color-red pl" data-plid="13862"></strong></td>
                    <td><input type="text" class="table-txt" data-name="猴" data-plid="13862"/></td>
                    <td>
                        <span class="ball-icon ball-02"></span>
                        <span class="ball-icon ball-14"></span>
                        <span class="ball-icon ball-26"></span>
                        <span class="ball-icon ball-38"></span>
                    </td>
                    <td><strong>鸡</strong></td>
                    <td><strong class="color-red pl" data-plid="13867"></strong></td>
                    <td><input type="text" class="table-txt" data-name="鸡" data-plid="13867"/></td>
                    <td>
                        <span class="ball-icon ball-01"></span>
                        <span class="ball-icon ball-13"></span>
                        <span class="ball-icon ball-25"></span>
                        <span class="ball-icon ball-37"></span>
                        <span class="ball-icon ball-49"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>狗</strong></td>
                    <td><strong class="color-red pl" data-plid="13860"></strong></td>
                    <td><input type="text" class="table-txt" data-name="狗" data-plid="13860"/></td>
                    <td>
                        <span class="ball-icon ball-12"></span>
                        <span class="ball-icon ball-24"></span>
                        <span class="ball-icon ball-36"></span>
                        <span class="ball-icon ball-48"></span>
                    </td>
                    <td><strong>猪</strong></td>
                    <td><strong class="color-red pl" data-plid="13861"></strong></td>
                    <td><input type="text" class="table-txt" data-name="猪" data-plid="13861"/></td>
                    <td>
                        <span class="ball-icon ball-11"></span>
                        <span class="ball-icon ball-23"></span>
                        <span class="ball-icon ball-35"></span>
                        <span class="ball-icon ball-47"></span>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <div class="fr main-right cl-10">
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>

<script>
    var playGroupId = 22;
    var playId = 491;
    var playGroupName = '特肖';

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