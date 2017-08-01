<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <th width="64">号码</th>
                    <th width="42">赔率</th>
                    <th>金额</th>
                    <th width="64">号码</th>
                    <th width="42">赔率</th>
                    <th>金额</th>
                    <th width="64">号码</th>
                    <th width="42">赔率</th>
                    <th>金额</th>
                    <th width="64">号码</th>
                    <th width="42">赔率</th>
                    <th>金额</th>
                    <th width="64">号码</th>
                    <th width="42">赔率</th>
                    <th>金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><img src="${resPath}images/1.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8468"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-1" data-plid="8468"/></td>

                    <td><img src="${resPath}images/2.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8478"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-2" data-plid="8478"/></td>

                    <td><img src="${resPath}images/3.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8488"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-3" data-plid="8488"/></td>

                    <td><img src="${resPath}images/4.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8498"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-4" data-plid="8498"/></td>

                    <td><img src="${resPath}images/5.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8508"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-5" data-plid="8508"/></td>
                </tr>

                <tr>
                    <td><img src="${resPath}images/6.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8518"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-6" data-plid="8518"/></td>

                    <td><img src="${resPath}images/7.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8528"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-7" data-plid="8528"/></td>

                    <td><img src="${resPath}images/8.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8538"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-8" data-plid="8538"/></td>

                    <td><img src="${resPath}images/9.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8548"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-9" data-plid="8548"/></td>

                    <td><img src="${resPath}images/10.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8558"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-10" data-plid="8558"/></td>
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
<c:import url="common/bottom_zs.jsp"/>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 9;
    var playId = 265;
    var playGroupName = '第六名';

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