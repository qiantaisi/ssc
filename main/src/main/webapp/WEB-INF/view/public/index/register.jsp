<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<div class="main login_main">
    <div class="container login_nr">
        <div class="login_nr_t clearfix">
            <div class="left login_nr_t_lf">
                账号登录
            </div>
            <div class="right">
                已有账号?<a href="<%=basePath%>login.html">立即登录</a>
            </div>
        </div>
        <form id="myform">
            <div class="login_nr_b">
                <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			账号:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="text" name="account" id="inputyhm" class="inputStr left" placeholder="请输入用户名"/>
                        <div class="left erro">
                        <span class="yhm">
                             <span id="yesyhm" class="sl-correct-verifycode hideRegImage"> <img src="${pubStaticPath}images/lvgou.png" style="width: 20px;"/> </span> <span id="noyhm" class="sl-error-verifycode hideRegImage"><img src="${pubStaticPath}images/hongcha.png" style="width: 20px;"/></span>
                            <span class="info">字母开头的6-12位字母数字组成的用户名</span>
                            <span class="bitianyhm" style="color: red">&nbsp;&nbsp;&nbsp;必填</span>
                            <span class="error red hide"></span>
                        </span>
                        </div>
                    </div>
                </div>
                <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			密码:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="password" name="password" id="inputPassword" class="inputStr left" placeholder="请输入密码"/>
                        <div class="left erro">
                        <span class="mm">
                             <span id="yes" class="sl-correct-verifycode hideRegImage"> <img src="${pubStaticPath}images/lvgou.png" style="width: 20px;"/> </span> <span id="no" class="sl-error-verifycode hideRegImage"><img src="${pubStaticPath}images/hongcha.png" style="width: 20px;"/></span>
                            <span class="info">输入6-12位字母、数字的密码</span>
                            <span class="bitianmm" style="color: red">&nbsp;&nbsp;&nbsp;必填</span>
                            <span class="error red hide"></span>
                        </span>
                        </div>
                    </div>
                </div>
                <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			确认密码:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="password" name="confirmPassword" id="inputconfirmPassword" class="inputStr left" placeholder="确认密码"/>
                        <div class="left erro">
                        <span class="qmm">
                            <span id="yesqmm" class="sl-correct-verifycode hideRegImage"> <img src="${pubStaticPath}images/lvgou.png" style="width: 20px;"/> </span><span id="noqmm" class="sl-error-verifycode hideRegImage"><img src="${pubStaticPath}images/hongcha.png" style="width: 20px;"/></span>
                            <span class="info">与上面输入密码必须保持一致</span>
                            <span class="bitianqmm" style="color: red">&nbsp;&nbsp;&nbsp;必填</span>
                            <span class="error red hide"></span>
                        </span>
                        </div>
                    </div>
                </div>

                <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			姓名:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="text" name="name" id="inputxm" class="inputStr left" placeholder="请输入姓名"/>
                        <div class="left erro">
                        <span class="name">
                             <span id="yesxm" class="sl-correct-verifycode hideRegImage"> <img src="${pubStaticPath}images/lvgou.png" style="width: 20px;"/></span><span id="noxm" class="sl-error-verifycode hideRegImage"><img src="${pubStaticPath}images/hongcha.png" style="width: 20px;"/></span>
                            <span class="info">姓名必须和绑定的银行卡户名一致</span>
                            <span class="bitianxm" style="color: red">&nbsp;&nbsp;&nbsp;必填</span>
                            <span class="error red hide"></span>
                        </span>
                        </div>
                    </div>
                </div>
                <c:if test="${registerResult.checkPhone}">
                <div class="clearfix login_nr_gp iphoneTd">
                            <span class="left login_nr_name">
                                <span class="star starphone">
                                    <c:if test="${registerResult.needRequredPhone}">*</c:if>
                                </span>
                                手机:
                            </span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="text" name="phoneName" id="inputsj" class="inputStr left" placeholder="请输入手机"/>
                        <div class="left erro">
                            <span class="sj">
                                <span id="yessj" class="sl-correct-verifycode hideRegImage"><img src="${pubStaticPath}images/lvgou.png" style="width: 20px;"/></span><span id="nosj" class="sl-error-verifycode hideRegImage"><img src="${pubStaticPath}images/hongcha.png" style="width: 20px;"/></span>
                                <span class="info">请输入您的手机</span>

                                <span class="bitianIphone" style="color: red"></span>

                                <span class="error red hide"></span>
                            </span>
                        </div>
                    </div>
                </div>
                </c:if>
                <c:if test="${registerResult.checkEmail}">
                <div class="clearfix login_nr_gp eamilTd">
			    		<span class="left login_nr_name">
			    			<span class="star staremail">
                                <c:if test="${registerResult.needRequiredEmail}">*</c:if>
			    			</span>
			    			邮箱:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="text" name="email" id="inputyx" class="inputStr left" placeholder="请输入邮箱"/>
                        <div class="left erro">
                        <span class="yx">
                            <span id="yesyx"  class="sl-correct-verifycode hideRegImage"><img src="${pubStaticPath}images/lvgou.png" style="width: 20px;"/></span><span id="noyx" class="sl-error-verifycode hideRegImage"><img src="${pubStaticPath}images/hongcha.png" style="width: 20px;"/></span>
                            <span class="info">请输入您的邮箱</span>
                             <span class="bitianemail" style="color: red"></span>
                            <span class="error red hide"></span>
                        </span>

                        </div>
                    </div>
                </div>
                </c:if>
                <c:if test="${registerResult.checkQq}">
                <div class="clearfix login_nr_gp qqTd">
			    		<span class="left login_nr_name">
			    			<span class="star starqq">
                                <c:if test="${registerResult.needRequiredQq}">*</c:if>
			    			</span>
			    			QQ:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="text" name="qq" id="inputqq" class="inputStr left" placeholder="请输入QQ"/>
                        <div class="left erro">
                        <span class="qq">
                             <span id="yesqq"  class="sl-correct-verifycode hideRegImage"><img src="${pubStaticPath}images/lvgou.png" style="width: 20px;"/></span><span id="noqq" class="sl-error-verifycode hideRegImage"><img src="${pubStaticPath}images/hongcha.png" style="width: 20px;"/></span>
                            <span class="info">请输入QQ</span>
                             <span class="bitianqq" style="color: red"></span>
                            <span class="error red hide"></span>
                        </span>

                        </div>
                    </div>
                </div>
                </c:if>
                <c:if test="${registerResult.vcSwtich}">
                <div class="clearfix login_nr_gp yzmTd">
			    		<span class="left login_nr_name">
			    			<span class="star staryzm">
                                *
			    			</span>
			    			验证码:
			    		</span>
                    <div class="login_nr_gp_rt clearfix">
                        <div>
                            <input name="yzm" type="text" id="registerLoginYzm" style="width: 125px;" placeholder="验证码"
                                  />
                            <img id="registerYzmImg2" onclick="refreshYzm(this)" style="margin-right: 15px;"
                                 src="<%=basePath%>code/yzm?imgWidth=100&imgHeight=30&imgFontHeight=30&imgCodeY=25&imgCodeX=2"/>

                            <span class="yzm">
                                   <span class="info">请输入验证码</span>
                                 <span class="bitian" style="color: red">&nbsp;&nbsp;&nbsp;</span>
                                   <span class="error red hide"></span>
                               </span>
                        </div>

                    </div>
                </div>
                </c:if>
                <div class="clearfix login_nr_gp" style="padding-left: 40px;">
                    <span class="left login_nr_name"></span>
                    <div class="login_nr_gp_rt clearfix">
                        <input type="checkbox" class="left" checked="checked" style="width:30px;"/><span>注册即表示同意<a
                            href="javascript:void(0)" onclick="showKhxy()"
                            class="xieyiCss">《${webName}服务使用协议》</a></span></h3>
                    </div>
                </div>
                <div class="login_b">
                    <p>
                        <input type="button" class="mfkh" value="免费开户" id="btn-register"/>
                        <input type="reset" class="mfkh" value="重置" onclick="restbtn()"/>
                    </p>
                </div>
        </form>
        <div class="login_b_link" style="padding-left: 75px;">
            <a href="${kefuUrl}">忘记密码?</a>
            <span>|</span>
            <a href="${kefuUrl}" target="_blank">在线客服</a>
        </div>
    </div>
