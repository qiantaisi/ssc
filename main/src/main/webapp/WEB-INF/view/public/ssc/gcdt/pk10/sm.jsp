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
                    <th>&nbsp;</th>
                    <th colspan="2">大</th>
                    <th colspan="2">小</th>
                    <th colspan="2">单</th>
                    <th colspan="2">双</th>
                    <th colspan="2">龙</th>
                    <th colspan="2">虎</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>冠军</strong></td>
                    <td><strong class="color-red pl" data-plid="8217"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-大" data-plid="8217"/></td>
                    <td><strong class="color-red pl" data-plid="8222"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-小" data-plid="8222"/></td>
                    <td><strong class="color-red pl" data-plid="8227"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-单" data-plid="8227"/></td>
                    <td><strong class="color-red pl" data-plid="8232"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-双" data-plid="8232"/></td>
                    <td><strong class="color-red pl" data-plid="8237"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-龙" data-plid="8237"/></td>
                    <td><strong class="color-red pl" data-plid="8242"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-虎" data-plid="8242"/></td>
                </tr>

                <tr>
                    <td><strong>亚军</strong></td>
                    <td><strong class="color-red pl" data-plid="8218"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-大" data-plid="8218"/></td>
                    <td><strong class="color-red pl" data-plid="8223"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-小" data-plid="8223"/></td>
                    <td><strong class="color-red pl" data-plid="8228"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-单" data-plid="8228"/></td>
                    <td><strong class="color-red pl" data-plid="8233"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-双" data-plid="8233"/></td>
                    <td><strong class="color-red pl" data-plid="8238"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-龙" data-plid="8238"/></td>
                    <td><strong class="color-red pl" data-plid="8243"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-虎" data-plid="8243"/></td>
                </tr>

                <tr>
                    <td><strong>季军</strong></td>
                    <td><strong class="color-red pl" data-plid="8219"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-大" data-plid="8219"/></td>
                    <td><strong class="color-red pl" data-plid="8224"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-小" data-plid="8224"/></td>
                    <td><strong class="color-red pl" data-plid="8229"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-单" data-plid="8229"/></td>
                    <td><strong class="color-red pl" data-plid="8234"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-双" data-plid="8234"/></td>
                    <td><strong class="color-red pl" data-plid="8239"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-龙" data-plid="8239"/></td>
                    <td><strong class="color-red pl" data-plid="8244"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-虎" data-plid="8244"/></td>
                </tr>

                <tr>
                    <td><strong>第四名</strong></td>
                    <td><strong class="color-red pl" data-plid="8220"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-大" data-plid="8220"/></td>
                    <td><strong class="color-red pl" data-plid="8225"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-小" data-plid="8225"/></td>
                    <td><strong class="color-red pl" data-plid="8230"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-单" data-plid="8230"/></td>
                    <td><strong class="color-red pl" data-plid="8235"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-双" data-plid="8235"/></td>
                    <td><strong class="color-red pl" data-plid="8240"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-龙" data-plid="8240"/></td>
                    <td><strong class="color-red pl" data-plid="8245"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-虎" data-plid="8245"/></td>
                </tr>

                <tr>
                    <td><strong>第五名</strong></td>
                    <td><strong class="color-red pl" data-plid="8221"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-大" data-plid="8221"/></td>
                    <td><strong class="color-red pl" data-plid="8226"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-小" data-plid="8226"/></td>
                    <td><strong class="color-red pl" data-plid="8231"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-单" data-plid="8231"/></td>
                    <td><strong class="color-red pl" data-plid="8236"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-双" data-plid="8236"/></td>
                    <td><strong class="color-red pl" data-plid="8241"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-龙" data-plid="8241"/></td>
                    <td><strong class="color-red pl" data-plid="8246"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-虎" data-plid="8246"/></td>
                </tr>

                <tr>
                    <td><strong>第六名</strong></td>
                    <td><strong class="color-red pl" data-plid="8247"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-大" data-plid="8247"/></td>
                    <td><strong class="color-red pl" data-plid="8252"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-小" data-plid="8252"/></td>
                    <td><strong class="color-red pl" data-plid="8257"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-单" data-plid="8257"/></td>
                    <td><strong class="color-red pl" data-plid="8262"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-双" data-plid="8262"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第七名</strong></td>
                    <td><strong class="color-red pl" data-plid="8248"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-大" data-plid="8248"/></td>
                    <td><strong class="color-red pl" data-plid="8253"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-小" data-plid="8253"/></td>
                    <td><strong class="color-red pl" data-plid="8258"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-单" data-plid="8258"/></td>
                    <td><strong class="color-red pl" data-plid="8263"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-双" data-plid="8263"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第八名</strong></td>
                    <td><strong class="color-red pl" data-plid="8249"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-大" data-plid="8249"/></td>
                    <td><strong class="color-red pl" data-plid="8254"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-小" data-plid="8254"/></td>
                    <td><strong class="color-red pl" data-plid="8259"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-单" data-plid="8259"/></td>
                    <td><strong class="color-red pl" data-plid="8264"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-双" data-plid="8264"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第九名</strong></td>
                    <td><strong class="color-red pl" data-plid="8250"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-大" data-plid="8250"/></td>
                    <td><strong class="color-red pl" data-plid="8255"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-小" data-plid="8255"/></td>
                    <td><strong class="color-red pl" data-plid="8260"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-单" data-plid="8260"/></td>
                    <td><strong class="color-red pl" data-plid="8265"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-双" data-plid="8265"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第十名</strong></td>
                    <td><strong class="color-red pl" data-plid="8251"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-大" data-plid="8251"/></td>
                    <td><strong class="color-red pl" data-plid="8256"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-小" data-plid="8256"/></td>
                    <td><strong class="color-red pl" data-plid="8261"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-单" data-plid="8261"/></td>
                    <td><strong class="color-red pl" data-plid="8266"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-双" data-plid="8266"/></td>
                    <td>&nbsp;</td>
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
    </div>

    <div class="fr main-right cl-10">
    </div>
</div>
<c:import url="common/bottom_zs.jsp"/>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 9;
    var playId = 258;
    var playGroupName = '双面';

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