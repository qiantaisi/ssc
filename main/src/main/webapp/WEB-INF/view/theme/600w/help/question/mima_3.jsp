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
        <c:param name="rmplayGroupId" value="2" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_list">
            <div class="lis">
                <h5>忘记了登录密码怎么办？</h5>
            </div>
            <div class="help_col show">
<p>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp请及时提供相应信息给客服。系统将重置一个新密码，并把新密码发送到用户注册时提交的电子邮箱中，为保障账户安全，建议用户登录后立即修改密码。
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