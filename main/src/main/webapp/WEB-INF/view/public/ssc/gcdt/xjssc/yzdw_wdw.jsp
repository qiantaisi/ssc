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
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix"  style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('xjssc-yzdw_wdw')" class="active">万定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('xjssc-yzdw_qdw')">千定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('xjssc-yzdw_bdw')">百定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('xjssc-yzdw_sdw')">十定位</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('xjssc-yzdw_gdw')">个定位</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
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
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>0</strong></td>
                    <td><strong class="color-red pl"  data-plid="7083"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-0" data-plid="7083"/></td>

                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl"  data-plid="7098"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-1" data-plid="7098"/></td>

                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl"  data-plid="7113"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-2" data-plid="7113"/></td>

                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="7128"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-3" data-plid="7128"/></td>
                </tr>

                <tr>
                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl"  data-plid="7143"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-4" data-plid="7143"/></td>

                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="7158"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-5" data-plid="7158"/></td>

                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl"  data-plid="7173"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-6" data-plid="7173"/></td>

                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl"  data-plid="7188"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-7" data-plid="7188"/></td>
                </tr>
                <tr>
                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl"  data-plid="7203"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-8" data-plid="7203"/></td>

                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl"  data-plid="7218"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-9" data-plid="7218"/></td>

                    <td><strong>大</strong></td>
                    <td><strong class="color-red pl"  data-plid="7233"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-大" data-plid="7233"/></td>

                    <td><strong>小</strong></td>
                    <td><strong class="color-red pl"  data-plid="7248"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-小" data-plid="7248"/></td>
                </tr>
                <tr>
                    <td><strong>单</strong></td>
                    <td><strong class="color-red pl"  data-plid="7263"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-单" data-plid="7263"/></td>

                    <td><strong>双</strong></td>
                    <td><strong class="color-red pl" data-plid="7278"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-双" data-plid="7278"/></td>

                    <td><strong>质</strong></td>
                    <td><strong class="color-red pl"  data-plid="7293"></strong></td>
                    <td><input type="text" class="table-txt"  data-name="万定位-质" data-plid="7293"/></td>

                    <td><strong>合</strong></td>
                    <td><strong class="color-red pl"  data-plid="7308"></strong></td>
                    <td><input type="text" class="table-txt" data-name="万定位-合" data-plid="7308"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">总和、龙虎和</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>总大</strong></td>
                    <td><strong class="color-red pl" data-plid="7315"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总大" data-plid="7315"/></td>

                    <td><strong>总单</strong></td>
                    <td><strong class="color-red pl" data-plid="7319"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总单" data-plid="7319"/></td>

                    <td><strong>龙</strong></td>
                    <td><strong class="color-red pl" data-plid="8607"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-龙" data-plid="8607"/></td>

                    <td><strong>和</strong></td>
                    <td><strong class="color-red pl" data-plid="8609"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-和" data-plid="8609"/></td>
                </tr>

                <tr>
                    <td><strong>总小</strong></td>
                    <td><strong class="color-red pl" data-plid="7317"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总小" data-plid="7317"/></td>

                    <td><strong>总双</strong></td>
                    <td><strong class="color-red pl" data-plid="7321"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-总双" data-plid="7321"/></td>

                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="8608"></strong></td>
                    <td><input type="text" class="table-txt" data-name="总和、龙虎和-虎" data-plid="8608"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
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
<div class="fr main-right cl-10">
</div>
</div>
<c:import url="../common/subPageCommonJs.jsp" />

<script>

    var playGroupId = 3;
    var playId = 242;
    var playGroupName = '一字定位';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common input").each(function() {
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