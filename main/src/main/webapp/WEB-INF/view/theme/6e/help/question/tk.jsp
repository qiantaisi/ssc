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

<div class="men_list">
    <div class="wid1">
        <div class="logo">
            <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt=""></a>
        </div>
        <c:import url="../../common/navList.jsp" />
    </div>
</div>

<div class="main wi">
    <c:import url="../common/left.jsp">
        <c:param name="navGroup" value="2" />
        <c:param name="tkplayGroupId" value="3" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_problem">
            <h5>新手指南</h5>
            <h4>关于提款</h4>
            <ul>
                <li><a href="<%=basePath%>help/question/tk_1.html">1.中奖后怎么兑奖？</a></li>
                <li><a href="<%=basePath%>help/question/tk_2.html">2.提款须知</a></li>
                <li><a href="<%=basePath%>help/question/tk_3.html">3.为什么我的提款不成功？</a></li>
                <li><a href="<%=basePath%>help/question/tk_4.html">4.申请提款，网站是否有通知？</a></li>
                <li><a href="<%=basePath%>help/question/tk_5.html">5.如何提款？</a></li>
                <li><a href="<%=basePath%>help/question/tk_6.html">6.是否收取提款手续费？</a></li>
                <li><a href="<%=basePath%>help/question/tk_7.html">7.提款金额有没有限制？</a></li>
                <li><a href="<%=basePath%>help/question/tk_8.html">8.提款次数有没有限制？</a></li>
                <li><a href="<%=basePath%>help/question/tk_9.html">9.提款不成功怎么办？</a></li>
                <li><a href="<%=basePath%>help/question/tk_10.html">10.中奖查询</a></li>
            </ul>
        </div>
    </div>
</div>

<c:import url="../../common/bottomInfo.jsp" />
<c:import url="../../common/copyright.jsp" />
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