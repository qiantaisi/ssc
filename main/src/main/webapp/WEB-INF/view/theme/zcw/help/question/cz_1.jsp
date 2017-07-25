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
            <c:param name="yhhd" value="3" />
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
                <h5>如何进行银行转账充值?</h5>
            </div>
            <div class="help_col show">

                <p>
                   <strong>第一步</strong>：登录后，点击“<span style="color:#E53333;">充值</span>”进入充值页面。</br>
                    或"点击“<span style="color:#E53333;">会员中心</span>”进入“会员中心”界面，点击“<span style="color:#E53333;">账号充值</span>”进入充值页面。
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/cz1.png"><img src="${resPath}img/cz1.png" width="700"/></a>
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/cz2.png"><img width="700" src="${resPath}img/cz2.png" /></a>
                </p>
                <p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                </p>
                <br/>
                <p>
                <strong>第二步</strong>：根据提示，<span style="color:#E53333;">选择收款银行,然后转账至该账户</span>。随后填写好转出银行、转账方式、充值金额、银行账号。最后，点击“提交”。
                </p>
                <p style="text-align: center">
                <a href="${resPath}img/cz3.png"> <img width="700" src="${resPath}img/cz3.png"/></a>
                </p>
                <p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                </p>
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