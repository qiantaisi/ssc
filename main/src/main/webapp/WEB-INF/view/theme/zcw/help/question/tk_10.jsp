<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <c:param name="tkplayGroupId" value="3" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_list">
            <div class="lis">
                <h5>中奖查询?</h5>
            </div>
            <div class="help_col show">


                <p>

                    <strong>第一步</strong>：登录${webName}。点击“<span style="color:#E53333;">历史记录</span>”或进入“<span style="color:#E53333;">会员中心</span>”在点击“<span style="color:#E53333;">历史记录</span>”，如图所示：
                </p>
                <p style="text-align: center">
                    <a href="${resPath}img/help/zj.png"><img width="700" src="${resPath}img/help/zj.png"/></a>
                </p>

                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3> <br/>

                <p style="text-align: center">
                <a href="${resPath}img/help/zj2.png"><img width="700" src="${resPath}img/help/zj2.png"/></a>
                </p>

                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3> <br/>
                <p>
                    <strong>第二步</strong>：点击“<span style="color:#E53333;">投注记录</span>”，选择状态“<span style="color:#E53333;">已结算</span>”，选好当时投注的时间，点击“<span style="color:#E53333;">筛选</span>”。如图所示：<br/>
                </p>
                <p style="text-align: center">
                <a href="${resPath}img/help/zj3.png"><img width="700" src="${resPath}img/help/zj3.png"/></a>
                </p>

                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3> <br/>

                <p>
                   所有在当前时间范围的中奖记录都会显示出来。
                </p>
                <p style="text-align: center">
                <a href="${resPath}img/help/zj4.png"><img width="700" src="${resPath}img/help/zj4.png"/></a>
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