<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String hostName = request.getServerName().replace("www.", "");
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
        <c:param name="zcplayGroupId" value="1" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_list">
            <div class="lis">
                <h5>如何免费注册成为会员?</h5>
            </div>
            <div class="help_col show">
                <p>
                    <strong>第一步：</strong>先进入${webName}：<span style="color:#E53333;"><%=hostName%></span>；或进入本站所公布的网址。<br/>
                    <strong>第二步：</strong>点击“<span style="color:#E53333;">免费注册</span>”或“<span style="color:#E53333;">立即注册</span>”等注册字样。
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/zc.png"> <img src="${resPath}img/zc.png" style="border:#cccccc 1px solid" width="700" height="282" title="点击放大图片"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                <br/>
                <p>
                    <strong>第三步：</strong>根据提示，依次输入<span style="color:#E53333;">用户名、密码、真实姓名和验证码</span>。点击“<span style="color:#E53333;">立即注册</span>”。<br/>
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/zc2.png"><img src="${resPath}img/zc2.png" style="border:#cccccc 1px solid" width="700" height="389" title="点击放大图片" width="517" height="503"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>

                <br/><br/>
                <p>
                    <strong>第四步：</strong>点击“<span style="color:#E53333;">确定</span>”完成注册。如图显示<br/>
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/zc3.png"><img src="${resPath}img/zc3.png" title="点击放大图片"  style="border:#cccccc 1px solid" width="700" height="390"/></a> <br/>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3><br/>
                <p style="text-align: center">
                    <a href="${resPath}img/zc4.png"><img src="${resPath}img/zc4.png" style="border:#cccccc 1px solid" width="700" height="246" title="点击放大图片"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
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
<c:import url="../../common/bodyEnd.jsp" />