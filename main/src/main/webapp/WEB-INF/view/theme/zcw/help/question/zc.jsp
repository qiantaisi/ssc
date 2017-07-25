<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp" />
<c:import url="../../common/checkIsChildFrame.jsp" />
<c:import url="../../index/top.jsp" />

<div class="men_lists">
    <div class="wid2">
        <c:import url="../../index/menu.jsp" >
            <c:param name="yhhd" value="3" />
        </c:import>
    </div>
</div>

<div class="main wi">
    <c:import url="../common/left.jsp">
        <c:param name="navGroup" value="2" />
        <c:param name="zcplayGroupId" value="1" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_problem">
            <h5>新手指南</h5>
            <h4>关于注册</h4>
            <ul>
                <li><a href="<%=basePath%>help/question/zc_1.html">1.如何免费注册成为会员?</a></li>
                <li><a href="<%=basePath%>help/question/zc_2.html">2.注册时用户需要注意什么?</a></li>
                <li><a href="<%=basePath%>help/question/zc_3.html">3.是否可以注册多个账号？</a></li>
                <li><a href="<%=basePath%>help/question/zc_4.html">4.注册后为什么要绑定银行卡？</a></li>
                <li><a href="<%=basePath%>help/question/zc_5.html">5.真实姓名填写错误如何修改？</a></li>
                <li><a href="<%=basePath%>help/question/zc_6.html">6.如何修改个人资料？</a></li>
                <li><a href="<%=basePath%>help/question/zc_7.html">7.如何修改密码？</a></li>
                <li><a href="<%=basePath%>help/question/zc_8.html">8.未成年人购彩限制的说明</a></li>
            </ul>
        </div>
    </div>
</div>

<c:import url="../../index/bottom.jsp" />
<c:import url="../../common/commonJs.jsp" />
<c:import url="../../common/jsCommonLogin.jsp" />
<c:import url="../common/bottom.jsp" />
<script>
    var zoomImagesURI   = '${resPath}images-global/zoom/'; // Location of the zoom and shadow images
    $(function() {
        insertZoomHTML();
    });
</script>
<script>
    $(function () {
        $(".list ul li.zhinan").attr("sl",0);
    });
</script>
    <c:import url="../../common/bodyEnd.jsp" />