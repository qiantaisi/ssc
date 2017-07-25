<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<c:import url="../common/checkIsChildFrame.jsp"/>
<c:import url="top.jsp"/>

<c:import url="menu.jsp"/>


<div class="main login_main">
    <div class="container login_nr">
        <div class="login_nr_t clearfix">
            <div class="left login_nr_t_lf">
                账号登录
            </div>
            <div class="right">
                没有账号?<a href="<%=basePath%>register.html">立即注册</a>
            </div>
        </div>
        <div class="login_nr_b">
            <div class="clearfix login_nr_gp">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			用户名:
			    		</span>
                <div class="login_nr_gp_rt clearfix">
                    <input type="text" name="registerLoginAccount" id="registerLoginAccount" class="left"
                           placeholder="请输入用户名"/>
                    <div class="left erro">
                        请输入用户名（3-15个英文、数字）
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
                    <input type="password" name="registerLoginPassword" id="registerLoginPassword" class="left"
                           placeholder="请输入密码"/>

                </div>
            </div>
            <div class="clearfix login_nr_gp login_yz">
			    		<span class="left login_nr_name">
			    			<span class="star">
			    				*
			    			</span>
			    			验证码:
			    		</span>
                <div class="login_nr_gp_rt clearfix">
                    <p><input type="text" id="registerLoginYzm" placeholder="验证码"
                              onfocus="refreshYzm(document.getElementById('registerYzmImg2'))"/><img
                            id="registerYzmImg2" onclick="refreshYzm(this)"
                            src="<%=basePath%>code/yzm?imgWidth=113&imgHeight=43&imgFontHeight=40&imgCodeY=35&imgCodeX=2"/>
                    </p>
                </div>
            </div>
            <div class="login_b">
                <p>
                    <a href="javascript:void(0)" onclick="login()">登录</a>
                </p>
                <p>
                    <a href="<%=basePath%>register.html">免费开户</a>
                </p>
            </div>
            <div class="login_b_link">
                <a href="${kefuUrl}">忘记密码?</a>
                <span>|</span>
                <a href="${kefuUrl}">在线客服</a>
            </div>
        </div>
    </div>
</div>

<c:import url="bottom.jsp"/>

<div class="copy recopy">
    <c:import url="../common/copyright_time.jsp"/>&nbsp;&nbsp;
</div>

<script type="text/html" id="template_khxy">
    ${khxy.khxy}
</script>

<c:import url="../common/commonJs.jsp"/>
<c:import url="../common/jsCommonLogin.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>
<c:import url="../common/copyright.jsp"/>