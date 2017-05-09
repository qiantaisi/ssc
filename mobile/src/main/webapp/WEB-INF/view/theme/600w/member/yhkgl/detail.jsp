<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-member-yhkgl-detail">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left" href="<%=basePath%>member/yhkgl/index.html">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">银行卡管理</h1>
        </header>
        <div class="content">
            <div class="row cl-100 cl-305">
                <div class="col-100">银行卡信息</div>
            </div>
            <div class="cl-302 cl-312">
                <div class="list-block">
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-yhmc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">银行名称：</div>
                                    <div class="item-input">
                                        <input type="text" value="${userBankCard.bankName}" readonly />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-zhmc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">支行名称：</div>
                                    <div class="item-input">
                                        <input type="text" value="${userBankCard.subBankName}" readonly />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-kh"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">卡号：</div>
                                    <div class="item-input">
                                        <input type="text" value="${userBankCard.bankAccount}" readonly />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media">
                                    <i class="icon icon-form-khd"></i>
                                </div>
                                <div class="item-inner">
                                    <div class="item-title label">开户地：</div>
                                    <div class="item-input">
                                        <input type="text" id="city-picker" value="${userBankCard.location}" readonly />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-khr"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">开户人：</div>
                                    <div class="item-input">
                                        <input id="one" type="text" value="${userSession.name}" readonly />
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <c:if test="${userBankCard['default'] != 'true'}">
                <div class="cl-102">
                    <a href="javascript:void(0)" id="btn-setDefault" class="cl-103 cl-314" data-id="${userBankCard.id}">设为默认</a>
                </div>
            </c:if>
            <div class="cl-102">
                <a href="javascript:void(0)" id="btn-delete" class="cl-103 cl-315" data-id="${userBankCard.id}">删除绑定银行卡</a>
            </div>
            <c:import url="../../common/copyright.jsp" />
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>