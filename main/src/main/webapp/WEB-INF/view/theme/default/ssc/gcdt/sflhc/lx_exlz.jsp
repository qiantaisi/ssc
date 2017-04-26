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
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lx_exlz')" class="active">二肖连中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lx_sxlz')">三肖连中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lx_sixlz')">四肖连中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lx_wxlz')">五肖连中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lx_exlbz')">二肖连不中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lx_sxlbz')">三肖连不中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-lx_sixlbz')">四肖连不中</a>
                </div>
            </div>
        </div>

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
                    <td><strong class="color-red pl" data-plid="13890"></strong></td>
                    <td><input type="checkbox" data-plid="13890" data-name="鼠"/></td>
                    <td>
                        <span class="ball-icon ball-10"></span>
                        <span class="ball-icon ball-22"></span>
                        <span class="ball-icon ball-34"></span>
                        <span class="ball-icon ball-46"></span>
                    </td>
                    <td><strong>牛</strong></td>
                    <td><strong class="color-red pl" data-plid="13881"></strong></td>
                    <td><input type="checkbox" data-plid="13881" data-name="牛"/></td>
                    <td>
                        <span class="ball-icon ball-09"></span>
                        <span class="ball-icon ball-21"></span>
                        <span class="ball-icon ball-33"></span>
                        <span class="ball-icon ball-45"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>虎</strong></td>
                    <td><strong class="color-red pl" data-plid="13886"></strong></td>
                    <td><input type="checkbox" data-plid="13886" data-name="虎"/></td>
                    <td>
                        <span class="ball-icon ball-08"></span>
                        <span class="ball-icon ball-20"></span>
                        <span class="ball-icon ball-32"></span>
                        <span class="ball-icon ball-44"></span>
                    </td>
                    <td><strong>兔</strong></td>
                    <td><strong class="color-red pl" data-plid="13880"></strong></td>
                    <td><input type="checkbox" data-plid="13880" data-name="兔"/></td>
                    <td>
                        <span class="ball-icon ball-07"></span>
                        <span class="ball-icon ball-19"></span>
                        <span class="ball-icon ball-31"></span>
                        <span class="ball-icon ball-43"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>龙</strong></td>
                    <td><strong class="color-red pl" data-plid="13891"></strong></td>
                    <td><input type="checkbox" data-plid="13891" data-name="龙"/></td>
                    <td>
                        <span class="ball-icon ball-06"></span>
                        <span class="ball-icon ball-18"></span>
                        <span class="ball-icon ball-30"></span>
                        <span class="ball-icon ball-42"></span>
                    </td>
                    <td><strong>蛇</strong></td>
                    <td><strong class="color-red pl" data-plid="13887"></strong></td>
                    <td><input type="checkbox" data-plid="13887" data-name="蛇"/></td>
                    <td>
                        <span class="ball-icon ball-05"></span>
                        <span class="ball-icon ball-17"></span>
                        <span class="ball-icon ball-29"></span>
                        <span class="ball-icon ball-41"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>马</strong></td>
                    <td><strong class="color-red pl" data-plid="13888"></strong></td>
                    <td><input type="checkbox" data-plid="13888" data-name="马"/></td>
                    <td>
                        <span class="ball-icon ball-04"></span>
                        <span class="ball-icon ball-16"></span>
                        <span class="ball-icon ball-28"></span>
                        <span class="ball-icon ball-40"></span>
                    </td>
                    <td><strong>羊</strong></td>
                    <td><strong class="color-red pl" data-plid="13885"></strong></td>
                    <td><input type="checkbox" data-plid="13885" data-name="羊"/></td>
                    <td>
                        <span class="ball-icon ball-03"></span>
                        <span class="ball-icon ball-15"></span>
                        <span class="ball-icon ball-27"></span>
                        <span class="ball-icon ball-39"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>猴</strong></td>
                    <td><strong class="color-red pl" data-plid="13884"></strong></td>
                    <td><input type="checkbox" data-plid="13884" data-name="猴"/></td>
                    <td>
                        <span class="ball-icon ball-02"></span>
                        <span class="ball-icon ball-14"></span>
                        <span class="ball-icon ball-26"></span>
                        <span class="ball-icon ball-38"></span>
                    </td>
                    <td><strong>鸡</strong></td>
                    <td><strong class="color-red pl" data-plid="13889"></strong></td>
                    <td><input type="checkbox" data-plid="13889" data-name="鸡"/></td>
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
                    <td><strong class="color-red pl" data-plid="13882"></strong></td>
                    <td><input type="checkbox" data-plid="13882" data-name="狗"/></td>
                    <td>
                        <span class="ball-icon ball-12"></span>
                        <span class="ball-icon ball-24"></span>
                        <span class="ball-icon ball-36"></span>
                        <span class="ball-icon ball-48"></span>
                    </td>
                    <td><strong>猪</strong></td>
                    <td><strong class="color-red pl" data-plid="13883"></strong></td>
                    <td><input type="checkbox" data-plid="13883" data-name="猪"/></td>
                    <td>
                        <span class="ball-icon ball-11"></span>
                        <span class="ball-icon ball-23"></span>
                        <span class="ball-icon ball-35"></span>
                        <span class="ball-icon ball-47"></span>
                    </td>
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
<input type="hidden" data-plid="6791" id="pl">
<script>
    var playGroupId = 22;
    var playId = 475;
    var playGroupName = '连肖';

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
        if (arr.length < 2) {
            Tools.toast("至少选择2个号码");
            return;
        }

        var tmpArr = getFlagArrs(arr, 2);
        var inputMoney = $("#inputMoney").val();
        if (typeof inputMoney == 'undefined' || !inputMoney) {
            Tools.toast("请输入正确的金额");
            return;
        }
        $.each(tmpArr, function (index, value) {
            var minPl = null;
            var minPlId = null;
            var tmp = value.split(" ");
            $.each(tmp, function (index2, value2) {
                var plid = $("[data-name='" + value2 + "']").data("plid");
                var pl = $("[data-name='" + value2 + "']").data("pl");
                if (minPl == null && minPlId == null) {
                    minPlId = plid;
                    minPl = pl;
                } else {
                    if (pl < minPl) {
                        minPlId = plid;
                        minPl = pl;
                    }
                }
            });
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: $("#number").data("number"),
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: '二肖连中-' + value.split(" ").join(","),
                playPlId: minPlId,
                playPl: minPl
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