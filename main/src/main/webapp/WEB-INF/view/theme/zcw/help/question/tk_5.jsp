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
        <c:param name="tkplayGroupId" value="3" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_list">
            <div class="lis">
                <h5>如何提款?</h5>
            </div>
            <div class="help_col show">

                <p>
                    <strong>第一步</strong>：登录后，点击“<span style="color:#E53333;">提款</span>”或进入“<span style="color:#E53333;">会员中心</span>”的“<span style="color:#E53333;">快速提现</span>”。
                </p>
                <p style="text-align: center">
                <a href="${resPath}img/tk.png"><img width="700" src="${resPath}img/tk.png"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                <br/>
                <p>
                    <strong>第二步</strong>：选择提款的银行账号，输入提款金额，点击“提交”。等待审核通过。（如果是首次提款，请先绑定银行卡）
                </p>
                <p style="text-align: center">
                <a href="${resPath}img/tk2.png"><img width="700" src="${resPath}img/tk2.png"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
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