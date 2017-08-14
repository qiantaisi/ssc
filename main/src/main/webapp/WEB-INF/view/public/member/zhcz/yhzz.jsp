<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="eveb_content">
    <c:import url="common/nav.jsp" />
    <div class="eveb_content">
        <form name="yhzzForm" novalidate="novalidate" onsubmit="return false;">
            <ul class="eveb_form">
                <li>
                    <span>收款帐号：</span>

                    <select name="bankCardId" id="bankCardId">
                        <option value="" data-bank-account-no="0">请选择…</option>
                        <c:forEach items="${bankCardListResult.bankcardList}" var="bc">
                            <option value="${bc.id}" data-bank-name="${bc.bankName}"
                                    data-bank-account-name="${bc.userName}"
                                    data-bank-account-no="${bc.bankAccount}">
                                [${bc.bankName}]&nbsp;${bc.userName}&nbsp;${fn:substring(bc.bankAccount, 0, 4)}&nbsp;****&nbsp;****&nbsp;${fn:substring(bc.bankAccount, 12, 16)}&nbsp;${fn:substring(bc.bankAccount, 16, 20)}
                            </option>
                        </c:forEach>
                    </select>
                    <div class="eveb_copy">
                        <a href="javascript:void(0)" class="button_small button_1" id="eveb_copy_1"
                           style="display: none;">复制账户名</a>
                        <a href="javascript:void(0)" class="button_small button_1" id="eveb_copy_2"
                           style="display: none;">复制银行帐号</a>
                        <label for="bankCardId" class="error" style="display:none;"></label>
                    </div>
                </li>
                <li id="skxx">
                </li>

                <li>
                    <span>转出银行：</span>
                    <div class="eveb_form_box eveb_bank_list yhzz">
                        <label>
                            <input type="radio" name="userBankName" value="中国工商银行">
                            <em class="banklogo bank-icbc"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="中国农业银行">
                            <em class="banklogo bank-abchina"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="中国建设银行">
                            <em class="banklogo bank-ccb"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="中国银行">
                            <em class="banklogo bank-chinabank"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="交通银行">
                            <em class="banklogo bank-comm"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="招商银行">
                            <em class="banklogo bank-cmb"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="兴业银行">
                            <em class="banklogo bank-cib"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="浦发银行">
                            <em class="banklogo bank-spdb"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="华夏银行">
                            <em class="banklogo bank-hxb"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="中信银行">
                            <em class="banklogo bank-ecitic"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="中国光大银行">
                            <em class="banklogo bank-cebbank"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="广发银行">
                            <em class="banklogo bank-cgbchina"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="中国邮政储蓄银行">
                            <em class="banklogo bank-psbc"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="平安银行">
                            <em class="banklogo bank-pingan"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="上海银行">
                            <em class="banklogo bank-bankofshanghai"></em>
                        </label>
                        <label>
                            <input type="radio" name="userBankName" value="其他银行">
                            <font>其他银行</font>
                        </label>
                    </div>
                    <div class="parentfr">
                        <div class="fr">
                            <label for="userBankName" class="error"></label>
                            <a href="javascript:;" class="button_small button_2" id="eveb_bank_open" onclick="eveb_bank_more(0)" style="">+ 更多银行</a>
                            <a href="javascript:;" class="button_small button_2" id="eveb_bank_close" onclick="eveb_bank_more(1)" style="display: none;">- 收起</a>
                        </div>
                    </div>

                </li>



                <li>
                    <span>转账方式：</span>
                    <div class="eveb_form_box eveb_radio_list">
                        <c:forEach items="${depositChannel.depositChannelList}" var="dc">
                            <label id="bank_2" data-sub="#radio_list_2">
                                <input name="depositChannelId" type="radio" value="${dc.id}">${dc.name}
                            </label>
                        </c:forEach>
                        <label for="depositChannelId" class="error" style="display:none;"></label>
                    </div>
                </li>
                <li>
                    <span>充值金额：</span>
                    <input type="text" size="5" name="money" id="money" value="" class="suminp"/>
                    <label for="money" class="error">* 请输入存入金额</label>
                </li>
                <li>
                    <span>银行帐号：</span>
                    <input class="suminp" name="bankAccount" type="text"
                           onkeyup="this.value=this.value.replace(/\D/gi,'')" id="bankAccount" />
                    <label for="bankAccount" class="error">* 请输入银行帐号,可填写后4位</label>
                </li>
                <li>
                    <span>存款姓名：</span>
                    <input type="text" name="userName" id="userName" class="suminp" value="${userSession.name}" readonly/>
                    <label for="userName" class="error"></label>
                </li>
            </ul>
            <div class="eveb_form_submit">
                <input type="submit" id="btnSubmit" value="提交" class="button_medium button_1">
            </div>
        </form>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<script>
    $(function() {
        var clipboard = new Clipboard('#copyTglj', {
            text: function() {
                return $('#copyTglj').data('tglj');
            }
        });
        clipboard.on('success', function(e) {
            alert("复制成功");
        });
        clipboard.on('error', function(e) {
            alert("浏览器粘贴板不支持复制，请手动复制。")
        });
    });

    function getIdInfo() {
            var bank_account = $("#bankCardId").children('option:selected');
            var bank_name = $(bank_account).data("bank-name");
            var bank_account_name = bank_account.attr('data-bank-account-name');
            var bank_account_no = bank_account.attr('data-bank-account-no');

            if ($("#bankCardId").val() > 0) {
                $('.eveb_copy a').fadeIn('slow');
                var skxxStr = '';
                skxxStr += '<span>收款信息：</span>';
                skxxStr += '<div class="bankInfo">';
                skxxStr += '<div class="name">' + bank_name + '</div>';
                skxxStr += '<p class="info">银行账号：<b class="color-1272e8 fwn">' + bank_account_no + '</b></p>';
                skxxStr += '<p class="user">开户姓名：<b>' + bank_account_name + '</b></p>';
                skxxStr += '</div>';
                $("#skxx").html(skxxStr);
            } else {
                $('.eveb_copy a').fadeOut();
                $("#skxx").html('');
            }
    }
    $(function () {
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

        $('.eveb_copy a').hide();
        $("#bankCardId").change(function () {
            getIdInfo();
        });
        if ($("#bankCardId").find("option").length > 1) {
            $("#bankCardId option").eq(1).attr("selected","selected");
            getIdInfo();
        }


        $("form[name='yhzzForm']").validate({
            rules: {
                bankCardId: {required: true}
                , userBankName: {required: true}
                , depositChannelId: {required: true}
                , money: {required: true}
                , bankAccount: {required: true}
            }
            , messages: {
                bankCardId: {required: "* 请选择收款帐号"}
                , userBankName: {required: "* 请选择银行"}
                , depositChannelId: {required: "* 请选择存款方式"}
                , money: {required: "* 请输入金额，"}
                , bankAccount: {required: "* 请输入银行帐号,可填写后4位"}
            }
            , submitHandler: function (form) {
                var options = {
                    url: "<%=basePath%>member/submitYhzz.json",
                    success: showResponse,      //提交后的回调函数
                    type: 'post',               //默认是form的method（get or post），如果申明，则会覆盖
                    dataType: 'json',           //html(默认), xml, script, json...接受服务端返回的类型
                    timeout: 3000               //限制请求的时间，当请求大于3秒后，跳出请求
                };
                parent.showLoading();
                $(form).ajaxSubmit(options);
            }
        });
        function showResponse(json, statusText) {
            parent.hideLoading();
            if (json.result == 1) {
                alert("您已成功提交申请,请耐心等待审核!");
//                parent.etPage('lsjl/ckjl');
                document.location.href = CONFIG.BASEURL + "member/lsjl.html?module=ckjl";
            } else {
                alert("提交失败：" + json.description);
                document.location.href = CONFIG.BASEURL + "member/zhcz.html?module=yhzz";
            }
        }
    });
</script>
<c:import url="../common/bodyEnd.jsp"/>

