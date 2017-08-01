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
                    <td><strong class="color-red pl" data-plid="8467"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-1" data-plid="8467"/></td>

                    <td><img src="${resPath}images/2.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8477"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-2" data-plid="8477"/></td>

                    <td><img src="${resPath}images/3.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8487"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-3" data-plid="8487"/></td>

                    <td><img src="${resPath}images/4.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8497"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-4" data-plid="8497"/></td>

                    <td><img src="${resPath}images/5.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8507"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-5" data-plid="8507"/></td>
                </tr>

                <tr>
                    <td><img src="${resPath}images/6.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8517"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-6" data-plid="8517"/></td>

                    <td><img src="${resPath}images/7.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8527"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-7" data-plid="8527"/></td>

                    <td><img src="${resPath}images/8.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8537"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-8" data-plid="8537"/></td>

                    <td><img src="${resPath}images/9.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8547"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-9" data-plid="8547"/></td>

                    <td><img src="${resPath}images/10.png" alt=""/></td>
                    <td><strong class="color-red pl" data-plid="8557"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-10" data-plid="8557"/></td>
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
    var playId = 264;
    var playGroupName = '第五名';

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