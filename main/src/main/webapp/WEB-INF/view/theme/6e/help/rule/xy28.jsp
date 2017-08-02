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
                <ul style="text-align: center;">
                    <li class="sli">常规玩法</li>
                    <%--<li>官方玩法</li>--%>
                    <li>开奖规则</li>
                </ul>
            </div>
            <div class="help_col show">
                <h5><strong>【混合玩法规则】</strong></h5>
                <p><strong>◎和值</strong></br>
                    从0-27中选取一个以上的数字，投注号码与开奖号码和值相同，即中奖</p>
                <p><strong>◎特码包三</strong></br>
                    从0-27中任选3个号码组成1注，任意一个选号与开奖号码和值相同，即中奖</p>
                <p><strong>◎大小玩法</strong></br>
                    数字14-27为大 ；</br>
                    数字0-13为小；</br>
                    当期开奖号码和值，符合投注组合，即中奖</p>
                <p><strong>◎单双玩法</strong></br>
                    数字1，3，5，~27为单 ；</br>
                    数字0，2，4，~26为双；</br>
                    当期开奖号码和值，符合投注组合，即中奖</p>
                <p><strong>◎组合玩法</strong></br>
                    从大双,小单,大单,小双中至少选一注，当期开奖号码和值，符合投注组合，即中奖</p>
                <p><strong>◎极值玩法 </strong></br>
                    数字0，1，2，3，4，5为极小 ；</br>
                    数字22，23，24，25，26，27为极大；</br>
                    当期开奖号码和值，符合投注组合，即中奖</p>
                <p><strong>◎波色玩法</strong></br>
                    绿波1，4，7，10，16，19，22，25；</br>
                    蓝波2，5，8，11，17，20，23，26；</br>
                    红波3，6，9，12，15，18，21，24；</br>
                    当期开奖号码和值，符合投注组合，即中奖</p>
                <p><strong>◎豹子玩法</strong></br>
                    当期开奖号码三个数字相同即中奖</p>

            </div>
            <%--<div class="help_col">--%>
                <%--<h5>筹备中</h5>--%>
            <%--</div>--%>
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
