<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <c:param name="navGroup" value="5" />
        <c:param name="zqplayGroupId" value="1" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_list">
            <div class="lis">
                <h5>推广赚钱</h5>
            </div>
            <div class="help_col show">
                <p>
                    <strong>如果想要获得更多的赚钱机会，欢迎您成为我们的代理，进行推广赚钱。</strong>
                </p>
                <p>
                    <strong>详情咨询代理QQ <a href="tencent://message/?uin=61931511&amp;Site=在线客服&amp;Menu=yes">61931511(<span style="color:red;">点击号码添加QQ</span>)</a></strong>
                </p>
                <p>
                    1、如果您还未登录 QQ ，点击此链接后将会自动帮您启动您的 QQ。
                </p>
                <p>
                    2、如果您的QQ是已经在线的了，点击此链接后，按照提示接着选择方可。
                </p>


            </div>

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
        $(".list ul li.gongneng").attr("sl",0);
    });
</script>
<c:import url="../../common/bodyEnd.jsp" />