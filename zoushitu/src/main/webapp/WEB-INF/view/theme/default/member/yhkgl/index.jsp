<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="com.petsathall.project.common.utils.JSONUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-member-yhkgl-index">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left" href="<%=basePath%>member/index.html">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">银行卡管理</h1>
        </header>
        <div class="content">
            <c:if test="${not empty userBankCardList}">
                <div class="row cl-100 cl-305">
                    <div class="col-100">选择默认银行卡</div>
                </div>
            </c:if>
            <div class="cl-313">
                <div class="list-block">
                    <ul>
                        <c:forEach items="${userBankCardList}" var="item">
                            <li>
                                <label class="label-checkbox item-content item-link">
                                    <input type="radio" name="userBankId" <c:if test="${item['default'] == 'true'}">checked</c:if> value="${item.id}" />
                                    <div class="item-media">
                                        <span><i class="icon icon-form-checkbox"></i></span>&nbsp;
                                        <font class="cl-1400">
                                            <c:if test="${item['default'] == 'true'}">
                                                默认
                                            </c:if>
                                        </font>
                                    </div>
                                    <a href="<%=basePath%>member/yhkgl/detail.html?userBankCardId=${item.id}" class="item-inner">
                                        <div class="item-subtitle">
                                            <c:choose>
                                                <c:when test="${fn:contains(item.bankName,'工商银行')}">
                                                    <span class="banklogo bank_icbc"></span>
                                                    <%--<img src="${resPath}img/ico54.png" alt="工商银行">--%>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'农业银行')}">
                                                    <span class="banklogo bank-abchina"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'银行')}">
                                                    <span class="banklogo bank-chinabank"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'建设银行')}">
                                                    <span class="banklogo bank-ccb"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'交通银行')}">
                                                    <span class="banklogo bank-comm"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'招商银行')}">
                                                    <span class="banklogo bank-cmb"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'兴业银行')}">
                                                    <span class="banklogo bank-cib"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'浦发银行')}">
                                                    <span class="banklogo bank-spdb"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'华夏银行')}">
                                                    <span class="banklogo bank-hxb"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'中银行')}">
                                                    <span class="banklogo bank-ecitic"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'光大银行')}">
                                                    <span class="banklogo bank-cebbank"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'广发银行')}">
                                                    <span class="banklogo bank-cgbchina"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'邮政储蓄银行')}">
                                                    <span class="banklogo bank-psbc"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'平安银行')}">
                                                    <span class="banklogo bank-pingan"></span>
                                                </c:when>
                                                <c:when test="${fn:contains(item.bankName,'上海银行')}">
                                                    <span class="banklogo bank-bankofshanghai"></span>
                                                </c:when>
                                                <c:otherwise>
                                                    ${item.bankName}
                                                </c:otherwise>
                                            </c:choose>
                                            <%--<c:set property="tmpBankAccountLength" value="${fn:length(item.bankAccount)}" />--%>
                                            <i class="bank_text">&nbsp;****&nbsp;${fn:substring(item.bankAccount, fn:length(item.bankAccount) - 7, fn:length(item.bankAccount) - 3)}&nbsp;${fn:substring(item.bankAccount, fn:length(item.bankAccount) - 3, fn:length(item.bankAccount))}</i>
                                        </div>
                                    </a>
                                </label>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="row cl-100 cl-305">
                <div class="col-100">添加银行卡</div>
            </div>
            <div class="cl-302 cl-312">
                <div class="list-block">
                    <ul>
                        <li>
                            <div class="item-content item-link">
                                <div class="item-media"><i class="icon icon-form-yhmc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">选择银行：</div>
                                    <div class="item-input">
                                        <input type="text" id='yhmc' placeholder="请选择银行" name="bankName" />
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
                                        <input type="text" placeholder="请填写支行名称" name="subBankName" />
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
                                        <input type="text" placeholder="请填写卡号" name="bankAccount" />
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
                                        <input type="text" placeholder="请填写开户地" id="city-picker" name="location" />
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
                                        <input type="text" placeholder="请填写开户人" value="${userSession.name}" readonly />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-kh"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">确认卡号：</div>
                                    <div class="item-input">
                                        <input type="text" placeholder="请填写确认卡号" name="confirmBankAccount" />
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="cl-102">
                <c:if test="${not empty userBankCardList}"> <a href="javascript:void(0)" id="btn-setDefault" class="cl-103 cl-314 yhkgl_moren" data-id="35">设为默认</a></c:if>
                <a href="javascript:void(0)" id="btn-add-bankcard" class="cl-103">确认添加</a>
            </div>
            <c:import url="../../common/copyright.jsp" />
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>