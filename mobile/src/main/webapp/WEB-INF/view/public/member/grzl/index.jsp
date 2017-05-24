<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-grzl-index">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <%--<a class="button button-link pull-right" href="<%=basePath%>member/grzl/edit.html">--%>
            <%--编辑--%>
            <%--</a>--%>
            <a class="button button-link pull-right icon-home icon-home-css" href="<%=basePath%>"></a>
            <h1 class="title">
                <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt="" height="100%"></a>
            </h1>
        </header>
        <div class="content pull-to-refresh-content">
            <!-- 默认的下拉刷新层 -->
            <div class="pull-to-refresh-layer">
                <div class="preloader"></div>
                <div class="pull-to-refresh-arrow"></div>
            </div>
            <c:if test="${not empty userLastInfo.lastLoginTime}">
                <div class="cl-330">
                    上次登录：<fmt:formatDate value="${userLastInfo.lastLoginTime}" pattern="yyyy-MM-dd HH:mm:ss"/>，不是我登录？ <a
                        href="<%=basePath%>member/xgmm/index.html">修改密码</a>
                </div>
            </c:if>
            <div class="row cl-100">
                <div class="col-100">个人信息</div>
            </div>
            <div class="cl-302 cl-311">
                <div class="list-block">
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-zhyhm"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">会员名：</div>
                                    <div class="item-input">
                                        <%--<input type="text" value="${userSession.nickname}" readonly/>--%>
                                        <font style="font-size: 0.66rem;color: #999; ;padding-left: 15px;">
                                            <c:out value="${userSession.account}"/>
                                        </font>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-zhzsxm"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">真实姓名：</div>
                                    <div class="item-input">
                                        <%--<input type="text" value="${userSession.name}" readonly/>--%>
                                        <font style="font-size: 0.66rem;color: #999; ;padding-left: 15px;">
                                            <c:out value="${userSession.name}"/>
                                        </font>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <c:choose>
                            <c:when test="${not empty userSession.telephone}">
                            <div class="item-content">
                                </c:when>
                                <c:otherwise>
                                <div class="item-content item-link">
                                    </c:otherwise>
                                    </c:choose>
                                    <div class="item-media"><i class="icon"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">手机号码：</div>
                                        <div class="item-input re-item-input">
                                            <c:choose>
                                                <c:when test="${not empty userSession.telephone}">
                                                    <span>${fn:substring(userSession.telephone, 0, 3)}***${fn:substring(userSession.telephone, 4, 7)}</span>
                                                    <span class="green"><i
                                                            class="icon_mini icon_ok"></i>&nbsp;已绑定</span>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="<%=basePath%>member/grzl/edit.html">立即绑定</a>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </div>
                        </li>
                        <li>
                            <c:choose>
                            <c:when test="${not empty userSession.email}">
                            <div class="item-content">
                                </c:when>
                                <c:otherwise>
                                <div class="item-content item-link">
                                    </c:otherwise>
                                    </c:choose>
                                    <div class="item-media"><i class="icon"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">电子邮箱：</div>
                                        <div class="item-input re-item-input">
                                            <c:choose>
                                                <c:when test="${not empty userSession.email}">
                                                    <span>${userSession.email}</span>
                                                    <span class="green"><i class="icon_mini icon_ok"></i>已绑定</span>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="<%=basePath%>member/grzl/edit.html">立即绑定</a>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </div>
                        </li>
                        <li>
                            <div class="item-content item-link">
                                <div class="item-media"><i class="icon"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">腾讯QQ：</div>
                                    <div class="item-input info_gr">
                                        ${userSession.qq}<a href="<%=basePath%>member/grzl/edit.html"
                                                            class="edit_color"> 编辑</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content item-link">
                                <div class="item-media"><i class="icon"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">昵称：</div>
                                    <div class="item-input info_gr">
                                        ${userSession.nickname}<a href="<%=basePath%>member/grzl/edit.html"
                                                                  class="edit_color"> 编辑</a>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="item-content item-link">
                                <div class="item-media"><i class="icon"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">性别：</div>
                                    <div class="item-input info_gr">
                                        <c:choose>
                                            <c:when test="${userSession.sex == 1}">男</c:when>
                                            <c:otherwise>女</c:otherwise>
                                        </c:choose>
                                        <a href="<%=basePath%>member/grzl/edit.html" class="edit_color"> 编辑</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content item-link">
                                <div class="item-media"><i class="icon"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">生日：</div>
                                    <div class="item-input info_gr">
                                        <fmt:formatDate value="${userSession.birthday}" pattern="yyyy-MM-dd"/><a
                                            href="<%=basePath%>member/grzl/edit.html" class="edit_color"> 编辑</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-zhye"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">账户余额：</div>
                                    <div class="item-input">
                                        <%--<input type="hidden" value="${userSession.balance}" readonly>--%>
                                        <font style="font-size: 0.66rem;color: #999; ;padding-left: 15px;">
                                            <c:out value="${userSession.balance}"/>
                                        </font>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-zhdj"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">账户等级：</div>
                                    <div class="item-input">
                                        <%--<input type="hidden" value="${userSession.layerName}" readonly/>--%>
                                        <font style="font-size: 0.66rem;color: #999; ;padding-left: 15px;">
                                            <c:out value="${userSession.layerName}"/>
                                        </font>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-zhfd"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">会员返点：</div>
                                    <div class="item-input">
                                        <%--<input type="text" value="${userSession.totalFandianMoney}" readonly/>--%>
                                        <font style="font-size: 0.66rem;color: #999; ;padding-left: 15px;"><c:out
                                                value="${userSession.totalFandianMoney}"/>
                                        </font>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-scdlsj"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">上次登录时间：</div>
                                    <div class="item-input">

                                        <%--<input type="text"--%>
                                               <%--value="<fmt:formatDate value="${userLastInfo.lastLoginTime}" pattern="yyyy-MM-dd HH:mm:ss"  />"--%>
                                               <%--readonly>--%>
                                        <font style="font-size: 0.66rem;color: #999; ;padding-left: 15px;">
                                            <fmt:formatDate value="${userLastInfo.lastLoginTime}" pattern="yyyy-MM-dd HH:mm:ss"  />
                                        </font>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-scfwip"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">上次访问IP：</div>
                                    <div class="item-input">
                                        <%--<input type="text" value="${userLastInfo.lastLoginIp}" readonly>--%>
                                        <font style="font-size: 0.66rem;color: #999; ;padding-left: 15px;">
                                            <c:out value="${userLastInfo.lastLoginIp}" />
                                        </font>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-szyxtz"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">上周投注：</div>
                                    <div class="item-input">
                                        <%--<input type="text" value="${userLastInfo.lastWeekValidBetMoney}（有效）" readonly>--%>
                                        <font style="font-size: 0.66rem;color: #999; ;padding-left: 15px;"><c:out
                                                value="${userLastInfo.lastWeekValidBetMoney}（有效）"/></font>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-bzyxtz"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">本周投注：</div>
                                    <div class="item-input">
                                        <%--<input type="text" value="${userLastInfo.thisWeekValidBetMoney}（有效）" readonly>--%>
                                        <font style="font-size: 0.66rem;color: #999; ;padding-left: 15px;"><c:out
                                                value="${userLastInfo.thisWeekValidBetMoney}（有效）"/></font>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-zjck"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">最近存款：</div>
                                    <div class="item-input">
                                        <%--<input type="text"--%>
                                               <%--value="<fmt:formatDate value="${userLastInfo.lastDepositTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"--%>
                                               <%--readonly>--%>
                                        <font style="font-size: 0.66rem;color: #999; ;padding-left: 15px;">
                                            <fmt:formatDate value="${userLastInfo.lastDepositTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                        </font>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-zjqk"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">最近取款：</div>
                                    <div class="item-input">
                                        <%--<input type="text"--%>
                                               <%--value="<fmt:formatDate value="${userLastInfo.lastWithdrawTime}" pattern="yyyy-MM-dd HH:mm:ss" />"--%>
                                               <%--readonly>--%>
                                        <font style="font-size: 0.66rem;color: #999; ;padding-left: 15px;">
                                            <fmt:formatDate value="${userLastInfo.lastWithdrawTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                                        </font>
                                    </div>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
            <c:import url="../../common/copyright.jsp"/>
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>