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
    <c:import url="common/nav.jsp" />
    <form name="resetPasswordForm" novalidate="novalidate" onsubmit="return false;">
        <ul class="eveb_form eveb_setting_form">
            <li>
                <span>原密码：</span>
                <input name="oldPassword" id="oldPassword" type="password" size="20" class="passwinp">
                <label class="error" for="oldPassword">* 请填写您的原始登录密码</label>
            </li>
            <li>
                <span>新密码：</span>
                <input name="newPassword" id="newpassword" type="password" size="20" class="passwinp">
                <label class="error" for="newpassword">* 6~18位字母数字组合</label>
            </li>
            <li>
                <span>确认密码：</span>
                <input name="confirmPassword" id="confirmPassword" type="password" size="20" class="passwinp">
                <label class="error" for="confirmPassword"></label>
            </li>
        </ul>
        <div class="eveb_form_submit">
            <input type="submit" value="确认修改" class="button_medium button_1">
            <input type="reset" value="重置" class="ml_10 button_medium button_3">
        </div>
    </form>
</div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<script>
    $("form[name='resetPasswordForm']").validate({
        rules:{
            oldPassword:{required:true}
            ,newPassword:{
                required:true,
                minlength: 5
            }
            ,confirmPassword:{
                required:true,
                minlength: 5,
                equalTo: "#newpassword"
            }
        }
        ,messages:{
            oldPassword:{required:"* 请填写您的原始登录密码"}
            ,newPassword:{
                required:"* 6~18位字母数字组合",
                minlength: "密码长度不能小于 5 个字母"
            }
            ,confirmPassword:{
                required:"* 请再次填写新密码",
                minlength: "密码长度不能小于 5 个字母",
                equalTo: "两次密码输入不一致"
            }
        }
        ,submitHandler:function(form){
            var options = {
                url: "<%=basePath%>member/zhsz/ajaxResetPassword.json",
                success: showResponse,      //提交后的回调函数
                clearForm: true,            //成功提交后，清除所有表单元素的值
                type: 'post',               //默认是form的method（get or post），如果申明，则会覆盖
                dataType: 'json',           //html(默认), xml, script, json...接受服务端返回的类型
                timeout: 3000               //限制请求的时间，当请求大于3秒后，跳出请求
            }
            $("input[name='oldPassword']").val($.md5($("input[name='oldPassword']").val()));
            $("input[name='newPassword']").val($.md5($("input[name='newPassword']").val()));
            $("input[name='confirmPassword']").val($.md5($("input[name='confirmPassword']").val()));
            $(form).ajaxSubmit(options);
        }
    })
    function showResponse(json, statusText){
        if (json.result == 1) {
            alert("修改成功");
        } else {
            alert("修改失败：" + json.description);
        }
    };
</script>
<c:import url="../common/bodyEnd.jsp"/>