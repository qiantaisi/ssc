<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<c:import url="../../common/checkIsChildFrame.jsp" />
<c:import url="../../index/top.jsp"/>

<div class="men_list">
    <div class="wid1">
        <div class="logo">
            <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt=""></a>
        </div>
        <c:import url="../../common/navList.jsp"/>
    </div>
</div>

<div class="main wi">
    <c:import url="../common/left.jsp">
        <c:param name="navGroup" value="1" />
        <c:param name="playGroupId" value="7" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp"/>
        <c:import url="../common/right.jsp"/>

        <div class="help_list">
            <div class="lis">
                <h5>幸运28</h5>
                <ul>
                    <li class="sli">常规玩法</li>
                    <li>官方玩法</li>
                    <li>开奖规则</li>
                </ul>
            </div>
            <div class="help_col show">
                <h5><strong>玩法规则</strong></h5>
                <p><strong>◎开奖</strong></br>
                    幸运28开奖结果来源于国家福利彩票北京快乐8开奖号码，从早上9:05至23:55，每5分钟一期不停开奖。<br>
                    北京快乐8每期开奖共开出20个数字，幸运28将这20个开奖号码按照由小到大的顺序依次排列；取其1-6位开奖号码相加，和值的末位数作为幸运 28开奖第一个数值； 取其7-12位开奖号码相加，和值的末位数作为幸运28开奖第二个数值，取其13-18位开奖号码相加，和值的末位数作为幸运 28开奖第三个数值；三个数值相加即为幸运28最终的开奖结果。</p>
            </div>
            <div class="help_col">
                <h5>筹备中</h5>
            </div>
            <div class="help_col">
                <h5><strong>总则</strong></h5>
                <p>幸运28是根据国家福利彩票北京快乐8创新的竞猜游戏。28个号码，押中即可获得奖励。每天从早上9:05～23:55；每5分钟一期。</p>
            </div>
        </div>
    </div>
</div>

<c:import url="../../common/bottomInfo.jsp"/>
<c:import url="../../common/copyright.jsp"/>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/jsCommonLogin.jsp"/>
<c:import url="../common/bottom.jsp" />
<c:import url="../../common/bodyEnd.jsp"/>
