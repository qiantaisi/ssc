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
        <div class="hd clearfix">
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-wsl_ewlz')">二尾连中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-wsl_swlz')" class="active">三尾连中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-wsl_siwlz')">四尾连中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-wsl_ewlbz')">二尾连不中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-wsl_swlbz')">三尾连不中</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-wsl_siwlbz')">四尾连不中</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="53">号码</th>
                    <th width="62">赔率</th>
                    <th width="67">勾选</th>
                    <th>号码</th>
                    <th width="53">号码</th>
                    <th width="62">赔率</th>
                    <th width="67">勾选</th>
                    <th>号码</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="6799"></strong></td>
                    <td><input type="checkbox" data-name="1" data-plid="6799"/></td>
                    <td>
                        <span class="ball-icon ball-01"></span>
                        <span class="ball-icon ball-11"></span>
                        <span class="ball-icon ball-21"></span>
                        <span class="ball-icon ball-31"></span>
                        <span class="ball-icon ball-41"></span>
                    </td>
                    <td><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="6799"></strong></td>
                    <td><input type="checkbox" data-name="6" data-plid="6799"/></td>
                    <td>
                        <span class="ball-icon ball-06"></span>
                        <span class="ball-icon ball-16"></span>
                        <span class="ball-icon ball-26"></span>
                        <span class="ball-icon ball-36"></span>
                        <span class="ball-icon ball-46"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="6799"></strong></td>
                    <td><input type="checkbox" data-name="2" data-plid="6799"/></td>
                    <td>
                        <span class="ball-icon ball-02"></span>
                        <span class="ball-icon ball-12"></span>
                        <span class="ball-icon ball-22"></span>
                        <span class="ball-icon ball-32"></span>
                        <span class="ball-icon ball-42"></span>
                    </td>
                    <td><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="6799"></strong></td>
                    <td><input type="checkbox" data-name="7" data-plid="6799"/></td>
                    <td>
                        <span class="ball-icon ball-07"></span>
                        <span class="ball-icon ball-17"></span>
                        <span class="ball-icon ball-27"></span>
                        <span class="ball-icon ball-37"></span>
                        <span class="ball-icon ball-47"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="6799"></strong></td>
                    <td><input type="checkbox" data-name="3" data-plid="6799"/></td>
                    <td>
                        <span class="ball-icon ball-03"></span>
                        <span class="ball-icon ball-13"></span>
                        <span class="ball-icon ball-23"></span>
                        <span class="ball-icon ball-33"></span>
                        <span class="ball-icon ball-43"></span>
                    </td>
                    <td><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="6799"></strong></td>
                    <td><input type="checkbox" data-name="8" data-plid="6799"/></td>
                    <td>
                        <span class="ball-icon ball-08"></span>
                        <span class="ball-icon ball-18"></span>
                        <span class="ball-icon ball-28"></span>
                        <span class="ball-icon ball-38"></span>
                        <span class="ball-icon ball-48"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="6799"></strong></td>
                    <td><input type="checkbox" data-name="4" data-plid="6799"/></td>
                    <td>
                        <span class="ball-icon ball-04"></span>
                        <span class="ball-icon ball-14"></span>
                        <span class="ball-icon ball-24"></span>
                        <span class="ball-icon ball-34"></span>
                        <span class="ball-icon ball-44"></span>
                    </td>
                    <td><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="6799"></strong></td>
                    <td><input type="checkbox" data-name="9" data-plid="6799"/></td>
                    <td>
                        <span class="ball-icon ball-09"></span>
                        <span class="ball-icon ball-19"></span>
                        <span class="ball-icon ball-29"></span>
                        <span class="ball-icon ball-39"></span>
                        <span class="ball-icon ball-49"></span>
                    </td>
                </tr>
                <tr>
                    <td><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="6799"></strong></td>
                    <td><input type="checkbox" data-name="5" data-plid="6799"/></td>
                    <td>
                        <span class="ball-icon ball-05"></span>
                        <span class="ball-icon ball-15"></span>
                        <span class="ball-icon ball-25"></span>
                        <span class="ball-icon ball-35"></span>
                        <span class="ball-icon ball-45"></span>
                    </td>
                    <td><strong>0</strong></td>
                    <td><strong class="color-red pl" data-plid="6799"></strong></td>
                    <td><input type="checkbox" data-name="0" data-plid="6799"/></td>
                    <td>
                        <span class="ball-icon ball-10"></span>
                        <span class="ball-icon ball-20"></span>
                        <span class="ball-icon ball-30"></span>
                        <span class="ball-icon ball-40"></span>
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
<input type="hidden" data-plid="6799" id="pl"/>
<script>
    var playGroupId = 6;
    var playId = 214;
    var playGroupName = '尾数连';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        var minPlId = null;
        var minPl = null;

        var arr = [];
        $(".main-left .table-common input").each(function () {
            if ($(this).is(":checked")) {
                arr.push($(this).data("name"));

                if (minPlId == null && minPl == null) {
                    minPlId = $(this).data("plid");
                    minPl = $(this).data("pl");
                }

                if ($(this).data("pl") < minPl) {
                    minPlId = $(this).data("plid");
                    minPl = $(this).data("pl");
                }
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
                content: '三尾连中-' + value.split(" ").join(","),
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