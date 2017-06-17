<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp" />
<c:import url="../common/checkIsChildFrame.jsp" />
<c:import url="../index/top.jsp" />

<div class="men_list">
    <div class="wid1">
        <div class="logo">
            <img src="${resPath}img/logo1.png" alt="">
        </div>
        <c:import url="../common/navList.jsp" />
    </div>
</div>

<div class="banner">
    <div class="bann">
        <ul>
            <li style="background:url(${resPath}img/img0.jpg) center no-repeat;"></li>
            <li style="background:url(${resPath}img/img0.jpg) center no-repeat;"></li>
            <li style="background:url(${resPath}img/img0.jpg) center no-repeat;"></li>
            <li style="background:url(${resPath}img/img0.jpg) center no-repeat;"></li>
        </ul>
    </div>
    <div class="four_men">
        <div class="wid1">
            <ul>
                <li class="acti"><a href="#">极具竞争力代理制度</a></li>
                <li><a href="#">最优彩票投注平台</a></li>
                <li><a href="#">全天候24小时在线服务</a></li>
                <li><a href="#">最安全系统</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="login_area wid1">
    <ul>
        <li><a href="#"><img src="${resPath}img/ico40.png" alt="">代理登录</a><p>agent login</p></li>

        <li><a class="a1" href="#"><img src="${resPath}img/ico41.png" alt="">代理注册</a><p>Agent registration</p></li>
    </ul>
</div>

<c:import url="../common/bottomInfo.jsp" />
<c:import url="../common/copyright.jsp" />
<c:import url="../common/commonJs.jsp" />
<c:import url="../common/jsCommonLogin.jsp" />
<script>
    function openGcdt(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        <%--windowOpen('<%=basePath%>ssc/index.html?module=' + module, '购彩大厅', 1285, 800);--%>
        windowOpenBlank('<%=basePath%>ssc/index.html?module=' + module);
    }

    function openHyzx(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        windowOpen('<%=basePath%>member/index.html?module=' + module, '会员中心', 1250, 834);
    }
    $(function(){
        fade(".banner .bann ul li",".banner .four_men ul li",30000,"","");
    });
</script>
<c:import url="../../../public/common/checkOnline.jsp" />
<c:import url="../common/bodyEnd.jsp" />
