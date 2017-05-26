<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="common/bodyStart.jsp"/>
<div class="help_r_main">
    <div class="eveb_content">
        <div class="eveb_transfer_box mb20 clearfix" style="overflow: visible;">
            <div class="center_wallet fl rel">
                <span>账户总余额</span>
                <p class="money"><strong id="wallet" class="money">${userSession.balance}</strong>元</p>
                <div class="abs Res" onclick="refreshMoney()"><i class="icon resIcon"></i></div>
            </div>
            <ul class="wallet_list wallet_list2 fl">
                <li><span>可提款总额</span>
                    <p id="wallet_1" class="money">${userSession.balance}</p></li>
                <!--<li class="rel">
                    <a href="#" class="color-df3c31">资金归集</a>
                    <p><i class="icon tipIcon"></i></p>
                    <div class="tipBox abs">
                        <span class="caret abs"></span>
                        可将各个平台零钱全部转入中心钱包，方便取款
                    </div>
                </li>-->
            </ul>
        </div>
        <form name="withdrawForm" novalidate="novalidate" onsubmit="return false;">
            <ul class="eveb_form management_bank">
                <c:choose>
                    <c:when test="${empty userBankCardResult.userBankCardList}">
                        <div class="mb10 color-888"><font color="#999999">您还未绑定银行卡 请绑定银行卡，</font><a href="javascript:void(0)" onclick="parent.getPage('zhsz/yhkgl')" style="color:#ff7800">点击前往&gt;&gt;</a></div>
                    </c:when>
                    <c:otherwise>
                        <div class="mb10 color-888">转到银行卡：<label for="id" class="error"></label></div>
                        <c:forEach items="${userBankCardResult.userBankCardList}" var="item">
                            <li>
                                <div class="item w105"><input type="radio" name="id" <c:if test="${item['default'] == true}">checked="checked"</c:if> value="${item.id}"></div>
                                <c:choose>
                                    <c:when test="${item['default'] == 'true'}">
                                        <div class="item w125 color-e77c3c" style="width:30px">默认</div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="item w125 color-e77c3c" style="width:30px"></div>
                                    </c:otherwise>
                                </c:choose>
                                <div class="item w105">${item.bankName}</div>
                                <div class="item w105">${item.userName}</div>
                                <div class="item w205">${fn:substring(item.bankAccount, 0, 4)} **** **** **** ${fn:substring(item.bankAccount, 12, 16)}</div>
                                <div class="item w230">${item.subBankName}</div>
                                <div class="item">
                                    <a href="javascript:void(0)" class="mr10 color-c4463c" onclick="setDefault(${item.id})">设为默认</a>
                                    <a href="javascript:void(0)" class="icon deleteIcon2" onclick="ajaxDel(${item.id})"></a>
                                </div>
                            </li>
                        </c:forEach>

                    </c:otherwise>
                </c:choose>
            </ul>
            <ul class="eveb_form eveb_withdraw">
                <li>
                    <span>提款金额：</span>
                    <input id="money" name="money" name="text" type="text" placeholder="请输入转账金额" style="border: 2px solid #f49c42;background: #faf9f9;height: 28px; padding-left:5px">
                    <label for="money" class="error"></label>
                </li>
            </ul>
            <div class="eveb_form_submit">
                <input type="submit" id="btnSubmit" value="提交" class="button_medium button_1">
                <input type="reset" value="重置" class="ml_10 button_medium button_3">
            </div>
        </form>
    </div>
</div>
<c:import url="common/commonJs.jsp"/>
<c:import url="common/subCommonJs.jsp"/>
<script>
    $(function () {
        $(".errhide").addClass('hide');
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

            //提示非法金额输入
            var maxMoney=$(".wallet_list .money").text();
            var inmoney=$(".suminp").val();
            if(parseInt(inmoney) > parseInt(maxMoney)){
                $(".errhide").removeClass('hide');
                $(".errhide").html("* 最大提款金额" + maxMoney + "元").show();
                $(".eveb_form_submit input").removeClass('button_1');
                $(".eveb_form_submit input").attr("disabled", true);
            }else{
                $(".errhide").removeClass('hide');
                $(".errhide").html('');
                $(".eveb_form_submit input").addClass('button_1');
                $(".eveb_form_submit input").attr("disabled", false);
            }

        });

        $("form[name='withdrawForm'] input[name='money']").change(function () {

        });

        $("form[name='withdrawForm']").validate({
            rules: {
                money: {required: true}
                , id: {required: true}
            }
            , messages: {
                money: {required: "* 请输入金额，"}
                , id: {required: "* 请选择的银行卡"}
            }
            , submitHandler: function (form) {
                var options = {
                    url: "<%=basePath%>member/submitWithdraw.json",
                    success: function(json) { //提交后的回调函数
                        if (json.result == 1) {
                            alert("提交成功");
                            refreshMoney();
                        } else {
                            alert("提交失败：" + json.description);
                        }
                        parent.hideLoading();
                    },
                    type: 'post',               //默认是form的method（get or post），如果申明，则会覆盖
                    dataType: 'json',           //html(默认), xml, script, json...接受服务端返回的类型
                    timeout: 3000               //限制请求的时间，当请求大于3秒后，跳出请求
                };
                parent.showLoading();
                $(form).ajaxSubmit(options);

            }
        });
        $("form[name='withdrawForm']").valid();
    });


    function setDefault(id) {
        ajaxRequest({
            url: "<%=basePath%>member/ajaxSetDefault.json",
            data: {
                id: id
            },
            beforeSend: function() {
                parent.showLoading();
            },
            success: function(json) {
                parent.hideLoading();
                if (json.result == 1) {
                    location.reload();
                } else {
                    Tools.toast("操作失败：" + json.description);
                }
            }
        });
    }

    function ajaxDel(id) {
        if (confirm("确认删除")) {
            ajaxRequest({
                url: "<%=basePath%>member/ajaxDelUserBank.json",
                data: {
                    id: id
                },
                beforeSend: function() {
                    parent.showLoading();
                },
                success: function(json) {
                    parent.hideLoading();
                    if (json.result == 1) {
                        Tools.toast("删除成功");
                        location.reload();
                    } else {
                        Tools.toast("删除失败：" + json.description);
                    }
                }
            });
        }
    }

    function refreshMoney() {
        ajaxRequest({
            url: "<%=basePath%>member/updateUserInfo.json",
            beforeSend: function () {
                $(".eveb_transfer_box .money").html("刷新中");
            },
            success: function (json) {
                if (json.result != 1) {
                    reutnr;
                }
                $(".money").html(json.balance);
                $(".center_wallet .money").css({"font-size": "20px", "font-weight": "bold"});
            }
        });
    }
</script>
<c:import url="common/bodyEnd.jsp"/>