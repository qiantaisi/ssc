<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
                    <td><strong class="color-red pl" data-plid="6747"></strong></td>
                    <td><input type="text" class="table-txt" data-name="鼠" data-plid="6747"/></td>
                    <td>
                        <span class="ball-icon ball-10"></span>
                        <span class="ball-icon ball-22"></span>
                        <span class="ball-icon ball-34"></span>
                        <span class="ball-icon ball-46"></span>
                    </td>
                    <td><strong>牛</strong></td>
                    <td><strong class="color-red pl" data-plid="6748"></strong></td>
                    <td><input type="text" class="table-txt" data-name="牛" data-plid="6748"/></td>
                    <td>
                        <span class="ball-icon ball-09"></span>
                        <span class="ball-icon ball-21"></span>
                        <span class="ball-icon ball-33"></span>
                        <span class="ball-icon ball-45"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="6749"></strong></td>
                    <td><input type="text" class="table-txt" data-name="虎" data-plid="6749"/></td>
                    <td>
                        <span class="ball-icon ball-08"></span>
                        <span class="ball-icon ball-20"></span>
                        <span class="ball-icon ball-32"></span>
                        <span class="ball-icon ball-44"></span>
                    </td>
                    <td><strong>兔</strong></td>
                    <td><strong class="color-red pl" data-plid="6750"></strong></td>
                    <td><input type="text" class="table-txt" data-name="兔" data-plid="6750"/></td>
                    <td>
                        <span class="ball-icon ball-07"></span>
                        <span class="ball-icon ball-19"></span>
                        <span class="ball-icon ball-31"></span>
                        <span class="ball-icon ball-43"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>龙</strong></td>
                    <td><strong class="color-red pl" data-plid="6751"></strong></td>
                    <td><input type="text" class="table-txt" data-name="龙" data-plid="6751"/></td>
                    <td>
                        <span class="ball-icon ball-06"></span>
                        <span class="ball-icon ball-18"></span>
                        <span class="ball-icon ball-30"></span>
                        <span class="ball-icon ball-42"></span>
                    </td>
                    <td><strong>蛇</strong></td>
                    <td><strong class="color-red pl" data-plid="6752"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蛇" data-plid="6752"/></td>
                    <td>
                        <span class="ball-icon ball-05"></span>
                        <span class="ball-icon ball-17"></span>
                        <span class="ball-icon ball-29"></span>
                        <span class="ball-icon ball-41"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>马</strong></td>
                    <td><strong class="color-red pl" data-plid="6753"></strong></td>
                    <td><input type="text" class="table-txt" data-name="马" data-plid="6753"/></td>
                    <td>
                        <span class="ball-icon ball-04"></span>
                        <span class="ball-icon ball-16"></span>
                        <span class="ball-icon ball-28"></span>
                        <span class="ball-icon ball-40"></span>
                    </td>
                    <td><strong>羊</strong></td>
                    <td><strong class="color-red pl" data-plid="6754"></strong></td>
                    <td><input type="text" class="table-txt" data-name="羊" data-plid="6754"/></td>
                    <td>
                        <span class="ball-icon ball-03"></span>
                        <span class="ball-icon ball-15"></span>
                        <span class="ball-icon ball-27"></span>
                        <span class="ball-icon ball-39"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>猴</strong></td>
                    <td><strong class="color-red pl" data-plid="6755"></strong></td>
                    <td><input type="text" class="table-txt" data-name="猴" data-plid="6755"/></td>
                    <td>
                        <span class="ball-icon ball-02"></span>
                        <span class="ball-icon ball-14"></span>
                        <span class="ball-icon ball-26"></span>
                        <span class="ball-icon ball-38"></span>
                    </td>
                    <td><strong>鸡</strong></td>
                    <td><strong class="color-red pl" data-plid="6756"></strong></td>
                    <td><input type="text" class="table-txt" data-name="鸡" data-plid="6756"/></td>
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
                    <td><strong class="color-red pl" data-plid="6757"></strong></td>
                    <td><input type="text" class="table-txt" data-name="狗" data-plid="6757"/></td>
                    <td>
                        <span class="ball-icon ball-12"></span>
                        <span class="ball-icon ball-24"></span>
                        <span class="ball-icon ball-36"></span>
                        <span class="ball-icon ball-48"></span>
                    </td>
                    <td><strong>猪</strong></td>
                    <td><strong class="color-red pl" data-plid="6758"></strong></td>
                    <td><input type="text" class="table-txt" data-name="猪" data-plid="6758"/></td>
                    <td>
                        <span class="ball-icon ball-11"></span>
                        <span class="ball-icon ball-23"></span>
                        <span class="ball-icon ball-35"></span>
                        <span class="ball-icon ball-47"></span>
                    </td>
                </tbody>
            </table>

            <table width="100%" border="1">
                <tbody>
                <tr>
                    <td width="38">0尾</td>
                    <td width="40"><strong class="color-red pl" data-plid="6759"></strong></td>
                    <td width="69"><input type="text" class="table-txt" data-name="0尾" data-plid="6759"></td>

                    <td width="38">1尾</td>
                    <td width="40"><strong class="color-red pl" data-plid="6760"></strong></td>
                    <td width="69"><input type="text" class="table-txt" data-name="1尾" data-plid="6760"></td>

                    <td width="38">2尾</td>
                    <td width="40"><strong class="color-red pl" data-plid="6761"></strong></td>
                    <td width="69"><input type="text" class="table-txt" data-name="2尾" data-plid="6761"></td>

                    <td width="38">3尾</td>
                    <td width="40"><strong class="color-red pl" data-plid="6762"></strong></td>
                    <td width="69"><input type="text" class="table-txt" data-name="3尾" data-plid="6762"></td>

                    <td width="38">4尾</td>
                    <td width="40"><strong class="color-red pl" data-plid="6763"></strong></td>
                    <td width="69"><input type="text" class="table-txt" data-name="4尾" data-plid="6763"></td>
                </tr>

                <tr>
                    <td>5尾</td>
                    <td><strong class="color-red pl" data-plid="6764"></strong></td>
                    <td><input type="text" class="table-txt" data-name="5尾" data-plid="6764"></td>

                    <td>6尾</td>
                    <td><strong class="color-red pl" data-plid="6765"></strong></td>
                    <td><input type="text" class="table-txt" data-name="6尾" data-plid="6765"></td>

                    <td>7尾</td>
                    <td><strong class="color-red pl" data-plid="6766"></strong></td>
                    <td><input type="text" class="table-txt" data-name="7尾" data-plid="6766"></td>

                    <td>8尾</td>
                    <td><strong class="color-red pl" data-plid="6767"></strong></td>
                    <td><input type="text" class="table-txt" data-name="8尾" data-plid="6767"></td>

                    <td>9尾</td>
                    <td><strong class="color-red pl" data-plid="6768"></strong></td>
                    <td><input type="text" class="table-txt" data-name="9尾" data-plid="6768"></td>
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
    var playGroupId = 6;
    var playId = 210;
    var playGroupName = '一肖/尾';

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