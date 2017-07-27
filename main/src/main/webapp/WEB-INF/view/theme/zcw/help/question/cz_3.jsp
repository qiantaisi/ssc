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

<div class="men_lists">
    <div class="wid2">
        <c:import url="../../index/menu.jsp" >
        </c:import>
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
                <h5>如何用微信进行扫码支付?</h5>
            </div>
            <div class="help_col show">

                <p>
                    <strong>第一步</strong>：登录后，进入会员中心的，“<span style="color:#E53333;">账户充值</span>”。 <br/>
                    <strong>第二步</strong>：点击“<span style="color:#E53333;">微信支付</span>”，“<span style="color:#E53333;">输入充值金额</span>”，点击“<span style="color:#E53333;">提交</span>”。<br/>
                    如图： <br/>
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/cz9.png"><img width="700" src="${resPath}img/cz9.png" /></a>
                </p>
                <p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                </p>
                <br/>
                <p>
                    <strong>第三步</strong>：用微信，<span style="color:#E53333;">扫一扫“二维码”</span>”。点击“<span style="color:#E53333;">立即支付</span>””，输入密码进行支付。
                </p>
                <p style="text-align: center">
                <a href="${resPath}img/cz11.png"><img width="700" src="${resPath}img/cz11.png" /></a>
                </p>
                <p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                </p>
                <br/>
                <p style="text-align: center">
                <a href="${resPath}img/cz12.png"><img width="400" src="${resPath}img/cz12.png"/></a>
                </p>
                <p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                </p>
                <br/><br/>


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