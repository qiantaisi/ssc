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
                <h5>未成年人购彩限制的说明?</h5>
            </div>
            <div class="help_col show">


                <p>&nbsp&nbsp&nbsp&nbsp本站禁止向未成年人开放。 </p>

                <p>&nbsp&nbsp&nbsp&nbsp对于实名认证结果显示未满18周岁的用户，网站将暂时限制其充值和购彩，除此之外的其他操作不受影响。 </p>

                <p>&nbsp&nbsp&nbsp&nbsp正在进行中的已投注方案，将按照原规则进行兑奖、派奖； </p>

                <p>&nbsp&nbsp&nbsp&nbsp如投注撤单，购彩金将退回账户； </p>

                <p>&nbsp&nbsp&nbsp&nbsp追号方案、自动跟单、订制服务等与购彩相关服务也将被终止； </p>

                <p>&nbsp&nbsp&nbsp&nbsp<strong>如果您未满18周岁，请自觉遵守法规规定，务必不要购买彩票。</strong>
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
