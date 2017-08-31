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
        <c:param name="playGroupId" value="12" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp"/>
        <c:import url="../common/right.jsp"/>
        <div class="help_list">
            <div class="lis">
                <h5>双色球</h5>
                <ul>
                    <li class="sli">官方玩法</li>
                    <%--
                                        <li>常规玩法</li>
                    --%>
                    <li>游戏说明</li>
                </ul>
            </div>
            <div class="help_col show">
                <h5><strong>双色球玩法说明</strong></h5>
                <p><strong>◎一等奖： </strong>
                    中5个红球和1个蓝球，顺序不限；如开奖号：红球123456蓝球1，投注号码红球12345蓝球1</p></br>
                <p><strong>◎二等奖： </strong>
                    中4个红球1个蓝球或者5个红球，顺序不限</p></br>
                <p><strong>◎三等奖： </strong>
                    中3个红球1个蓝球或4个红球，顺序不限</p></br>
                <p><strong>◎四等奖： </strong>
                    中2个红球1个蓝球或1个红球1个蓝球或者1个蓝球，即中奖，顺序不限</p></br>
            </div>
            <%--
                <div class="help_col">
                    <p><strong>筹备中</strong></br>
                </div>
    --%>
            <div class="help_col">
                <p><strong>总则</strong></br>
                    双色球是一种大盘玩法游戏，属乐透型彩票范畴，由中国福利彩票发行管理中心统一组织发行，在全国范围内销售。</br>
                    每周二、四、日21:30开奖，每周三期，开奖号码通过摇奖方式产生，中国教育电视台对开奖进行现场直播。</p>
            </div>
        </div>
    </div>
</div>

<c:import url="../../index/bottom.jsp"/>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/jsCommonLogin.jsp"/>
<c:import url="../common/bottom.jsp" />
<c:import url="../../common/bodyEnd.jsp"/>
