<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!-- content -->
<div class="lot-content clearfix">
    <div class="fl main-left main-left-xyft">
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>
        <input type="hidden" id="flag_more" value="3456">
        <div class="table-common">
            <table class="xyft-table" style="width:100%!important;">
                <thead>
                <tr style="line-height: 23px;">
                    <td style="border: 0" colspan="4">
                        <table class="touzhuArea_gyjh" style="width: 100%;">
                            <tbody>
                            <tr>
                                <th colspan="4" style="width: 100%;background: white;font-weight: bold;">第三名</th>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="10027"></td>
                                <td><input class="amount-input" data-name="第三名-1" data-plid="10027" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="10028"></td>
                                <td><input class="amount-input" data-name="第三名-2" data-plid="10028" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="10029"></td>
                                <td><input class="amount-input" data-name="第三名-3" data-plid="10029" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="10030"></td>
                                <td><input class="amount-input" data-name="第三名-4" data-plid="10030" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="10031"></td>
                                <td><input class="amount-input" data-name="第三名-5" data-plid="10031" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="10032"></td>
                                <td><input class="amount-input" data-name="第三名-6" data-plid="10032" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="10033"></td>
                                <td><input class="amount-input" data-name="第三名-7" data-plid="10033" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="10034"></td>
                                <td><input class="amount-input" data-name="第三名-8" data-plid="10034" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="10035"></td>
                                <td><input class="amount-input" data-name="第三名-9" data-plid="10035" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="10036"></td>
                                <td><input class="amount-input" data-name="第三名-10" data-plid="10036" type="text"/></td>
                            </tr>
                            <tr>
                                <td style="line-height: 28px">龙</td>
                                <td class="pl pl-color" data-plid="10124"></td>
                                <td><input class="amount-input" data-name="第三名-龙" data-plid="10124" type="text"/></td>
                            </tr>
                            <tr>
                                <td style="line-height: 28px">虎</td>
                                <td class="pl pl-color" data-plid="10125"></td>
                                <td><input class="amount-input" data-name="第三名-虎" data-plid="10125" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td>大</td>
                                <td class="pl pl-color" data-plid="10120"></td>
                                <td><input class="amount-input" data-name="第三名-大" data-plid="10120" type="text"/></td>
                            </tr>
                            <tr>
                                <td>小</td>
                                <td class="pl pl-color" data-plid="10121"></td>
                                <td><input class="amount-input" data-name="第三名-小" data-plid="10121" type="text"/></td>
                            </tr>
                            <tr>
                                <td>单</td>
                                <td class="pl pl-color" data-plid="10122"></td>
                                <td><input class="amount-input" data-name="第三名-单" data-plid="10122" type="text"/></td>
                            </tr>
                            <tr>
                                <td>双</td>
                                <td class="pl pl-color" data-plid="10123"></td>
                                <td><input class="amount-input" data-name="第三名-双" data-plid="10123" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>

            <table class="xyft-table" style="width:100%!important;">
                <thead>
                <tr style="line-height: 23px;">
                    <td style="border: 0" colspan="4">
                        <table class="touzhuArea_gyjh" style="width: 100%;">
                            <tbody>
                            <tr>
                                <th colspan="4" style="width: 100%;background: white;font-weight: bold;">第四名</th>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="10037"></td>
                                <td><input class="amount-input" data-name="第四名-1" data-plid="10037" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="10038"></td>
                                <td><input class="amount-input" data-name="第四名-2" data-plid="10038" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="10039"></td>
                                <td><input class="amount-input" data-name="第四名-3" data-plid="10039" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="10040"></td>
                                <td><input class="amount-input" data-name="第四名-4" data-plid="10040" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="10041"></td>
                                <td><input class="amount-input" data-name="第四名-5" data-plid="10041" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="10042"></td>
                                <td><input class="amount-input" data-name="第四名-6" data-plid="10042" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="10043"></td>
                                <td><input class="amount-input" data-name="第四名-7" data-plid="10043" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="10044"></td>
                                <td><input class="amount-input" data-name="第四名-8" data-plid="10044" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="10045"></td>
                                <td><input class="amount-input" data-name="第四名-9" data-plid="10045" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="10046"></td>
                                <td><input class="amount-input" data-name="第四名-10" data-plid="10046" type="text"/></td>
                            </tr>
                            <tr>
                                <td style="line-height: 28px">龙</td>
                                <td class="pl pl-color" data-plid="10130"></td>
                                <td><input class="amount-input" data-name="第四名-龙" data-plid="10130" type="text"/></td>
                            </tr>
                            <tr>
                                <td style="line-height: 28px">虎</td>
                                <td class="pl pl-color" data-plid="10131"></td>
                                <td><input class="amount-input" data-name="第四名-虎" data-plid="10131" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td>大</td>
                                <td class="pl pl-color" data-plid="10126"></td>
                                <td><input class="amount-input" data-name="第四名-大" data-plid="10126" type="text"/></td>
                            </tr>
                            <tr>
                                <td>小</td>
                                <td class="pl pl-color" data-plid="10127"></td>
                                <td><input class="amount-input" data-name="第四名-小" data-plid="10127" type="text"/></td>
                            </tr>
                            <tr>
                                <td>单</td>
                                <td class="pl pl-color" data-plid="10128"></td>
                                <td><input class="amount-input" data-name="第四名-单" data-plid="10128" type="text"/></td>
                            </tr>
                            <tr>
                                <td>双</td>
                                <td class="pl pl-color" data-plid="10129"></td>
                                <td><input class="amount-input" data-name="第四名-双" data-plid="10129" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>


            <table class="xyft-table" style="width:100%!important;">
                <thead>
                <tr style="line-height: 23px;">
                    <td style="border: 0" colspan="4">
                        <table class="touzhuArea_gyjh" style="width: 100%;">
                            <tbody>
                            <tr>
                                <th colspan="4" style="width: 100%;background: white;font-weight: bold;">第五名</th>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="10047"></td>
                                <td><input class="amount-input" data-name="第五名-1" data-plid="10047" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="10048"></td>
                                <td><input class="amount-input" data-name="第五名-2" data-plid="10048" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="10049"></td>
                                <td><input class="amount-input" data-name="第五名-3" data-plid="10049" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="10050"></td>
                                <td><input class="amount-input" data-name="第五名-4" data-plid="10050" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="10051"></td>
                                <td><input class="amount-input" data-name="第五名-5" data-plid="10051" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="10052"></td>
                                <td><input class="amount-input" data-name="第五名-6" data-plid="10052" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="10053"></td>
                                <td><input class="amount-input" data-name="第五名-7" data-plid="10053" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="10054"></td>
                                <td><input class="amount-input" data-name="第五名-8" data-plid="10054" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="10055"></td>
                                <td><input class="amount-input" data-name="第五名-9" data-plid="10055" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="10056"></td>
                                <td><input class="amount-input" data-name="第五名-10" data-plid="10056" type="text"/></td>
                            </tr>
                            <tr>
                                <td style="line-height: 28px">龙</td>
                                <td class="pl pl-color" data-plid="10136"></td>
                                <td><input class="amount-input" data-name="第五名-龙" data-plid="10136" type="text"/></td>
                            </tr>
                            <tr>
                                <td style="line-height: 28px">虎</td>
                                <td class="pl pl-color" data-plid="10137"></td>
                                <td><input class="amount-input" data-name="第五名-虎" data-plid="10137" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td>大</td>
                                <td class="pl pl-color" data-plid="10132"></td>
                                <td><input class="amount-input" data-name="第五名-大" data-plid="10132" type="text"/></td>
                            </tr>
                            <tr>
                                <td>小</td>
                                <td class="pl pl-color" data-plid="10133"></td>
                                <td><input class="amount-input" data-name="第五名-小" data-plid="10133" type="text"/></td>
                            </tr>
                            <tr>
                                <td>单</td>
                                <td class="pl pl-color" data-plid="10134"></td>
                                <td><input class="amount-input" data-name="第五名-单" data-plid="10134" type="text"/></td>
                            </tr>
                            <tr>
                                <td>双</td>
                                <td class="pl pl-color" data-plid="10135"></td>
                                <td><input class="amount-input" data-name="第五名-双" data-plid="10135" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>


            <table class="xyft-table" style="width:100%!important;">
                <thead>
                <tr style="line-height: 23px;">
                    <td style="border: 0" colspan="4">
                        <table class="touzhuArea_gyjh" style="width: 100%;">
                            <tbody>
                            <tr>
                                <th colspan="4" style="width: 100%;background: white;font-weight: bold;">第六名</th>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="10057"></td>
                                <td><input class="amount-input" data-name="第六名-1" data-plid="10057" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="10058"></td>
                                <td><input class="amount-input" data-name="第六名-2" data-plid="10058" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="10059"></td>
                                <td><input class="amount-input" data-name="第六名-3" data-plid="10059" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="10060"></td>
                                <td><input class="amount-input" data-name="第六名-4" data-plid="10060" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="10061"></td>
                                <td><input class="amount-input" data-name="第六名-5" data-plid="10061" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="10062"></td>
                                <td><input class="amount-input" data-name="第六名-6" data-plid="10062" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="10063"></td>
                                <td><input class="amount-input" data-name="第六名-7" data-plid="10063" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="10064"></td>
                                <td><input class="amount-input" data-name="第六名-8" data-plid="10064" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_pm touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="10065"></td>
                                <td><input class="amount-input" data-name="第六名-9" data-plid="10065" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="10066"></td>
                                <td><input class="amount-input" data-name="第六名-10" data-plid="10066" type="text"/></td>
                            </tr>
                            <tr>

                            </tr>
                            <tr>

                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td>大</td>
                                <td class="pl pl-color" data-plid="10138"></td>
                                <td><input class="amount-input" data-name="第六名-大" data-plid="10138" type="text"/></td>
                            </tr>
                            <tr>
                                <td>小</td>
                                <td class="pl pl-color" data-plid="10139"></td>
                                <td><input class="amount-input" data-name="第六名-小" data-plid="10139" type="text"/></td>
                            </tr>
                            <tr>
                                <td>单</td>
                                <td class="pl pl-color" data-plid="10140"></td>
                                <td><input class="amount-input" data-name="第六名-单" data-plid="10140" type="text"/></td>
                            </tr>
                            <tr>
                                <td>双</td>
                                <td class="pl pl-color" data-plid="10141"></td>
                                <td><input class="amount-input" data-name="第六名-双" data-plid="10141" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
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

    <div class="fr main-right main-right-xyft cl-10 lm_height relm_height">
    </div>
</div>
<c:import url="common/bottom_zs.jsp"/>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 14;
    var playId = 321;
    var playGroupName = '三、四、五、六名';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common .touzhuArea input").each(function () {

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