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
                <h5>购彩的流程是什么样的？</h5>
            </div>
            <div class="help_col show">
<p>
    <strong>第一步</strong>：登录个人账户后，点击“<span style="color:#E53333;">购彩大厅</span>”或“<span style="color:#E53333;">购买彩票</span>”等字样，进入购彩大厅。或直接找到喜欢的彩种进入投注界面。
</p>

                <p style="text-align: center">
                <a href="${resPath}img/4.png"  ><img width="700" src="${resPath}img/4.png"  /></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                <br/>
                <p><strong>第二步</strong>：进入大厅，可以点击左侧列表彩种名称，进入该彩种投注。或者点击需要彩种的“<span style="color:#E53333;">立即投注</span>”。进行投注。以重庆时时彩为例。</p>

                <p style="text-align: center">
                <a href="${resPath}img/5.png" ><img width="700" src="${resPath}img/5.png" /></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                <br/>
                <p>
                <strong>第三步</strong>：进入投注界面后，选择喜欢的玩法，以投注一字定万位为例，如图：点击一字定位，在快捷金额中输入每注的金额。选择要投注的号码。选好后，点击提交。也可直接在对应号码的金额输入框内直接输入金额。
                </p>

                <p>
                <a href="${resPath}img/6.png"><img src="${resPath}img/6.png"  width="700"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                <br/>
                <p>
                    <strong>第四步</strong>：对照下注清单后，点击确定。
                </p>

                <p>
                <a href="${resPath}img/7.png"><img src="${resPath}img/7.png" width="700"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>

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