</div>
</div>

<script type="text/html" id="template_khxy">
    ${khxy.khxy}
</script>

<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/jsCommonLogin.jsp"/>

<script>
    function showKhxy() {
        //自定页
        layer.open({
            type: 1,
            skin: 'layui-layer-popup', //样式类名
            closeBtn: 2, //显示关闭按钮
            anim: 2,
            title: '开户协议',
            shadeClose: true, //开启遮罩关闭
            content: $("#template_khxy").html()
        });
    }

    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);

        src = "<%=basePath%>code/yzm?timestamp=" + (new Date()).getTime();
        $.each(params, function (index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        $(obj).attr("src", src);
    }

    function restbtn(){
        window.location.href ="<%=basePath%>register.html";
    }

    var qqCheck = false;
    var iphoneCheck = false;
    var emailCheck = false;
    $(function () {
       var flagiphone= ${registerResult.needRequredPhone}
       var flageamil= ${registerResult.needRequiredEmail}
       var flagqq= ${registerResult.needRequiredQq}
       var isiphone= ${registerResult.checkPhone}
        var isqq=${registerResult.checkQq}
       var isemail= ${registerResult.checkEmail}
        var isyzm=${registerResult.vcSwtich}

        var account = $("input[name='account']").val(); // 账号
        var password = $("input[name='password']").val();   // 密码
        var phone = $("input[name='phoneName']").val();  // 手机号码
        var email = $("input[name='email']").val();   // 邮箱号码
        var qq = $("input[name='qq']").val();   // QQ
        var yzm = $("input[name='yzm']").val();   // 验证码

        $("#inputyhm").blur(function(){
            var account = $("input[name='account']").val(); // 账号
            if (!account) {
                $(".yhm").find(".info").hide();
                $('#yesyhm').hide();
                $('#noyhm').show();
                $(".yhm").find(".error").html("请输入用户名").show();
            }else if (!account.match(/^[a-zA-Z][0-9a-zA-Z]{5,11}$/)) {
                $(".yhm").find(".info").hide();
                $('#yesyhm').hide();
                $('#noyhm').show();
                $(".yhm").find(".error").html("请输入以字母开头的6-12位字母、数字组成的用户名").show();

            }else {
                ajaxRequest({
                    url: "<%=basePath%>ajaxChekeAcount.json",
                    data: {
                        account: account
                    },
                    success:function (obj) {
                        if(obj.accountUnique){
                            $('#yesyhm').show();
                            $('#noyhm').hide();
                            $(".yhm").find(".info").hide();
                            $(".yhm").find(".error").html("请输入以字母开头的6-12位字母、数字组成的用户名").hide();
                            $(".yhm").find(".error").html("请输入用户名").hide();
                            $(".bitianyhm").hide();
                        }else{
                            $(".yhm").find(".info").hide();
                            $('#yesyhm').hide();
                            $('#noyhm').show();
                            $(".yhm").find(".error").html("用户名已被注册").show();
                        }
                    }

                });
            }

        });
        $("#inputPassword").blur(function(){
            var password = $("input[name='password']").val();   // 密码
            if (!password) {
                $(".mm").find(".info").hide();
                $('#yes').hide();
                $('#no').show();
                $(".mm").find(".error").html("请输入密码").show();
            }else if (!password.match(/^[0-9a-zA-Z]{6,12}$/)) {
                $(".mm").find(".info").hide();
                $('#yes').hide();
                $('#no').show();
                $(".mm").find(".error").html("请输入6-12位字母、数字的密码").show();
            }else{
                $('#yes').show();
                $('#no').hide();
                $(".mm").find(".info").hide();
                $(".mm").find(".error").html("请输入6-12位字母、数字的密码").hide();
                $(".mm").find(".error").html("请输入密码").hide();
                $(".bitianmm").hide();
            }

        });


        $("#inputconfirmPassword").blur(function(){
            var confirmPassword = $("input[name='confirmPassword']").val(); // 确认密码
            var password = $("input[name='password']").val();   // 密码
            if (!confirmPassword) {

                $(".qmm").find(".info").hide();
                $('#yesqmm').hide();
                $('#noqmm').show();
                $(".qmm").find(".error").html("请请输入确认密码").show();
            }else if (confirmPassword != password) {
                $(".qmm").find(".info").hide();
                $('#yesqmm').hide();
                $('#noqmm').show();
                $(".qmm").find(".error").html("确认密码不正确").show();
            }else{
                $('#yesqmm').show();
                $('#noqmm').hide();
                $(".qmm").find(".info").hide();
                $(".qmm").find(".error").html("与上面输入密码必须保持一致").hide();
                $(".qmm").find(".error").html("请请输入确认密码").hide();
                $(".bitianqmm").hide();
            }

        });

        $("#inputxm").blur(function(){
            var name = $("input[name='name']").val();   // 姓名
            if (!name) {
                $(".name").find(".info").hide();
                $('#yesxm').hide();
                $('#noxm').show();
                $(".name").find(".error").html("请请输入姓名").show();
            }else  if (!name.match(/^[\u4e00-\u9fa5]+$/)) {
                $(".name").find(".info").hide();
                $('#yesxm').hide();
                $('#noxm').show();
                $(".name").find(".error").html("姓名只能是汉字").show();
            }else{
                $('#yesxm').show();
                $('#noxm').hide();
                $(".name").find(".info").hide();
                $(".name").find(".error").html("姓名只能是汉字").hide();
                $(".name").find(".error").html("请请输入确认密码").hide();
                $(".bitianxm").hide();
            }

        });



        if(isiphone){
            if (!flagiphone) {
                $(".bitianIphone").html("选填").css("color", "#AAAAAA");
                $("#inputsj").blur(function () {
                    var phone = $("input[name='phoneName']").val();
                    if (!(phone.match(/^0?(13[0-9]|15[012356789]|17[012345678]|18[02356789]|147)[0-9]{8}$/) != null || phone.match(/^0?[5689][0-9]{7}$/) != null) && phone) {
                        $(".sj").find(".info").hide();
                        $('#yessj').hide();
                        $('#nosj').show();
                        $(".sj").find(".error").html("请输入正确手机号").show();
                    } else if (!phone.match(/^0?([5689])[0-9]{7}$/) && phone) {
                        $(".sj").find(".info").hide();
                        $('#yessj').hide();
                        $('#nosj').show();
                        $(".sj").find(".error").html("请输入正确手机号").show();
                    } else {
                        $('#yessj').show();
                        $('#nosj').hide();
                        $(".sj").find(".info").hide();
                        $(".sj").find(".error").html("请输入正确手机号").hide();
                        $(".bitianIphone").hide();
                    }

                });
            } else {
                $(".bitianIphone").html("&nbsp;&nbsp;&nbsp;必填");
                $("#inputsj").blur(function () {
                    var phone = $("input[name='phoneName']").val();   // 姓名
                    if (!phone) {
                        $(".sj").find(".info").hide();
                        $('#yessj').hide();
                        $('#nosj').show();
                        $(".sj").find(".error").html("请输入手机").show();
                        return;
                    } else if (!(phone.match(/^0?(13[0-9]|15[012356789]|17[012345678]|18[02356789]|147)[0-9]{8}$/) != null || phone.match(/^0?[5689][0-9]{7}$/) != null)) {
                        $(".sj").find(".info").hide();
                        $('#yessj').hide();
                        $('#nosj').show();
                        $(".sj").find(".error").html("请输入正确手机号").show();
                    } else {
                        $('#yessj').show();
                        $('#nosj').hide();
                        $(".sj").find(".info").hide();
                        $(".sj").find(".error").html("请输入正确手机号").hide();
                        $(".sj").find(".error").html("请输入手机").hide();
                        $(".bitianIphone").hide();
                    }

                });
            }
        }
        if(isqq){
            if(!flagqq){
                $(".bitianqq").html("选填").css("color","#AAAAAA");
                $("#inputqq").blur(function(){
                    var qq = $("input[name='qq']").val();
                     if (!qq.match(/^\d{5,10}$/) && qq) {
                        $(".qq").find(".info").hide();
                        $('#yesqq').hide();
                        $('#noqq').show();
                        $(".qq").find(".error").html("请输入正确的QQ").show();
                    }else{
                        $('#yesqq').show();
                        $('#noqq').hide();
                        $(".qq").find(".info").hide();
                        $(".qq").find(".error").html("请输入正确的QQ").hide();
                        $(".qq").find(".error").html("请输入QQ").hide();
                        $(".bitianqq").hide();
                    }
                });
            }else {

                $(".bitianqq").html("&nbsp;&nbsp;&nbsp;必填");
                $("#inputqq").blur(function(){
                    var qq = $("input[name='qq']").val();
                    if (!qq) {
                        $(".qq").find(".info").hide();
                        $('#yesqq').hide();
                        $('#noqq').show();
                        $(".qq").find(".error").html("请输入QQ").show();
                        return;
                    } else  if (!qq.match(/^\d{5,10}$/)) {
                        $(".qq").find(".info").hide();
                        $('#yesqq').hide();
                        $('#noqq').show();
                        $(".qq").find(".error").html("请输入正确的QQ").show();
                    }else{
                        $('#yesqq').show();
                        $('#noqq').hide();
                        $(".qq").find(".info").hide();
                        $(".qq").find(".error").html("请输入正确的QQ").hide();
                        $(".qq").find(".error").html("请输入QQ").hide();
                        $(".bitianqq").hide();
                    }
                });

            }
        }

        if(isemail){
            if(flageamil){
                $(".bitianemail").html("&nbsp;&nbsp;&nbsp;必填");
                $("#inputyx").blur(function(){
                    var email = $("input[name='email']").val();
                    if (!email) {
                        $(".yx").find(".info").hide();
                        $('#yesyx').hide();
                        $('#noyx').show();
                        $(".yx").find(".error").html("请输入邮箱").show();
                        return;
                    } else  if (!email.match(/^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/ )) {
                        $(".yx").find(".info").hide();
                        $('#yesyx').hide();
                        $('#noyx').show();
                        $(".yx").find(".error").html("请输入正确的邮箱").show();
                    }else{
                        $('#yesyx').show();
                        $('#noyx').hide();
                        $(".yx").find(".info").hide();
                        $(".yx").find(".error").html("请输入正确的邮箱").hide();
                        $(".yx").find(".error").html("请输入邮箱").hide();
                        $(".bitianemail").hide();
                    }
                });
            }else {
                $(".bitianemail").html("选填").css("color","#AAAAAA");
                $("#inputyx").blur(function(){
                    var email = $("input[name='email']").val();
                    if (!email.match(/^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/ )&& email) {
                        $(".yx").find(".info").hide();
                        $('#yesyx').hide();
                        $('#noyx').show();
                        $(".yx").find(".error").html("请输入正确的邮箱").show();
                    }else{
                        $('#yesyx').show();
                        $('#noyx').hide();
                        $(".yx").find(".info").hide();
                        $(".yx").find(".error").html("请输入正确的邮箱").hide();
                        $(".yx").find(".error").html("请输入邮箱").hide();
                        $(".bitianemail").hide();
                    }
                });
            }
        }

        if(isyzm){
            $(".bitian").html("必填");
        }

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



        $("#btn-register").click(function () {
            var account = $("input[name='account']").val(); // 账号
            var password = $("input[name='password']").val();   // 密码
            var phone = $("input[name='phoneName']").val();  // 手机号码
            var email = $("input[name='email']").val();   // 邮箱号码
            var qq = $("input[name='qq']").val();   // QQ
            var yzm = $("input[name='yzm']").val();   // 验证码

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

            <c:if test="${registerResult.checkPhone && registerResult.needRequredPhone}">
            if (!phone) {
                $(".sj").find(".info").hide();
                $(".sj").find(".error").html("请输入手机").show();
                return;
            }
            </c:if>

            <c:if test="${registerResult.checkEmail && registerResult.needRequiredEmail}">
            if (!email.match(/^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/ )) {
                $(".yx").find(".info").hide();
                $(".yx").find(".error").html("请输入您正确的邮箱").show();
                return;
            }
            </c:if>

            <c:if test="${registerResult.checkQq && registerResult.needRequiredQq}">
            if (!qq.match(/^\d{5,10}$/)) {
                $(".qq").find(".info").hide();
                $(".qq").find(".error").html("请输入您正确的QQ").show();
                return;
            }
            </c:if>



            <c:if test="${registerResult.vcSwtich}">
            if (!yzm) {
                $(".yzm").find(".info").hide();
                $(".yzm").find(".error").html("请输入验证码").show();
                return;
            }
            </c:if>

            $(".erro .info").hide();
            $(".erro .error").hide();

            ajaxRequest({
                url: "<%=basePath%>member/ajaxRegister.json",
                data: {
                    account: account,
                    password: $.md5(password),
                    yzm: yzm,
                    name: name,
                    phone: phone,
                    email: email,
                    agentId: $.cookie("agentId"),
                    qq: qq
                },
                beforeSend: function () {
                    showLoading();
                },
                success: function (json) {
                    if (json.result == 1) {
                        Tools.toast("注册成功");
                        $.cookie("uid", json.userId, {path: "/"});
                        $.cookie("token", json.token, {path: "/"});
                        window.location.href = "<%=basePath%>main.html";
                    } else {
                        refreshYzm(document.getElementById('registerYzmImg2'));
                        Tools.toast("注册失败：" + json.description);
                    }
                },
                complete: function () {
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
</script>




