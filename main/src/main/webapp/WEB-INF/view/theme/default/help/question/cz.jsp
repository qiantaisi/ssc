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
            <a href="<%=basePath%>"><img src="<%=basePath%>image/${logo.imageId}" alt=""></a>
        </div>
        <c:import url="../../common/navList.jsp" />
    </div>
</div>

<div class="main wi">
    <c:import url="../common/left.jsp">
        <c:param name="navGroup" value="2" />
        <c:param name="czplayGroupId" value="2" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_problem">
            <h5>新手指南</h5>
            <h4>关于充值</h4>
            <ul>
                <li><a href="<%=basePath%>help/question/cz_1.html">1.如何进行银行转账充值？</a></li>
                <li><a href="<%=basePath%>help/question/cz_2.html">2.如何用支付宝在线支付?</a></li>
                <li><a href="<%=basePath%>help/question/cz_3.html">3.如何用微信进行扫码支付？</a></li>
                <li><a href="<%=basePath%>help/question/cz_4.html">4.网站有哪些充值方式？</a></li>
                <li><a href="<%=basePath%>help/question/cz_5.html">5.充值后多久可以到账？</a></li>
                <li><a href="<%=basePath%>help/question/cz_6.html">6.充值未到账？</a></li>
                <li><a href="<%=basePath%>help/question/cz_7.html">7.账户充值会收手续费吗？</a></li>
                <li><a href="<%=basePath%>help/question/cz_8.html">8.银行转账未及时到账？</a></li>
                <li><a href="<%=basePath%>help/question/cz_9.html">9.如何开通网上银行？</a></li>
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