<%@ page import="project38.api.common.utils.JSONUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="help_r_main">
    <div class="eveb_content">
        <c:import url="common/nav.jsp"/>
        <div class="mb10 color-888">银行卡列表：</div>
        <ul class="management_bank">
        <c:forEach items="${userBankCardResult.userBankCardList}" var="item">
        <li>
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
            <c:set var="len" scope="session" value="${fn:length(item.bankAccount)}"/>
            <div class="item w205">${fn:substring(item.bankAccount, 0, 4)} **** **** **** ${fn:substring(item.bankAccount, len - 4, len)}</div>
            <div class="item w230">${item.subBankName}</div>
            <div class="item">
                <a href="javascript:void(0)" class="mr10 color-c4463c" onclick="setDefault(${item.id})">设为默认</a>
                <a href="javascript:void(0)" class="icon deleteIcon2" onclick="ajaxDel(${item.id})"></a>
            </div>
        </li>
        </c:forEach>
        </ul>
        <div class="eveb_content">
            <form name="addYhkForm" onsubmit="return false;" novalidate="novalidate">
                <ul class="eveb_form eveb_withdraw">
                    <li>
                        <span>银行名称：</span>
                        <select name="bankName" id="bankName" style="width:182px">
                            <option value="中国工商银行">中国工商银行</option>
                            <option value="中国农业银行">中国农业银行</option>
                            <option value="中国建设银行">中国建设银行</option>
                            <option value="中国银行">中国银行</option>
                            <option value="交通银行">交通银行</option>
                            <option value="招商银行">招商银行</option>
                            <option value="兴业银行">兴业银行</option>
                            <option value="浦发银行">浦发银行</option>
                            <option value="华夏银行">华夏银行</option>
                            <option value="中信银行">中信银行</option>
                            <option value="中国光大银行">中国光大银行</option>
                            <option value="广发银行">广发银行</option>
                            <option value="中国邮政储蓄银行">中国邮政储蓄银行</option>
                            <option value="平安银行">平安银行</option>
                            <option value="上海银行">上海银行</option>
                            <option value="广东省商业银行">广东省商业银行</option>
                        </select>
                        <label class="error" for="bankName"></label>
                    </li>
                    <li>
                        <span>开户支行：</span>
                        <input type="text" class="passwinp" id="subBankName" name="subBankName" style="width:180px;" placeholder="请输入开户支行">
                        <label class="error" for="subBankName"></label>
                    </li>
                    <li>
                        <span>开户人：</span>
                        <input type="text" class="passwinp" id="userName" name="userName" style="width:180px;" placeholder="请输入真实姓名" value="${userSession.name}" readonly>
                        <label class="error" for="userName"></label>
                    </li>
                    <li>
                        <span>银行账号：</span>
                        <input type="text" name="bankAccount" id="bankAccount" style="width:180px;" class="passwinp" placeholder="请输入银行卡号" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')">
                        <label class="error" for="bankAccount"></label>
                    </li>
                </ul>
                <div class="eveb_form_submit">
                    <input type="submit" value="提交" class="button_medium button_1">
                    <input type="reset" value="重置" class="ml_10 button_medium button_3">
                </div>
            </form>
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<script>
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
    
    $(function() {
        $("form[name='addYhkForm']").validate({
            rules: {
                bankName: {required: true},
                subBankName: {required: true},
                bankAccount: {
                    required: true,
                    minlength: 15,
                    maxlength: 20
                }
            },
            messages: {
                bankName: {required: '* 请填写银行名称'},
                subBankName: {required: '* 请填写开户支行'},
                bankAccount: {
                    required: '* 请填写银行账号',
                    minlength: '* 请填写15~20位的银行账号',
                    maxlength: '* 请填写15~20位的银行账号'
                }
            }
            , submitHandler: function (form) {
                addBankCard();
            }
        });
        $("form[name='addYhkForm']").submit();
    });
    function addBankCard() {
        var bankName = $("select[name='bankName']").val();
        var subBankName = $("input[name='subBankName']").val();
        var bankAccount = $("input[name='bankAccount']").val();

        if (!bankName) {
            Tools.toast("请输入银行名称");
            $("input[name='bankName']").focus();
            return;
        }

        if (!subBankName) {
            Tools.toast("请输入开户支行");
            $("input[name='subBankName']").focus();
            return;
        }

        if (!bankAccount) {
            Tools.toast("请输入银行账号");
            $("input[name='bankAccount']").focus();
            return;
        }

        ajaxRequest({
            url: "<%=basePath%>member/ajaxAddUserBank.json",
            data: {
                bankName: bankName,
                subBankName: subBankName,
                bankAccount: bankAccount
            },
            beforeSend: function() {
                parent.showLoading();
            },
            success: function(json) {
                parent.hideLoading();
                if (json.result == 1) {
                    Tools.toast("添加成功");
                    parent.getPage('zhsz/yhkgl');
                } else {
                    Tools.toast("添加失败：" + json.description);
                }
            }
        });
        return false;
    }
</script>
<c:import url="../common/bodyEnd.jsp"/>