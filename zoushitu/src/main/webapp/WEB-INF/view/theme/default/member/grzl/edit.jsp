<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-grzl-edit">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <h1 class="title">
                <a href="<%=basePath%>"><img src="${resPath}img/ico13.png" alt="" height="100%"></a>
            </h1>
        </header>
        <div class="content">
            <div class="row cl-100">
                <div class="col-100">编辑个人信息</div>
            </div>
            <div class="cl-302 cl-311">
                <div class="list-block">
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">昵称：</div>
                                    <div class="item-input">
                                        <input type="text" value="${userSession.nickname}" name="nickname"  />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content item-link">
                                <div class="item-media"><i class="icon"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">性别：</div>
                                    <div class="item-input">
                                        <c:choose>
                                            <c:when test="${userSession.sex == 1}">
                                                <input type="text" value="男" name="sex" id="inputSex" readonly />
                                            </c:when>
                                            <c:otherwise>
                                                <input type="text" value="女" name="sex" id="inputSex" readonly />
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">生日：</div>
                                    <div class="item-input">
                                        <input type="text" value="<fmt:formatDate value="${userSession.birthday}" pattern="yyyy-MM-dd" />" id="inputBirtyday"name="birthday" />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">QQ：</div>
                                    <div class="item-input">
                                        <input type="text" pattern="[0-9]*" value="${userSession.qq}" <c:if test="${not empty userSession.qq}"></c:if> name="qq"  />
                                    </div>
                                </div>
                            </div>
                        </li>

                    </ul>
                    <div class="cl-303">
                        <p><i>温馨提示</i></p>
                        手机、邮箱一经确认则<i>无法修改</i>
                    </div>
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">手机号：</div>
                                    <div class="item-input">
                                        <input type="text" value="${userSession.telephone}" <c:if test="${not empty userSession.telephone}">readonly</c:if> name="telephone" />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">邮箱：</div>
                                    <div class="item-input">
                                        <input type="text" value="${userSession.email}" <c:if test="${not empty userSession.email}">readonly</c:if> name="email"  />
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="cl-102">
                <a href="javascript:void(0)" id="btn-submit" class="cl-103">确认修改</a>
            </div>
            <div class="row cl-301">
                <div class="col-100">
                    <a href="<%=basePath%>kefu.html" class="external" target="_blank">需要帮助</a>
                </div>
            </div>
            <c:import url="../../common/copyright.jsp" />
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>