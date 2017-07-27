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

        <div class="help_list">
            <div class="lis">
                <h5>如何修改个人资料?</h5>
            </div>
            <div class="help_col show">

                <p>
                    <strong>第一步</strong>：登录后，点击“<span style="color:#E53333;">会员中心</span>”，进入“会员中心”。点击“<span style="color:#E53333;">账户设置</span>”。</p>
                <p style="text-align: center">
                    <a href="${resPath}img/help/zc6.png"> <img  src="${resPath}img/help/zc6.png" title="点击放大图片" width="700"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                <br/>
                <p style="text-align: center">
                    <a href="${resPath}img/help/zc7.png"> <img  src="${resPath}img/help/zc7.png" title="点击放大图片" width="700"/></a>
                </p>

                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                <br/>
                <p>
                    <strong>第二步</strong>：根据要求，依次填写真实的资料。
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/help/zc8.png"> <img  src="${resPath}img/help/zc8.png"  title="点击放大图片" width="700"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                <br/>
                <p>
                    <strong>第三步</strong>：依次输入正确的信息。确认无误后，点击“<span style="color:#E53333;">确认</span>”。手机与邮件一旦确认，便无法修改，实在有问题需要修改，请联系客服。
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/help/zc9.png"> <img  src="${resPath}img/help/zc9.png"  title="点击放大图片" width="700"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
            </div>

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
<c:import url="../../common/bodyEnd.jsp" />