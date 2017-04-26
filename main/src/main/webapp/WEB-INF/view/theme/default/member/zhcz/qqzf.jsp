<%@ page import="project38.api.common.utils.JSONUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="eveb_content">
    <div class="eveb_nav_sub">
        <ul class="clearfix">
            <li><a href="javascript:void(0)" onclick="parent.getPage('zhcz/yhzz')">银行转账</a></li>
            <c:if test="${not empty zxzfInfo.systemPayOnlineList}"><li><a href="javascript:void(0)" onclick="parent.getPage('zhcz/zxzf')">在线支付</a></li></c:if>
            <c:if test="${not empty zfbzfInfo.systemPayOnlineList}"><li><a href="javascript:void(0)" onclick="parent.getPage('zhcz/zfbzf')">支付宝支付</a></li></c:if>
            <c:if test="${not empty wxzfInfo.systemPayOnlineList}"><li><a href="javascript:void(0)" onclick="parent.getPage('zhcz/wxzf')">微信支付</a></li></c:if>
            <c:if test="${not empty qqzfInfo.systemPayOnlineList}"><li class="on"><a href="javascript:void(0)" onclick="parent.getPage('zhcz/qqzf')">QQ支付</a></li></c:if>
            <c:if test="${not empty wxzzInfo.skInfoList}"><li><a href="javascript:void(0)" onclick="parent.getPage('zhcz/wxzz')">微信转账</a></li></c:if>
            <c:if test="${not empty zfbzzInfo.skInfoList}"><li><a href="javascript:void(0)" onclick="parent.getPage('zhcz/zfbzz')">支付宝转账</a></li></c:if>
            <c:if test="${not empty cftzzInfo.skInfoList}"><li><a href="javascript:void(0)" onclick="parent.getPage('zhcz/cftzz')">财付通转账</a></li></c:if>
            <c:if test="${not empty qqzzList.skInfoList}"><li><a href="javascript:void(0)" onclick="parent.getPage('zhcz/qqzz')">QQ转账</a></li></c:if>
        </ul>
    </div>
    <div class="eveb_content">
        <form name="qqzfForm" novalidate="novalidate" onsubmit="return false;">
            <ul class="eveb_form">
                <li>
                    <span style="height:50px;line-height:50px;">支付渠道：</span>
                    <div class="eveb_form_box eveb_bank_list">
                        <c:forEach items="${systemPayOnlineResult.systemPayOnlineList}" var="item">
                            <label>
                                <input data-payurl="${item.payUrl}" type="radio" data-description="${item.description}" data-minmoney="${item.minMoney}" data-maxmoney="${item.maxMoney}" name="payOnlineId" value="${item.id}">
                                <em class=""><img src="<%=basePath%>image/${item.imageId}" width="50" height="50" alt=""></em>
                            </label>
                        </c:forEach>
                    </div>
                </li>
                <li>
                    <span>充值金额：</span>
                    <input type="text" size="5" name="money" class="suminp" id="money">
                    <label for="money" class="error" id="moneyError" style="display:inline-block;">* 请输入金额</label>
                </li>
                <li id="zfsm">
                    <span>支付说明：</span>
                    <div class="bankInfo">
                        <div class="name">

                        </div>
                        <p>支付遇见问题？<a href="${kefuUrl}" target="_blank">&lt;&lt;点击联系在线客服&gt;&gt;</a></p>
                    </div>
                </li>
            </ul>
            <div class="eveb_form_submit">
                <input type="submit" value="提交" class="button_medium button_1">
            </div>
        </form>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<script>
    $(function () {
        $("#money").keyup(function() {
            var minMoney = parseFloat($("form[name='qqzfForm'] input[name='payOnlineId']:checked").data("minmoney"));
            var maxMoney = parseFloat($("form[name='qqzfForm'] input[name='payOnlineId']:checked").data("maxmoney"));

            var money = parseFloat($("#money").val());
            if (money < minMoney || money > maxMoney) {
                $("#moneyError").html("* 最小充值金额" + minMoney + "元，最大充值金额" + maxMoney + "元").show();
            } else {
                $("#moneyError").hide();
            }
        });
        $("form[name='qqzfForm'] input[name='payOnlineId']").change(function() {
            var str = '';

            var val = $("form[name='qqzfForm'] input[name='payOnlineId']:checked").val();
            if (val != '') {
                str = $("form[name='qqzfForm'] input[name='payOnlineId']:checked").data("description");
                $("#zfsm").show();
            } else {
//                $("#zfsm").hide();
            }
            $("#zfsm .bankInfo .name").html(str);

            var minMoney = parseFloat($("form[name='qqzfForm'] input[name='payOnlineId']:checked").data("minmoney"));
            var maxMoney = parseFloat($("form[name='qqzfForm'] input[name='payOnlineId']:checked").data("maxmoney"));
            $("#moneyError").html("* 最小充值金额" + minMoney + "元，最大充值金额" + maxMoney + "元").show();
        });
        $("form[name='qqzfForm'] input[name='payOnlineId']").eq(0).attr("checked", 'checked').prop("checked", "checked");
        $("#zfsm .bankInfo .name").html($("form[name='qqzfForm'] input[name='payOnlineId']:checked").data("description"));
        $("#money").keyup(function () {
            var obj = this;
            obj.value = obj.value.replace(/[^\d.]/g, "");
            obj.value = obj.value.replace(/^\./g, "");
            obj.value = obj.value.replace(/^0/g, "");
            obj.value = obj.value.replace(/\.{2,}/g, ".");
            //确保只有一次小数点出现
            obj.value = obj.value.replace(".", "#").replace(/\./g, "").replace("#", ".");
            //确保小数点后是两位数字
            if (obj.value.indexOf(".") > 0 && obj.value.indexOf(".") + 4 <= obj.value.length) {
                obj.value = obj.value.substr(0, obj.value.indexOf(".") + 3);
            }
            $("#money").val(obj.value);
        });

        $("form[name='qqzfForm']").submit(function() {
            var minMoney = parseFloat($("form[name='qqzfForm'] input[name='payOnlineId']:checked").data("minmoney"));
            var maxMoney = parseFloat($("form[name='qqzfForm'] input[name='payOnlineId']:checked").data("maxmoney"));
            var payurl = $("form[name='qqzfForm'] input[name='payOnlineId']:checked").data("payurl");

            var money = parseFloat($("#money").val());
            if (isNaN(money) || money < minMoney || money > maxMoney) {
                $("#moneyError").html("* 最小充值金额" + minMoney + "元，最大充值金额" + maxMoney + "元").show();
                return;
            }


            $("#submitForm input[name='money']").val($("#money").val());
            $("#submitForm input[name='payOnlineId']").val($("#payOnlineId").val());
            window.open("http://" + payurl + "/pay/payOnlineRequest.html?refer=<%=basePath%>&uid=${userSession.id}&money=" + money + "&payOnlineId=" + $("form[name='qqzfForm'] input[name='payOnlineId']:checked").val());
        });
        $("#moneyError").html("* 请输入金额").show();
    });
</script>
<c:import url="../common/bodyEnd.jsp"/>