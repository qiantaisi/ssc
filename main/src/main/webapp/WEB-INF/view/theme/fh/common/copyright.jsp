<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String hostName = request.getServerName().replace("www.", "");
%>
<div class="record wid1">
    <p class="webDbxx"></p>
    <p class="mt30"><span><%=hostName%>&nbsp;&nbsp; 郑重提示：彩票有风险，投注需谨慎</span> 不向未满18周岁的青少年出售彩票</p>
    <p></p>
    <div class="comp">
        <ul>
            <li><img src="${resPath}img/img1.jpg" alt=""></li>
            <li><img src="${resPath}img/img2.jpg" alt=""></li>
            <li><img src="${resPath}img/img3.jpg" alt=""></li>
            <li><img src="${resPath}img/img4.jpg" alt=""></li>
            <li><img src="${resPath}img/img5.jpg" alt=""></li>
            <li><img src="${resPath}img/img6.jpg" alt=""></li>
            <li><img src="${resPath}img/img7.jpg" alt=""></li>
            <li><img src="${resPath}img/img8.jpg" alt=""></li>
        </ul>
    </div>
</div>