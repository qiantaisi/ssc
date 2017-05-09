<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt=""></a>
        </div>
        <c:import url="../../common/navList.jsp" />
    </div>
</div>

<div class="main wi">
    <c:import url="../common/left.jsp">
        <c:param name="navGroup" value="6" />
        <c:param name="aqplayGroupId" value="1" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_list">
            <div class="lis">
                <h5>购彩优势</h5>
            </div>
            <div class="help_col show">

                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${webName}（<%=hostName%>），是一家专注于的网络彩票投注和服务的互联网公司。<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们立志通过互联网的技术应用和专心致志的服务理念，确保能为您提供一个便捷、安全、高效、专业的购彩平台。</p>
                <p>
                    <strong>一、购彩便捷，玩法丰富</strong> <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${webName}现提供全国主流彩票在线业务，您只需在${webName}注册一个账户，投注、兑奖、提现都可轻松完成！</p>
                <p><strong>二、资深团队，确保服务专业</strong> <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${webName}团队均有资深行业从业经验和强大的技术背景优势，为用户提供专业、高效和便捷的交易环境。确保平台能每天24小时持续运营，为客户不间断提供专业化服务。</p>
                <p><strong>三、网银充值与提款均不收取手续费</strong> <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们推出“网银零手续费”服务标准，您可以选择网上银行支付，所产生的转账费用由本站承担，您支付多少即到帐多少。正常提款本站也不收取任何提款手续费。</p>

                <p><strong>四、提款全网快速到账</strong> <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提款处理时间：本站09：30-17：30为您处理提款（如遇法定节假日，提款处理时间公告通知用户）。 银行到账时间：正常提款，最快10分钟到账，所有银行预计24小时可到账。节假日因银行系统处理不及时造成的延误，预计在假期后第一个工作日到账。</p>
                <p><strong>五、多层账户安全，确保投注无忧</strong> <br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每个购彩账户需要绑定真实的身份信息和银行卡信息方可提款，一旦绑定后不允许自行修改，多层次技术比对，可确保账户资金安全。</p>


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