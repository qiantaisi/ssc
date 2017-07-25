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

        <div class="help_list">
            <div class="lis">
                <h5>如何修改密码?</h5>
            </div>
            <div class="help_col show">
<p>
                <strong>第一步</strong>：登录后，点击“<span style="color:#E53333;">会员中心</span>”，进入“会员中心”。点击“<span style="color:#E53333;">账户设置</span>”。
</p>
                <p style="text-align: center">
                    <a href="${resPath}img/zc10.png"><img src="${resPath}img/zc10.png"title="点击放大图片" width="700"/></a>
                </p>
                <h3 style="text-align: center; color: #fa4100;">(点击图片放大) &nbsp↑</h3>
                <br/>
                <p style="text-align: center">
                    <a href="${resPath}img/zc11.png"><img src="${resPath}img/zc11.png"  title="点击放大图片" width="700"/> </a>
                </p>
                <p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                </p>
                <br/>
                <p>
                    <strong>第二步</strong>：点击“<span style="color:#E53333;">登录密码</span>”：输入原密码，再输入新密码，然后点击“<span style="color:#E53333;">确认修改</span>”。
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/zc12.png"><img src="${resPath}img/zc12.png"  title="点击放大图片" width="700"/> </a>
                </p>
                <h3 style="color: #fa4100;text-align: center">(点击图片放大) &nbsp↑</h3>

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