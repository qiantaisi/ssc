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

<div class="men_list">
    <div class="wid1">
        <div class="logo">
            <a href="<%=basePath%>"><img src="<%=basePath%>image/${logo.imageId}" alt=""></a>
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
                <h5>验证码是对的，却提示输入错误？</h5>
            </div>
            <div class="help_col show">
<p>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp请先确认您输入的内容是否和图片显示的相符，切记您在输入数字时中间不能使用空格。 如果您确认输入正确，再查看是否是以下原因：
</p>
                <p>
                    <strong>（1）您使用了错误的输入法输入</strong>：
                </p>
                <p>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp请先确认您使用的输入法是否为英文的半角状态， 因为只有在半角状态下输入数字及英文字母，校验码才有效， 否则系统会提示您"验证码输入错误，请重新输入" 。
                </p>
                <p>
                    <strong>（2）您的浏览器不能正确地显示验证码图片</strong>：
                </p>
                <p>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp如果您的验证码显示不完全或者看不清楚，请尝试刷新页面，如果还是不能正常显示，请按如下步骤调整您的IE浏览器设置。
                </p>
                <p>
                    第一步、打开浏览器，选择菜单中的"<span style="color:#E53333;">工具</span>"→"<span style="color:#E53333;">Internet"选项</span>
                </p>
                <p style="text-align: center">
                <a href="${resPath}img/1.png"><img width="435" src="${resPath}img/1.png"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                <br/>
                <p>
                    第二步、选择"<span style="color:#E53333;">常规</span>"中"<span style="color:#E53333;">浏览历史纪录</span>"的"<span style="color:#E53333;">删除</span>"，并且勾选"<span style="color:#E53333;">临时文件与Cookie</span>"选项。 然后点击“<span style="color:#E53333;">删除</span>”
                </p>
                <p style="text-align: center">
                <a href="${resPath}img/2.png"><img  width="424" src="${resPath}img/2.png" /></a>
                </p>
                <p style="text-align: center">
                <a href="${resPath}img/3.png"><img width="396" src="${resPath}img/3.png"/></a>
                </p>
                <h3 style="text-align: center;color: #fa4100">(点击图片放大) &nbsp↑</h3>
                <br/>
                <p>
                第三步，关闭浏览器，重新打开网页再做尝试。
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