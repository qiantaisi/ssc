<%@ page import="org.apache.commons.lang3.time.DateFormatUtils" %>
<%@ page import="java.util.Date" %>
<%@ page import="org.apache.commons.lang3.time.DateUtils" %>
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
<div class="help_r_main">
    <div class="eveb_content">
        <c:import url="common/top.jsp" />
        <c:import url="common/nav.jsp">
            <c:param name="type" value="2" />
        </c:import>
        <form name="addUserForm" novalidate="novalidate" onsubmit="return false;">
            <ul class="eveb_form eveb_setting_form">
                <li>
                    <span>登录账号名：</span>
                    <input name="account" id="account" type="text" size="20" class="passwinp" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')" onpaste="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')" oncontextmenu="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')">
                    <label class="error" for="account"></label>
                </li>
                <li>
                    <span>登录密码：</span>
                    <input name="password" id="password" type="password" size="20" class="passwinp">
                    <label class="error" for="password"></label>
                </li>
                <li>
                    <span>用户qq号：</span>
                    <input name="qq" id="qq" type="text" size="20" class="passwinp" maxlength="11" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')">
                    <label class="error" for="qq"></label>
                </li>
                <li>
                    <span>用户真实名：</span>
                    <input name="name" id="name" type="text" size="20" class="passwinp" onpaste="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" oncontextmenu="value=value.replace(/[^\u4E00-\u9FA5]/g,'')">
                    <label class="error" for="name"></label>
                </li>
            </ul>
            <div class="eveb_form_submit">
                <input type="submit" value="确认添加" class="button_medium button_1">
                <input type="reset" value="重置" class="ml_10 button_medium button_3">
            </div>
        </form>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<c:import url="common/commonJs.jsp" />
<script>
    $(function() {
        //自定义正则表达示验证方法
        $.validator.addMethod("checkAcount",function(value,element,params){
            var checkAcount = /^[a-zA-Z][0-9a-zA-Z]{5,11}$/;
            return this.optional(element)||(checkAcount.test(value));
        },"");
        //自定义正则表达示验证方法
        $.validator.addMethod("checkPassword",function(value,element,params){
            var checkPassword = /^[0-9a-zA-Z]{6,16}$/;
            return this.optional(element)||(checkPassword.test(value));
        },"");
        //自定义正则表达示验证方法
        $.validator.addMethod("checkName",function(value,element,params){
            var checkPassword = /^[\u4e00-\u9fa5]+$/;
            return this.optional(element)||(checkPassword.test(value));
        },"");

        $("form[name='addUserForm']").validate({
            rules: {
                account: {
                    required: true,
                    checkAcount: true
                }
                , password: {
                    required: true,
                    checkPassword: true
                }
                , qq: {
                    required: true,
                    minlength: 5,
                    maxlength: 11
                }
                , name: {
                    required: true,
                    checkName: true
                }
            }
            , messages: {
                account: {
                    required: "* （以字母开头的6-12位字母、数字组成的字符）",
                    checkAcount: "* （以字母开头的6-12位字母、数字组成的字符）"
                }
                , password: {
                    required: "* （由数字和字母组成6-16个字符）",
                    checkPassword: "* （由数字和字母组成6-16个字符）"
                }
                , qq: {
                    required: "* （请填写真实QQ号以便联系）",
                    minlength: "* （请输入正确格式的QQ号）",
                    maxlength: "* （请输入正确格式的QQ号）"
                }
                , name: {
                    required: "* （请填写真实用户真实名,绑卡开户名需与此名一致）",
                    checkName: "* （只能输入汉字）"
                }
            }
            , submitHandler: function (form) {
                ajaxRequest({
                    url: "<%=basePath%>agent/ajaxAddUser.json",
                    data: {
                        account: $("input[name='account']").val(),
                        password: $.md5($("input[name='password']").val()),
                        name: $("input[name='name']").val(),
                        qq: $("input[name='qq']").val()
                    },
                    beforeSend: function() {
                        parent.showLoading();
                    },
                    success: function(json) {
                        parent.hideLoading();
                        if (json.result == 1) {
                            $(".button_3").trigger("click");
                            $("form[name='addUserForm']").valid();
                            Tools.toast("添加成功");
                        } else {
                            Tools.toast("操作失败：" + json.description);
                        }
                    }
                })
                $(form).ajaxSubmit(options);
            }
        });
        $("form[name='addUserForm']").submit();
    });
</script>
<c:import url="../common/bodyEnd.jsp"/>