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

        <div class="help_list">
            <div class="lis">
                <h5>如何用支付宝在线支付?</h5>
            </div>
            <div class="help_col show">

                <p>
                    <strong>第一步</strong>：登录后，进入会员中心的“<span style="color:#E53333;">账户充值</span>”，然后点击“<span style="color:#E53333;">支付宝支付</span>。”如图：
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/cz5.png"><img width="700" src="${resPath}img/cz5.png"/></a>
                </p>
                <p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                </p>
                <br/>
                <p>
                    <strong>第二步</strong>：选择“<span style="color:#E53333;">支付渠道</span>”，输入“<span style="color:#E53333;">充值金额</span>”，点击“<span style="color:#E53333;">提交</span>”
                </p>
                <p style="text-align: center">
                <a href="${resPath}img/cz6.png"><img width="700" src="${resPath}img/cz6.png"/></a>
                </p>
                <p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                </p>
                <br/>
                <p>
                    <strong>第三步</strong>：打开手机中的支付宝APP，用“<span style="color:#E53333;">扫一扫</span>”功能进行支付。
                </p>
                <p style="text-align: center">
                <a href="${resPath}img/cz7.png"><img width="700" src="${resPath}img/cz7.png"/></a><br/>
                </p>
                <p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                </p>
                <br/>
                <p>
                    <strong>第四步</strong>：选择“<span style="color:#E53333;">付款方式</span>”，然后点击立即付款。 <br/>
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/cz8.png"><img width="640" src="${resPath}img/cz8.png" /></a><br/>
                </p>
                <p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
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
<c:import url="../../common/bodyEnd.jsp" />