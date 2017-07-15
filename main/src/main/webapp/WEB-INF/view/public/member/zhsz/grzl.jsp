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
        <c:import url="common/nav.jsp" >
            <c:param name="drawPasswd" value="${}"/>
        </c:import>
        <table class="eveb_setting_table">
            <tbody>
            <tr>
                <td class="tit">会员名</td>
                <td class="wid">${userSession.account}</td>
                <td class="tit">手机号码</td>
                <td class="wid">
                    <c:choose>
                        <c:when test="${not empty userSession.telephone}">
                            <span class="ff">${fn:substring(userSession.telephone, 0, 3)}***${fn:substring(userSession.telephone, 4, 7)}</span>
                            <span class="green"><i class="icon_mini icon_ok"></i>已绑定</span>
                        </c:when>
                        <c:otherwise>
                            <a href="javascript:void(0)" onclick="eveb_popup_show('#eveb_setting_edit')">立即绑定</a>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <td class="tit">真实姓名</td>
                <td class="wid">${userSession.name}</td>
                <td class="tit">电子邮箱</td>
                <td colspan="2" class="wid">
                    <c:choose>
                        <c:when test="${not empty userSession.email}">
                            <span class="ff">${userSession.email}</span>
                            <span class="green"><i class="icon_mini icon_ok"></i>已绑定</span>
                        </c:when>
                        <c:otherwise>
                            <a  href="javascript:void(0)" onclick="eveb_popup_show('#eveb_setting_edit')">立即绑定</a>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <td class="tit">昵称</td>
                <td class="ff wid">${userSession.nickname}<a href="javascript:void(0)" onclick="eveb_popup_show('#eveb_setting_edit')"> 编辑</a>
                </td>
                <td class="tit">QQ</td>
                <td class="ff wid">${userSession.qq}<a href="javascript:void(0)" onclick="eveb_popup_show('#eveb_setting_edit')"> 编辑</a></td>
            </tr>
            <tr>
                <td class="tit">生日</td>
                <td class="ff wid"><fmt:formatDate value="${userSession.birthday}" pattern="yyyy-MM-dd"/><a
                        href="javascript:void(0)" onclick="eveb_popup_show('#eveb_setting_edit')"> 编辑</a></td>
                <td class="tit">性别</td>
                <td class="ff wid">
                    <c:choose>
                        <c:when test="${userSession.sex == 1}">男</c:when>
                        <c:otherwise>女</c:otherwise>
                    </c:choose>
                    <a href="javascript:void(0)" onclick="eveb_popup_show('#eveb_setting_edit')"> 编辑</a>
                </td>
            </tr>
            </tbody>
        </table>
        <c:choose>
            <c:when test="${not empty userSession.email && not empty userSession.telephone}">
                <div class="eveb_tip light">
                    您的个人资料已经完善，如需修改请联系在线客服<br>完善个人资料可以立即获得完善优惠奖励
                </div>
            </c:when>
            <c:otherwise>
                <div class="eveb_tip light">
                    请完善资料
                </div>
            </c:otherwise>
        </c:choose>

    </div>
    <!-- help content e -->
    <div class="eveb_popup_wrap" style="display: none;"></div>
    <div class="eveb_popup" id="eveb_setting_edit" style="display: none;">
        <div class="eveb_popup_hd">
            <h4 class="fl">编辑个人资料</h4>
            <a href="javascript:void(0)" onclick="eveb_popup_hide()" class="icon_mini icon_close fr" title="关闭"></a>
        </div>
        <div class="eveb_popup_bd">
            <form name="editUserInfoForm" novalidate="novalidate" onsubmit="return false;">
                <ul class="eveb_form">
                    <li>
                        <span>会员名：</span>
                        ${userSession.account}
                    </li>
                    <li>
                        <span>昵称：</span>
                        <input type="text" style="width:140px;" class="_border" value="${userSession.nickname}"
                               name="nickname" id="nickname">
                        <label class="error" for="nickname"></label>
                    </li>
                    <li>
                        <span>生日：</span>
                        <input onclick="laydate({istime: true, format: 'YYYY-MM-DD'})" name="birthday" id="birthday"
                               type="text" size="16" class="_border" style="width:140px;"
                               value="<fmt:formatDate value="${userSession.birthday}" pattern="yyyy-MM-dd" />" readonly>
                        <label class="error" for="birthday"></label>
                    </li>
                    <li>
                        <span>QQ：</span>
                        <input type="text" style="width:140px;" maxlength="11" class="_border" value="${userSession.qq}" name="qq" id="qq" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')">
                        <label class="error" for="qq"></label>
                    </li>
                    <li>
                        <span>性别：</span>
                        <select name="sex" id="sex">
                            <option value="1" <c:if test="${userSession.sex == 1}">selected="selected"</c:if>>男</option>
                            <option value="2" <c:if test="${userSession.sex == 2}">selected="selected"</c:if>>女</option>
                        </select>
                    </li>
                    <li>
                        <span>手机号码：</span>
                        <c:choose>
                            <c:when test="${empty userSession.telephone}">
                                <input name="telephone" maxlength="11" type="text" size="20" class="_border" id="telephone" onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')">
                            </c:when>
                            <c:otherwise>
                                <input name="telephone" type="text" size="20" class="_border" value="${userSession.telephone}" id="telephone" readonly>
                            </c:otherwise>
                        </c:choose>

                        <label class="error" for="telephone"></label>
                    </li>
                    <li>
                        <span>电子邮箱：</span>
                        <c:choose>
                            <c:when test="${empty userSession.email}">
                                <input name="email" type="text" size="20" class="_border">
                            </c:when>
                            <c:otherwise>
                                <input name="email" type="text" size="20" class="_border" value="${userSession.email}" id="email" readonly>
                            </c:otherwise>
                        </c:choose>
                        <label class="error" for="email"></label>
                    </li>

                </ul>
                <div class="eveb_popup_btn">
                    <input type="submit" class="button_medium button_1" value="确认">
                    <a href="javascript:void(0)" class="button_medium button_3" onclick="eveb_popup_hide()">取消</a>
                </div>
            </form>
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<script>

    //弹窗 定位
    function eveb_popup_position(_target){
        var popupW = $(_target).width() / 2;
        var popupH = $(_target).height() / 2;
        $(_target).css('margin-left',-popupW).css('margin-top',-popupH);
    }
    //弹窗 显示
    function eveb_popup_show(_target){
        scrollHeight = $(document).height();
        $('.eveb_popup_wrap').height(scrollHeight);
        eveb_popup_position(_target);
        $('.eveb_popup').fadeOut('fast');
        $('.eveb_popup_wrap').fadeIn('fast');
        $(_target).fadeIn('fast');
        $('.eveb_popup_wrap').click(function(){
            eveb_popup_hide();
        })
        $("form[name='editUserInfoForm']").valid();
    }
    //弹窗 关闭
    function eveb_popup_hide(){
        $('.eveb_popup_wrap').fadeOut('fast');
        $('.eveb_popup').fadeOut('fast');
    }

    $(function () {
        $("form[name='editUserInfoForm']").validate({
            rules: {
                nickname: {
                    required: true
                },
                birthday: {
                    required: true
                },
                qq: {
                    required: true,
                    minlength: 5,
                    maxlength: 11
                },
                telephone: {
                    required: true,
                    minlength: 11,
                    maxlength: 11
                },
                email: {
                    required: true,
                    email: true
                }
            },
            messages: {
                nickname: {
                    required: "* 昵称必填！"
                },
                birthday: {
                    required: "* 格式：yyyy-MM-dd"
                },
                qq: {
                    required: "* 请输入QQ号",
                    minlength: "* 请输入正确格式的QQ号",
                    maxlength: "* 请输入正确格式的QQ号"
                },
                telephone: {
                    required: "* 一经确认不能修改",
                    minlength: "* 请输入11位手机号码",
                    maxlength: "* 请输入11位手机号码"
                },
                email: {
                    required: "* 一经确认不能修改",
                    email: "* 请输入正确格式的电子邮件"
                }
            }
            , submitHandler: function (form) {
                var options = {
                    url: "<%=basePath%>member/zhsz/ajaxEditUserInfo.json",
                    success: showResponse,      //提交后的回调函数
                    type: 'post',               //默认是form的method（get or post），如果申明，则会覆盖
                    dataType: 'json',           //html(默认), xml, script, json...接受服务端返回的类型
                    timeout: 3000               //限制请求的时间，当请求大于3秒后，跳出请求
                }
                $(form).ajaxSubmit(options);
            }
        });
        function showResponse(json) {
            if (json.result == 1) {
                alert("修改成功");
                $(".eveb_nav_sub ul li:eq(0) a").trigger("click");
                $(".icon_close").trigger("click");
                location.reload();
            } else {
                alert("修改失败：" + json.description);
            }
        };
    });
</script>
<c:import url="../common/bodyEnd.jsp"/>