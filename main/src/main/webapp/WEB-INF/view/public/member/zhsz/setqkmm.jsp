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
    <div class="eveb_content ">
        <c:import url="common/nav.jsp"/>
        <div class="tishiTxt">
            <span style="color:red;">您还未设置您的取款密码，请设置您的取款密码。</span>
            <a href="javascript:void(0)" class="btnSetWithdraw">设置取款密码</a>
        </div>
        <div class="form_content hideForm">
            <form name="setPasswordForm" novalidate="novalidate" onsubmit="return false;">
                <ul class="eveb_form eveb_setting_form re-withdraw-ul">
                    <li>
                        <span>登录密码：</span>
                        <input name="loginPassword" id="loginPassword" type="password" size="20" class="passwinp">
                        <label class="error" for="loginPassword">* 请填写您的登录密码</label>
                    </li>
                    <li>
                        <span>取款密码：</span>
                        <input name="withdrawpassword" id="withdrawpassword" type="password" size="20" class="passwinp">
                        <label class="error" for="withdrawpassword">* 6~12位字母或数字组成</label>
                    </li>
                    <li>
                        <span>确认取款密码：</span>
                        <input name="confirmWithdrawPassword" id="confirmWithdrawPassword" type="password" size="20"
                               class="passwinp">
                        <label class="error" for="confirmWithdrawPassword"></label>
                    </li>
                </ul>
                <div class="eveb_form_submit">
                    <input type="submit" value="确认设置" class="button_medium button_1">
                    <input type="reset" value="重置" class="ml_10 button_medium button_3">
                </div>
                <input type="hidden" name="oldPassword"/>
                <input type="hidden" name="newPassword">
            </form>
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<script>
    $(function () {
        $(".btnSetWithdraw").click(function () {
            $(".tishiTxt").addClass("hideForm");
            $(".form_content").removeClass('hideForm');
        });
    });
</script>
<script>
    $(function () {
        //自定义正则表达示验证方法
        $.validator.addMethod("checkPassword",function(value,element,params){
            var checkPassword = /^[0-9a-zA-Z]{6,12}$/;
            return this.optional(element)||(checkPassword.test(value));
        },"");

        $("form[name='setPasswordForm']").validate({
            rules:{
                loginPassword:{required:true}
                ,withdrawpassword:{
                    required:true,
                    checkPassword: true
                }
                ,confirmWithdrawPassword:{
                    required:true,
                    equalTo: "#withdrawpassword"
                }
            }
            ,messages:{
                loginPassword:{required:"* 请填写您的原始登录密码"}
                ,withdrawpassword:{
                    required:"* 6~12位字母或数字组成",
                    checkPassword:"* 6~12位字母或数字组成"
                }
                ,confirmWithdrawPassword:{
                    required:"* 请再次填写新密码",
                    checkPassword:"* 6~12位字母或数字组成",
                    equalTo: "两次密码输入不一致"
                }
            }
            ,submitHandler:function(form){
                var options = {
                    url: "<%=basePath%>member/zhsz/ajaxResetDrawPassword.json",
                    success: showResponse,      //提交后的回调函数
                    clearForm: true,            //成功提交后，清除所有表单元素的值
                    type: 'post',               //默认是form的method（get or post），如果申明，则会覆盖
                    dataType: 'json',           //html(默认), xml, script, json...接受服务端返回的类型
                    timeout: 3000               //限制请求的时间，当请求大于3秒后，跳出请求
                }
                $("input[name='oldPassword']").val($.md5($("input[name='loginPassword']").val()));
                $("input[name='newPassword']").val($.md5($("input[name='withdrawpassword']").val()));
                $(form).ajaxSubmit(options);
            }
        })

    });

    function showResponse(json, statusText){
        if (json.result == 1) {
            alert("设置成功");
            document.location.href = CONFIG.BASEURL + "member/zhsz.html?module=grzl";
        } else {
            alert("设置失败：" + json.description);
        }
    };
</script>
<c:import url="../common/bodyEnd.jsp"/>