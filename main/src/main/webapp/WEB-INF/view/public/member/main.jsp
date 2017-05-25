<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="common/bodyStart.jsp"/>
<div class="help_r_main">
    <div class="eveb_content">
        <table class="eveb_box eveb_table">
            <tbody>
            <tr>
                <th>上次游戏</th>
                <th>上次登录时间</th>
                <th>上周有效投注</th>
                <th>本周有效投注</th>
                <th>最近一次存款</th>
                <th>最近一次取款</th>
            </tr>
            <tr>
                <td><span class="light">
                    <c:choose>
                        <c:when test="${userLastInfo.lastGameId >= 1 || userLastInfo.lastGameId <= 11}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html">彩票</a>
                        </c:when>
                    </c:choose>
                    <c:if test="${not empty userLastInfo.lastGameId}">
                    :
                    </c:if>
                    <c:choose>
                        <c:when test="${userLastInfo.lastGameId == 1}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html?module=gcdt/cqssc">重庆时时彩</a>
                        </c:when>
                        <c:when test="${userLastInfo.lastGameId == 2}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html?module=gcdt/tjssc">天津时时彩</a>
                        </c:when>
                        <c:when test="${userLastInfo.lastGameId == 3}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html?module=gcdt/xjssc">新疆时时彩</a>
                        </c:when>
                        <c:when test="${userLastInfo.lastGameId == 4}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html?module=gcdt/pl3">体彩排列3</a>
                        </c:when>
                        <c:when test="${userLastInfo.lastGameId == 5}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html?module=gcdt/fc3d">福彩3D</a>
                        </c:when>
                        <c:when test="${userLastInfo.lastGameId == 6}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html?module=gcdt/lhc">六合彩</a>
                        </c:when>
                        <c:when test="${userLastInfo.lastGameId == 7}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html?module=gcdt/xy28">幸运28</a>
                        </c:when>
                        <c:when test="${userLastInfo.lastGameId == 8}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html?module=gcdt/kl8">北京快乐8</a>
                        </c:when>
                        <c:when test="${userLastInfo.lastGameId == 9}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html?module=gcdt/pk10">北京PK10</a>
                        </c:when>
                        <c:when test="${userLastInfo.lastGameId == 10}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html?module=gcdt/xync">重庆幸运农场</a>
                        </c:when>
                        <c:when test="${userLastInfo.lastGameId == 11}">
                            <a class="light" target="_blank"href="<%=basePath%>ssc/index.html?module=gcdt/klsf">广东快乐十分</a>
                        </c:when>
                    </c:choose>
                </td>
                <td><fmt:formatDate value="${userLastInfo.lastLoginTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                <td>${userLastInfo.lastWeekValidBetMoney}</td>
                <td>${userLastInfo.thisWeekValidBetMoney}</td>
                <td><fmt:formatDate value="${userLastInfo.lastDepositTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                <td><fmt:formatDate value="${userLastInfo.lastWithdrawTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
            </tr>
            </tbody>
        </table>
        <div class="eveb_box_3">
            <div class="eveb_box mr_10">
                <h4>绑定状态</h4>
                <ul class="eveb_index_validation">
                    <li><a href="javascript:void(0)" onclick="parent.getPage('zhcz/yhzz')" title="在线充值"><i class="icon_cunqu icon_validation_email"></i><p>在线充值</p></a></li>
                    <li><a href="javascript:void(0)" onclick="parent.getPage('withdraw')" title="快速提现"><i class="icon_cunqu icon_validation_phone"></i><p>快速提现</p></a></li>
                    <c:choose>
                        <c:when test="${bindStatus.isBindBankcard == true}">
                            <li><a href="javascript:void(0)" onclick="parent.getPage('zhsz/yhkgl')" title="已绑定"><i class="icon_big icon_validation_card"></i><p>银行卡管理</p></a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="javascript:void(0)" onclick="parent.getPage('zhsz/yhkgl')" title="尚未绑定"><i class="icon_big icon_validation_card_no"></i><p>绑定银行卡</p></a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>

        <div class="eveb_box_3">
            <div class="eveb_box ml_10 mr_10">
                <ul class="eveb_index_money">
                    <li>
                        <span class="t">会员名</span>

                        <span>${userSession.account}</span>
                    </li>
                    <li><span class="t">真实姓名</span><span>${userSession.name}</span></li>
                    <li><span class="t">账户余额</span><span><em class="light">${userSession.balance}</em> 元</span></li>
                    <li>

                        <span class="t">账户等级</span>
                        <span title="${userSession.layerName}" class="icon_level icon_level_1"></span>
                    </li>
                    <li>
                        <span class="t">我的佣金</span>
                        <span><em class="light">${userSession.subUserTotalFandianMoney}</em> 元</span>
                        <span>（${userSession.fandian}%）</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="eveb_box_3">
            <div class="eveb_box ml_10">
                <h4><span><a href="#letter" onclick="parent.getPage('letter')" class="more">MORE</a></span>站内信</h4>
                <ul class="eveb_index_letter">
                    <c:forEach items="${userInboxList}" var="item">
                        <c:choose>
                            <c:when test="${item.hasRead == true}">
                                <li>
                                    <a href="javascript:void(0)" onclick="parent.getPage('letter')">${fn:substring(item.content, 0, 15)}</a>
                                    <span><fmt:formatDate value="${item.createTime}" pattern="MM-dd" /></span>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="new">
                                    <em>新</em>
                                    <a href="javascript:void(0)" onclick="parent.getPage('letter')">${fn:substring(item.content, 0, 15)}</a>
                                    <span><fmt:formatDate value="${item.createTime}" pattern="MM-dd" /></span>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="activity">
            <h5>优惠活动</h5>
            <ul>
                <c:forEach items="${promotionList}" var="item">
                    <li>
                        <a onclick="showContent(this)" data-name="${item.name}" data-time="<fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd" />" data-content="<c:out value="${item.content}" />">
                            <img src="<%=basePath%>images/${item.smallImageId}" alt="${item.name}"/>
                        </a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
<c:import url="common/commonJs.jsp"/>
<c:import url="common/subCommonJs.jsp"/>
<script type="text/javascript" src="${resPath}member/js/main.js?v=1.0"></script>
<c:import url="common/bodyEnd.jsp"/>