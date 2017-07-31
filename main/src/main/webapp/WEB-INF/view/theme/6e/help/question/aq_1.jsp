<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
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
                <h5>购彩支付和充值安全</h5>
            </div>
            <div class="help_col show">

                <p>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${webName}提供了银行转账、在线支付、支付宝支付、微信支付等多种充值支付方式。
                    与各大银行开通直联网关，彻底解决通过银行转账进行支付的不安全因素。
                    另外与支付宝、微信、第三方平台等公司进行合作。为用户提供安全、稳定、快速的资金支付方式，完全保障用户的支付安全。
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