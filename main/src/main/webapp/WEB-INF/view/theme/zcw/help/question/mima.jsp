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
        <c:param name="navGroup" value="6" />
        <c:param name="rmplayGroupId" value="2" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_problem">
            <h5>热门问题</h5>
            <ul>
                <li><a href="<%=basePath%>help/question/mima_3.html">1.忘记了登录密码怎么办？</a></li>
                <li><a href="<%=basePath%>help/question/mima_4.html">2.忘记用户名怎么办？</a></li>
                <li><a href="<%=basePath%>help/question/mima_5.html">3.登录时验证码输入是对的，为什么提示输入错误？</a></li>
                <li><a href="<%=basePath%>help/question/mima_1.html">4.如何修改绑定的联系电话？</a></li>
                <li><a href="<%=basePath%>help/question/mima_6.html">5.我从来没买过彩票，这些彩种都怎么玩？</a></li>
                <li><a href="<%=basePath%>help/question/mima_2.html">6.购彩的流程是什么样的？</a></li>
            </ul>
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
<script>
    $(function () {
        $(".list ul li.wenti").attr("sl",0);
    });
</script>
<c:import url="../../common/bodyEnd.jsp" />