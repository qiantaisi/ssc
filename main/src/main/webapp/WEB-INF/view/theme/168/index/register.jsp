<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../common/bodyStart.jsp"/>
<c:import url="../common/checkIsChildFrame.jsp"/>
<c:import url="top.jsp"/>
<c:import url="menu.jsp"/>

<jsp:include page="../../../public/index/register.jsp" />
<c:import url="bottom.jsp"/>

<script type="text/html" id="template_khxy">
    ${khxy.khxy}
</script>

<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/jsCommonLogin.jsp"/>

<%--<script>
    $(function () {
        ajaxRequest({
            url: "<%=basePath%>ajaxGetRegisterResult.json",
            data: {},
            success:function(obj){
                //判断QQ是否必填
                if(obj.checkQq){

                    if(obj.needRequiredQq){

                        $(".starqq").html("*");
                    }
                }else{
                    $(".hidqq").hide();
                }
                if(obj.checkEmail){

                    if(obj.needRequiredEmail){

                        $(".staremail").html("*");

                    }
                }else{
                    $(".hidemail").hide();
                }
                if(obj.checkPhone){

                    if(obj.needRequredPhone){

                        $(".starphone").html("*");
                    }
                }else{
                        $(".hidphone").hide();
                }

            }

        });
        $(".login_nr_b .login_nr_gp .login_nr_gp_rt input.inputStr").keypress(function (e) {
            if (e.which == 13) {// 判断所按是否回车键
                var inputs = $(".login_nr_b").find(".inputStr"); // 获取表单中的所有输入框
                var idx = inputs.index(this); // 获取当前焦点输入框所处的位置
                if (idx == inputs.length - 1) {// 判断是否是最后一个输入框
                    if (confirm("最后一个输入框已经输入,是否提交?")) // 用户确认
                        $("#btn-register").trigger("click");// 提交表单
                } else {
                    inputs[idx + 1].focus(); // 设置焦点
                    inputs[idx + 1].select(); // 选中文字
                }
                return false;// 取消默认的提交行为
            }
        });


        $(".all_fenlei_yin").css("display", "none");
        $("#btn-register").click(function () {
            var account = $("input[name='account']").val(); // 账号
            var password = $("input[name='password']").val();   // 密码
            var phone = $("input[name='phone']").val();   // 手机号码
            var email = $("input[name='email']").val();   // 邮箱号码
            var qq = $("input[name='qq']").val();   // QQ


            var confirmPassword = $("input[name='confirmPassword']").val(); // 确认密码
            var name = $("input[name='name']").val();   // 姓名
            if (!account) {
                $(".yhm").find(".info").hide();
                $(".yhm").find(".error").html("请输入用户名").show();
                return;
            }

            if (!account.match(/^[a-zA-Z][0-9a-zA-Z]{5,11}$/)) {
                $(".yhm").find(".info").hide();
                $(".yhm").find(".error").html("请输入以字母开头的6-12位字母、数字组成的用户名").show();
                return;
            }

            if (!password) {
                $(".mm").find(".info").hide();
                $(".mm").find(".error").html("请输入密码").show();
                return;
            }

            if (!password.match(/^[0-9a-zA-Z]{6,12}$/)) {
                $(".mm").find(".info").hide();
                $(".mm").find(".error").html("请输入6-12位字母、数字的密码").show();
                return;
            }

            if (!confirmPassword) {
                $(".qmm").find(".info").hide();
                $(".qmm").find(".error").html("请请输入确认密码").show();
                return;
            }

            if (confirmPassword != password) {
                $(".qmm").find(".info").hide();
                $(".qmm").find(".error").html("确认密码不正确").show();
                return;
            }

            if (!name) {
                $(".name").find(".info").hide();
                $(".name").find(".error").html("请输入姓名").show();
                return;
            }

            if (!name.match(/^[\u4e00-\u9fa5]+$/)) {
                $(".name").find(".info").hide();
                $(".name").find(".error").html("姓名只能是汉字").show();
                return;
            }

            $(".erro .info").hide();
            $(".erro .error").hide();

            ajaxRequest({
                url: "<%=basePath%>member/ajaxRegister.json",
                data: {
                    account: account,
                    password: $.md5(password),
                    name: name,
                    phone: phone,
                    email: email,
                    agentId: $.cookie("agentId"),
                    qq: qq
                },
                beforeSend: function() {
                    showLoading();
                },
                success: function (json) {
                    if (json.result == 1) {
                        Tools.toast("注册成功");
                        $.cookie("uid", json.userId, {path: "/"});
                        $.cookie("token", json.token, {path: "/"});
                        window.location.href = "<%=basePath%>main.html";
                    }else {
                        Tools.toast("注册失败：" + json.description);
                    }
                },
                complete: function() {
                    hideLoading();
                }
            });
        });
    });
    function showLoading() {
        layer.load(2, {
            shade: [0.1, '#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
</script>--%>
<c:import url="../common/bodyEnd.jsp"/>



