<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("m.", "").replace("www.", "");
    String pcHostName = request.getScheme() + "://" + "www." + request.getServerName().replace("m.", "").replace("www.", "");
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current re-bg" id="page-index">
        <c:import url="../../../public/theme/common/headNav.jsp"/>
        <c:import url="../../../public/theme/common/bottomNav.jsp"/>
        <div class="content content-img content-vipvp tex_bottom bottom2 top2" id="navBar"> <%--内容主体--%>
            <div class="cl-4 recl-4" onclick="window.location.href='<%=basePath%>member/gonggao/list.html'">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <marquee behavior="scroll" contenteditable="true"
                                 onstart="this.firstChild.innerHTML+=this.firstChild.innerHTML;" scrollamount="5"
                                 width="100%" onmouseover="this.stop();" onmouseout="this.start();">
                            <c:forEach items="${popupNoticeList}" var="item" varStatus="status">
                                <c:if test="${status.count != 1}"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></c:if>
                                <span class="sp_scroll_txt"
                                      style="white-space:nowrap;">${item.title}：${item.content}</span>
                            </c:forEach>
                        </marquee>
                    </div>
                </div>
            </div>
            <div class="row cl-scroll swiper-container swiper-container-horizontal re-row">
                <div class="swiper-wrapper">
                    <c:forEach items="${carouseList.carouselList}" var="item">
                        <c:choose>
                            <c:when test="${empty item.url}">
                                <div class="img-sz swiper-slide"><img src="<%=basePath%>images/${item.imageId}.png"
                                                                      alt="${item.title}"></div>
                            </c:when>
                            <c:otherwise>
                                <div class="img-sz swiper-slide"><img src="<%=basePath%>images/${item.imageId}.png"
                                                                      alt="${item.title}"></div>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </div>
            </div>

            <div class="daohang">
                <div class="daohang1">
                    <a>
                        <span>存款/提款</span>
                        <img src="${resPath}img/new_zcw/index1_2.png"/>
                    </a>
                </div>
                <div class="daohang1">
                    <a>
                        <span>存款/提款</span>
                        <img src="${resPath}img/new_zcw/index1_3.png"/>
                    </a>
                </div>
                <div class="daohang1">
                    <a>
                        <span>存款/提款</span>
                        <img src="${resPath}img/new_zcw/index1_4.png"/>
                    </a>
                </div>
                <div class="daohang1">
                    <a>
                        <span>存款/提款</span>
                        <img src="${resPath}img/new_zcw/index1_5.png"/>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <c:import url="../common/rightPanel.jsp"/>
</div>
<c:import url="../common/commonJs.jsp"/>
<script>
    var kjjgJsonData = ${kjjgJsonData};
</script>
<script type="text/html" id="template_6">
    <div class="item-content re-it-con lhc-kjjg">
        <div class="item-media remedia"><img src="${resPath}img/cz/cz-6.png" style='width: 2.3rem;'></div>
        <div class="item-inner reitem-inner">
            <div class="item-subtitle lhc_item-subtitle" id="xyxhContent_6">
                <span class="ball {{if bose1 == 1}}col0{{else if bose1 == 2}}col1{{/if}}">{{num1}}</span>
                <span class="ball {{if bose2 == 1}}col0{{else if bose2 == 2}}col1{{/if}}">{{num2}}</span>
                <span class="ball {{if bose3 == 1}}col0{{else if bose3 == 2}}col1{{/if}}">{{num3}}</span>
                <span class="ball {{if bose4 == 1}}col0{{else if bose4 == 2}}col1{{/if}}">{{num4}}</span>
                <span class="ball {{if bose5 == 1}}col0{{else if bose5 == 2}}col1{{/if}}">{{num5}}</span>
                <span class="ball {{if bose6 == 1}}col0{{else if bose6 == 2}}col1{{/if}}">{{num6}}</span>
                <i class="symbol">+</i>
                <span class="ball {{if bose7 == 1}}col0{{else if bose7 == 2}}col1{{/if}}">{{num7}}</span>
            </div>
            <div class="item-text" id="xyxhContent_6_sx">
                <span>{{sx1}}</span>
                <span>{{sx2}}</span>
                <span>{{sx3}}</span>
                <span>{{sx4}}</span>
                <span>{{sx5}}</span>
                <span>{{sx6}}</span>
                <i>&nbsp;&nbsp;&nbsp;</i>
                <span>{{sx7}}</span>
            </div>
            <div class="item-title-row re-row-touzhu lhc-touzhu">
                <span class="">香港六合彩</span>
                <span class="tz_content">
                        <a href="javascript:void(0)" class="shuaxin"></a>
                        <a href="<%=basePath%>ssc/gcdt/lhc.html" class="touzhu">投注</a>
                    </span>
            </div>
        </div>
    </div>
</script>
<c:import url="../common/bodyEnd.jsp"/>