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
        <div class="hd clearfix">
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lm_sqz')">三全中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lm_szezze')">三中二之中二</a>
                    <%--<a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lm_szezzs')" class="active">三中二之中三</a>--%>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lm_eqz')">二全中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lm_eztzzt')">二中特之中特</a>
                    <%--<a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lm_eztzze')">二中特之中二</a>--%>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lm_tc')">特串</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lm_szy')">四中一</a>
                </div>
            </div>
        </div>

        <div class="table-common table-common-left">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th width="47">勾选</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th width="47">勾选</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th width="47">勾选</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th width="47">勾选</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th width="47">勾选</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><span class="ball-icon ball-01"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="1" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="11" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="21" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="31" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="41" data-plid="13812"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="2" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="12" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="22" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="32" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="42" data-plid="13812"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="3" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="13" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="23" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="33" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="43" data-plid="13812"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="4" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="14" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="24" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="34" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="44" data-plid="13812"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="5" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="15" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="25" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="35" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="45" data-plid="13812"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="6" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="16" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="26" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="36" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="46" data-plid="13812"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="7" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="17" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="27" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="37" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="47" data-plid="13812"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="8" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="18" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="28" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="38" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="48" data-plid="13812"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="9" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="19" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="29" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="39" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="49" data-plid="13812"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="10" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="20" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="30" data-plid="13812"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red color-333 pl" data-plid="13812"></strong></td>
                    <td><input type="checkbox" data-name="40" data-plid="13812"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tfoot>
                <tr>
                    <td colspan="15">
                        <c:import url="../common/toptouzhu.jsp">
                            <c:param name="flagGroup" value="11"/>
                            <c:param name="navGroup" value="2"/>
                        </c:import>
                    </td>
                </tr>
                </tfoot>
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
<input type="hidden" data-plid="13812" id="pl"/>
<script>
    var playGroupId = 22;
    var playId = 474;
    var playGroupName = '连码';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        var arr = [];
        $(".main-left .table-common input").each(function () {
            if ($(this).is(":checked")) {
                arr.push($(this).data("name"));
            }
        });
        if (arr.length < 3) {
            Tools.toast("至少选择3个号码");
            return;
        }

        var tmpArr = getFlagArrs(arr, 3);
        var inputMoney = $("#inputMoney").val();
        if (typeof inputMoney == 'undefined' || !inputMoney) {
            Tools.toast("请输入正确的金额");
            return;
        }
        $.each(tmpArr, function (index, value) {
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: $("#number").data("number"),
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: '三中二之中三-' + value.split(" ").join(","),
                playPlId: $("#pl").data("plid"),
                playPl: $("#pl").data("pl")
            });
            betForm.totalMoney = add(betForm.totalMoney, inputMoney);
            betForm.totalZhushu = add(betForm.totalZhushu, 1);
        });
        return betForm;
    }

    function checkZhudan() {
        return true;
    }

</script>