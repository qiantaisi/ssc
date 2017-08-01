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
                <h5>真实姓名填写错误如何修改？</h5>
            </div>
            <div class="help_col show">
                <p> 一经绑定，用户本人无法直接修改真实姓名，但可以联系客服人员进行修改。操作流程如下：</p>
                <p>&nbsp&nbsp&nbsp&nbsp(1)、联系客服人员（可通过在线客服、电话、QQ等途径），说明修改的原因。</p>
                <p>&nbsp&nbsp&nbsp&nbsp(2)、客服部收到申请后，由专员核实信息提交报告，交领导批准签字。</p>
                <p>&nbsp&nbsp&nbsp&nbsp(3)、主管领导签字后，技术主管在专员监督的情况下，修改用户的错误信息。 </p>
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